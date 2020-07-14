#!/usr/bin/env python3
import sys, random, math, time, subprocess
random.seed(time.time())

class Config(object):
    config = None

    @staticmethod
    def Singleton():
        if Config.config is None:
            Config.config = Config()
        return Config.config

    def __init__(self):
        self.MAX_NOP_P_M              = 6
        self.MAX_PREP_B_M             = 16
        self.MAX_FAUL_B_M             = 16
        # 
        self.CHANCE_CLFLUSH           = 10
        self.CHANCE_AUX_EX            = 5
        self.CHANCE_EARLY_MEM_FAULT   = 5
        self.CHANCE_SAME_ADDR         = 10
        self.CHANCE_AVXA              = 10
        #
        self.RUN_N_SAMPLE             = 10000
        self.RUN_ATTACKER_CPU         = 1
        self.RUN_VICTIM_CPU           = 5
        self.RUN_TIMEOUT              = "5s"
        #
        self.ARCH_NO_TSX              = True
        self.ARCH_NO_MPK              = True
        self.ARCH_NO_AVX512           = True

class MemAddress(object):
    Types = {
        'addresses_US': {"safe": False, "byte": 0x30},
        'addresses_MPK': {"safe": False, "byte": 0x31},
        'addresses_RW': {"safe": False, "byte": 0x32},        
        'addresses_PSE': {"safe": False, "byte": 0x33},
        'addresses_normal': {"safe": True, "byte": 0x34},
        'addresses_A': {"safe": True, "byte": 0x35},
        'addresses_D': {"safe": True, "byte": 0x36},    
        'addresses_UC': {"safe": True, "byte": 0x37}, 
        'addresses_WC': {"safe": True, "byte": 0x38}, 
        'addresses_WT': {"safe": True, "byte": 0x39}, 
        # Not mapped
        'addresses_NC': {"safe": False},
        'addresses_P': {"safe": False},
    }

    if Config.Singleton().ARCH_NO_MPK:
        del Types['addresses_MPK']

    def __init__(self, t, page, offset, reference=None, congruent = 0):
        self.type = t
        self.page = page
        self.base = page  << 12
        self.offset = offset
        self.reference = reference
        self.congruent = congruent
        if self.reference is not None:
            self.offset = (self.offset >> congruent << congruent) | ((1 << congruent) - 1) & reference.offset
    
    def gen(self, reg, istream):
        x = istream
        if self.type in  ["addresses_P", "addresses_NC"]:            
            x += "mov $%s, %%%s\n"%(hex(self.base + self.offset), reg[0])
        else:
            x += "lea %s+%s, %%%s\n"%(self.type, hex(self.base + self.offset), reg[0])

        return x


class ContextAllocator(object):    
    int_regs = {
        "rax": ["rax", "eax", "ax", "ah", "al"], 
        "rbx": ["rbx", "ebx", "bx", "bh", "bl"], 
        "rcx": ["rcx", "ecx", "cx", "ch", "cl"],  
        "rdx": ["rdx", "edx", "dx", "dh", "dl"],  
        "rsi": ["rsi", "esi", "si", 0, 0],  
        "rdi": ["rdi", "edi", "di", 0, 0],  
        "rbp": ["rbp", "ebp", "bp", 0, 0],          
        "r8":  ["r8",  "r8d",  "r8w",  0, "r8b"],          
        "r9":  ["r9",  "r9d",  "r9w",  0, "r9b"],          
        "r10": ["r10", "r10d", "r10w", 0, "r10b"],          
        "r11": ["r11", "r11d", "r11w", 0, "r11b"],          
        "r12": ["r12", "r12d", "r12w", 0, "r12b"],          
        "r13": ["r13", "r13d", "r13w", 0, "r13b"],          
        "r14": ["r14", "r14d", "r14w", 0, "r14b"],          
        "r15": ["r15", "r15d", "r15w", 0, "r15b"],          
    }

    def __init__(self, rChooser):
        self.rChooser = rChooser
        self.int = {
            'freelist' : ContextAllocator.int_regs,
            'allocated' : {},
            'touched' : {}
        }
        self.fp = {
            'freelist' : {},
            'allocated' : {},
            'touched' : {}
        }

        for i in range(8):
            self.fp['freelist'].update({'st%s'%i: ["st%s"%i]})

        self.vector = {
            'freelist' : {},
            'allocated' : {},
            'touched' : {}
        }

        for i in range(8):
            self.vector['freelist'].update({'zmm%s'%i: ["zmm%s"%i, "ymm%s"%i, "xmm%s"%i, "mm%s"%i]})

    def alloc_repmov(self):
        for reg in ["rcx", "rsi", "rdi"]:
            self.alloc_int(reg)
    
    def get_int_save_stub(self, istream):        
        x = istream
        for reg in sorted(self.int['touched']):
            x += "push %%%s\n"%(reg)
        return x

    def get_int_restore_stub(self, istream):
        x = istream
        for reg in sorted(self.int['touched'], reverse=True):
            x += "pop %%%s\n"%(reg)
        return x 

    
    def random(self, v):
        inters = set(v['freelist'].keys()).intersection(set(v['touched'].keys()))
        if len(inters) > 4:
            # To reduce regeister usage
            klist = list(inters)
        else:
            klist = list(v['freelist'].keys())
        ln = len(klist)
        i = self.rChooser.pick_n(ln)
        k = klist[i]
        v['allocated'].update({k : v['freelist'][k]})
        v['touched'].update({k : v['freelist'][k]})
        del v['freelist'][k]
        return v['allocated'][k]

    def alloc(self, reg, v):
        if reg in v['freelist']:
            v['allocated'].update({reg : v['freelist'][reg]})
            v['touched'].update({reg : v['freelist'][reg]})
            del v['freelist'][reg]
            return v['allocated'][reg]
        else:
            raise Exception("%s is not free"%reg)

    def free(self, reg, v):
        if reg in v['allocated']:            
            v['freelist'].update({reg : v['allocated'][reg]})
            del v['allocated'][reg]
        else:
            raise Exception("%s is not allocated"%reg)

    def random_int(self):
        # print("random_int")
        return self.random(self.int)

    def random_vector(self):
        return self.random(self.vector)

    def random_fp(self):
        return self.random(self.fp)

    def alloc_int(self, reg):
        return self.alloc(reg, self.int)

    def alloc_vector(self, reg):
        return self.alloc(reg, self.vector)

    def alloc_fp(self, reg):
        return self.alloc(reg, self.fp)

    def free_int(self, reg):    
        return self.free(reg[0], self.int)

    def free_vector(self, reg):
        return self.free(reg[0], self.vector)

    def free_fp(self, reg):
        return self.free(reg[0], self.fp)

class ArbitraryInstruction(object):
    auxiliary_exceptions = [
        "xor %<REG>, %<REG>\n" + "div %<REG>\n",        
        "mov (0), %<REG>\n",
    ]

    # Too avoid too many serialization instruction
    safe_instructions_occurence = {
        "lfence\n": 1, 
        "mfence\n": 1,
        "inc %<REG>\n": 10,
        "dec %<REG>\n": 10,
        "add $<VAL>, %<REG>\n": 10,
        "sub $<VAL>, %<REG>\n": 10,
        "cmp $<VAL>, %<REG>\n": 10,
        "xor $<VAL>, %<REG>\n": 10,
        "and $<VAL>, %<REG>\n": 10,
        "add %<REG>, %<REG>\n": 10,
        "sub %<REG>, %<REG>\n": 10,
        "cmp %<REG>, %<REG>\n": 10,
        "xor %<REG>, %<REG>\n": 10,
        "and %<REG>, %<REG>\n": 10,
    }

    safe_instructions = []
    for _k in safe_instructions_occurence:
        _n = safe_instructions_occurence[_k]
        for _ in range(_n):
            safe_instructions.append(_k)

    def __init__(self, reg, rChooser):
        self.reg = reg
        self.rChooser = rChooser
        
    def nops(self, n, iStream):
        x = iStream
        for i in range(n):
            x += "nop\n"
        return x
    
    def pick_exception(self, iStream):
        x = iStream
        nnop = self.rChooser.pick_n(Config.Singleton().MAX_NOP_P_M)
        x = self.nops(nnop, iStream)
        inst = self.rChooser.pick_one(ArbitraryInstruction.auxiliary_exceptions)
        inst = inst.replace("<REG>", self.reg[0])
        x += inst
        return x

    
    def pick_safe(self, iStream):
        x = iStream
        nnop = self.rChooser.pick_n(Config.Singleton().MAX_NOP_P_M)
        x = self.nops(nnop, iStream)
        inst = self.rChooser.pick_one(ArbitraryInstruction.safe_instructions)
        inst = inst.replace("<REG>", self.reg[0])
        inst = inst.replace("<VAL>", str(self.rChooser.pick_n(2**16)))
        x += inst
        return x


class MemInstruction(object):
    def avx(self, store, v, aligned, nt, r1, r2, safe): 
        r = ""
        x = ""
        if aligned:
            x = "movaps"
            if store: 
                r += "and $0xffffffffffffffc0, %%%s\n"%(r2) if safe else ""
            else:
                r += "and $0xffffffffffffffc0, %%%s\n"%(r1) if safe else "" 

        elif nt:
            x = "movntdq"
            if store: 
                r += "and $0xffffffffffffffc0, %%%s\n"%(r2) if safe else ""
            else:
                r += "and $0xffffffffffffffc0, %%%s\n"%(r1) if safe else ""
                x += "a"
            
        else:
            x = "movups"
        
        if v:
            x = "v" + x
        
        if store: 
            r += "%s %%%s, (%%%s)\n"%(x, r1, r2)
        else: 
            r += "%s (%%%s), %%%s\n"%(x, r1, r2)
        return r
    

    def __init__(self, data=0x41):
        self.data = data

    def gen_load(self, intAddr, int2, vector, size, aligned, nt, xtract, stream, safe=False):
        x = stream        
        if size <= 8: 
            x += "mov"
            if size == 1:
                x += "b (%%%s), %%%s\n"%(intAddr[0], int2[4])
            elif size == 2:
                x += " (%%%s), %%%s\n"%(intAddr[0], int2[2])
            elif size == 4:
                x += " (%%%s), %%%s\n"%(intAddr[0], int2[1])
            elif size == 8:
                x += " (%%%s), %%%s\n"%(intAddr[0], int2[0])
        else:                        
            z = int(6 - math.log(size, 2))
            x += self.avx(False, z < 2, aligned, nt, intAddr[0], vector[z], safe)            
            if size > 16:
                x += "vextracti128 $%s, %%%s, %%%s\n"%(int(xtract / 2), vector[1], vector[2])
            x += "vpextrq $%s, %%%s, %%%s\n"%(int(xtract % 2), vector[2], int2[0])        

        return x


    def gen_store(self, intAddr, int2, vector, size, aligned, nt, stream, safe=False):
        x = stream
        sdata = "0x"                
        for i in range(8 if size > 8 else size):
            sdata += hex(self.data+i)[-2:]
        
        x += "mov"
        if size == 1:
            x += "b $%s, (%%%s)\n"%(sdata, intAddr[0])
        elif size == 2:
            x += "w $%s, (%%%s)\n"%(sdata, intAddr[0])
        elif size == 4:
            x += "l $%s, (%%%s)\n"%(sdata, intAddr[0])
        elif size >= 8:
            x += " $%s, %%%s\n"%(sdata, int2[0])
            if size == 8:
                x += "movq %%%s, (%%%s)\n"%(int2[0], intAddr[0])
            elif size == 16:                 
                x += "movq %%%s, %%%s\n"%(int2[0], vector[2])
                x += self.avx(True, False, aligned, nt, vector[2], intAddr[0], safe)
            elif size == 32:
                x += "movq %%%s, %%%s\n"%(int2[0], vector[2])
                x += self.avx(True, True, aligned, nt, vector[1], intAddr[0], safe)
            elif size == 64:
                x += "movq %%%s, %%%s\n"%(int2[0], vector[2])
                x += self.avx(True, True, aligned, nt, vector[0], intAddr[0], safe)
            
        return x
            
    def gen_repmov(self, n, size, stream):
        x = stream
        x += "mov $%s, %%rcx\n"%(n)
        x += "rep movs"
        if size == 1:
            x += "b"
        elif size == 2:
            x += "w"
        elif size == 4:
            x += "l"
        elif size >= 8:
            x += "q"
        x += "\n"
        return x

    def gen_flush(self, intAddr, stream):
        x = stream
        x += "clflush (%%%s)\n"%(intAddr[0])        
        return x



class RandomChooser(object):
    PAGE_SIZE = 4096

    def _init__(self):
        None

    def pick_offset(self):
        return random.randint(0, RandomChooser.PAGE_SIZE)

    def pick_page(self, t, safe=False):
        if t == "addresses_P":
            return 0

        if t == "addresses_NC":
            return random.randint(0, 0x7fffff) << 28

        if safe:
            return random.randint(0, 30)
        else:
            return random.randint(0, 31)
        

    def pick_one(self, candidates):
        ln = len(candidates)
        rnd = random.randint(0, ln-1)
        return candidates[rnd]

    def pick_address(self, ref=None, safe=False, same=False, ht=False):
        if safe:
            types = []
            for k in MemAddress.Types:
                if MemAddress.Types[k]["safe"]:
                    types.append(k)
        else:
            types = list(MemAddress.Types.keys())
        
        t = self.pick_one(types)
        if ht:
            t += "_ht"

        p = self.pick_page(t, safe=safe)
        o = self.pick_offset()
        if ref is None:
            return MemAddress(t, p, o)
        else:
            if not safe and same:
                return MemAddress(ref.type, ref.page, ref.offset)
            else:
                return MemAddress(t, p, o, ref, self.pick_n(12))
            
    def pick_memsize(self):
        return 2**(random.randint(0, 5 if Config.Singleton().ARCH_NO_AVX512 else 6))

    def pick_memsize_int(self):
        return 2**(random.randint(0, 3))

    def pick_bool(self):
        return random.randint(0, 1) == 1
    
    def pick_n(self, n):
        return random.randint(0, n-1)

    def chance(self, n):
        return random.randint(0, int(100/n)-1) == 0

class Logger(object):
    logger = None

    @staticmethod
    def Singleton():
        if Logger.logger is None:
            Logger.logger = Logger()
        return Logger.logger

    def __init__(self):
        self.content = ""
    
    def log(self, l):
        self.content += l + "\n"
    
    def print(self):
        print("LOG:")
        print(self.content)

    def reset(self):
        self.content = ""

class TransUtil(object):
    @staticmethod
    def encode_to_oracle(regAlloc, dataReg, iStream):
        oracleReg = regAlloc.random_int()
        x = iStream
        x += "lea oracles, %%%s\n"%(oracleReg[0])
        x += "and $0xff, %%%s\n"%(dataReg[0])
        x += "shlq $12, %%%s\n"%(dataReg[0])
        x += "mov (%%%s,%%%s,1), %%%s\n"%(oracleReg[0], dataReg[0], dataReg[0])
        regAlloc.free_int(oracleReg)
        return x
    
    @staticmethod
    def comment(c, iStream):
        x = iStream
        x += "\n// %s\n"%c
        return x

    @staticmethod
    def retuurn(iStream):
        x = iStream
        x += "ret\n"
        return x

    @staticmethod
    def arbitrary_instruction(regAlloc, rChooser, iStream):
        arbReg = regAlloc.random_int()
        arbInst = ArbitraryInstruction(arbReg, rChooser)
        regAlloc.free_int(arbReg)
        return arbInst.pick_safe(iStream)

    @staticmethod
    def exception_instruction(regAlloc, rChooser, iStream):
        arbReg = regAlloc.random_int()
        arbInst = ArbitraryInstruction(arbReg, rChooser)
        regAlloc.free_int(arbReg)
        return arbInst.pick_exception(iStream)


    @staticmethod
    def rep_mov(safe, regAlloc, rChooser, memInst, iStream, ref=None, ht=False):
        regAlloc.alloc_repmov()
        srcReg = regAlloc.int['allocated']['rsi']
        dstReg = regAlloc.int['allocated']['rdi']
        countReg = regAlloc.int['allocated']['rcx']
        repmovN = rChooser.pick_n(128)
        repmovSize = rChooser.pick_memsize_int()
        srcAddrSame = rChooser.chance(Config.Singleton().CHANCE_SAME_ADDR)
        srcAddr = rChooser.pick_address(ref, safe=safe, same=srcAddrSame, ht=ht)
        srcAddrClflush = rChooser.chance(Config.Singleton().CHANCE_CLFLUSH)
        dstAddrSame = rChooser.chance(Config.Singleton().CHANCE_SAME_ADDR)
        dstAddr = rChooser.pick_address(ref, safe=safe, same=dstAddrSame, ht=ht)
        dstAddrClflush = rChooser.chance(Config.Singleton().CHANCE_CLFLUSH)
        iStream = srcAddr.gen(srcReg, iStream)
        iStream = dstAddr.gen(dstReg, iStream)
        iStream = memInst.gen_flush(srcReg, iStream) if srcAddrClflush else iStream
        iStream = memInst.gen_flush(dstReg, iStream) if dstAddrClflush else iStream
        iStream = TransUtil.arbitrary_instruction(regAlloc, rChooser, iStream)
        iStream = memInst.gen_repmov(repmovN, repmovSize, iStream)
        regAlloc.free_int(srcReg)
        regAlloc.free_int(dstReg)
        regAlloc.free_int(countReg)

        dlog = {
            "OP": "REPM",
            "src": {
                "type": srcAddr.type,
                "congruent": srcAddr.congruent,
                "same": srcAddrSame
            },
            "dst": {
                "type": dstAddr.type,
                "congruent": dstAddr.congruent,
                "same": dstAddrSame
            },

        }
        Logger.Singleton().log(str(dlog))

        return iStream

    @staticmethod
    def store(safe, regAlloc, rChooser, memInst, iStream, ref=None, ht=False):
        storeInReg = regAlloc.random_int()
        storeAddrReg = regAlloc.random_int()
        storeAVXReg = regAlloc.random_vector()
        storeAVXAlign = rChooser.chance(Config.Singleton().CHANCE_AVXA)
        storeAVXNT = rChooser.chance(Config.Singleton().CHANCE_AVXA)
        storeAddrSame = rChooser.chance(Config.Singleton().CHANCE_SAME_ADDR)
        storeAddr = rChooser.pick_address(ref, safe=safe, same=storeAddrSame, ht=ht)
        storeAddrClflush = rChooser.chance(Config.Singleton().CHANCE_CLFLUSH)
        storeSize = rChooser.pick_memsize()    
        iStream = storeAddr.gen(storeAddrReg, iStream)
        iStream = memInst.gen_flush(storeAddrReg, iStream) if storeAddrClflush else iStream
        iStream = TransUtil.arbitrary_instruction(regAlloc, rChooser, iStream)
        iStream = memInst.gen_store(storeAddrReg, storeInReg, storeAVXReg, storeSize, 
            storeAVXAlign, storeAVXNT, iStream, safe=safe)
        regAlloc.free_int(storeInReg)
        regAlloc.free_int(storeAddrReg)
        regAlloc.free_vector(storeAVXReg) 
        
        dlog = {
            "OP": "STOR",
            "dst": {
                "type": storeAddr.type,
                "size": storeSize,
                "AVXalign": storeAVXAlign,
                "NT": storeAVXNT,
                "congruent": storeAddr.congruent,
                "same": storeAddrSame,
            }
        }
        Logger.Singleton().log(str(dlog))
        return iStream

    @staticmethod
    def load(safe, regAlloc, rChooser, memInst, iStream, ref=None, same=None, ht=False):
        loadOutReg = regAlloc.random_int()
        loadAddrReg = regAlloc.random_int()
        loadAVXReg = regAlloc.random_vector()
        loadAVXAlign = rChooser.chance(Config.Singleton().CHANCE_AVXA)
        loadAVXNT = rChooser.chance(Config.Singleton().CHANCE_AVXA)
        loadAVXtract = rChooser.pick_n(4)
        if same is None:
            loadAddrSame = rChooser.chance(Config.Singleton().CHANCE_SAME_ADDR)
        else:
            loadAddrSame = same
        loadAddr = rChooser.pick_address(ref, safe=safe, same=loadAddrSame, ht=ht)
        loadAddrClflush = rChooser.chance(Config.Singleton().CHANCE_CLFLUSH)
        loadSize = rChooser.pick_memsize()
        if loadSize == 1:
            while loadOutReg[4] == 0:
                regAlloc.free_int(loadOutReg)
                loadOutReg = regAlloc.random_int()
        iStream = loadAddr.gen(loadAddrReg, iStream)
        iStream = memInst.gen_flush(loadAddrReg, iStream) if loadAddrClflush else iStream
        iStream = TransUtil.arbitrary_instruction(regAlloc, rChooser, iStream)
        iStream = memInst.gen_load(loadAddrReg, loadOutReg, loadAVXReg, loadSize,
            loadAVXAlign, loadAVXNT, loadAVXtract, iStream, safe=safe)    

        regAlloc.free_int(loadOutReg)
        regAlloc.free_int(loadAddrReg)
        regAlloc.free_vector(loadAVXReg)

        dlog = {
            "OP": "LOAD",
            "src": {
                "type": loadAddr.type,
                "size": loadSize,
                "AVXalign": loadAVXAlign,
                "NT": loadAVXNT,
                "congruent": loadAddr.congruent,
                "same": loadAddrSame,
            }
        }
        Logger.Singleton().log(str(dlog))
        
        return iStream, loadOutReg, loadAddr


def gen_prepare_buffer(ld):
    Logger.Singleton().log("<gen_prepare_buffer>")
    subroutine = '''
    .global s_prepare_buffers
s_prepare_buffers:
'''
    iStream = ""
    rChooser = RandomChooser()
    regAlloc = ContextAllocator(rChooser)
    memInst = MemInstruction(data=0x61)

    for _ in range(rChooser.pick_n(Config.Singleton().MAX_PREP_B_M)):
        MemOpType = ['LOAD', 'STORE', 'REPMOV']
        memOp = rChooser.pick_one(MemOpType)
        
        if memOp == 'LOAD':
            iStream, _, _ = TransUtil.load(True, regAlloc, rChooser, memInst, iStream, ld, ht=True)
        elif memOp == 'STORE':    
            iStream = TransUtil.store(True, regAlloc, rChooser, memInst, iStream, ld, ht=True)
        elif memOp == 'REPMOV':
            None
            iStream = TransUtil.rep_mov(True, regAlloc, rChooser, memInst, iStream, ld, ht=True)

        iStream = TransUtil.arbitrary_instruction(regAlloc, rChooser, iStream)

    iStream = subroutine + regAlloc.get_int_save_stub("") + iStream
    iStream = regAlloc.get_int_restore_stub(iStream)
    iStream = TransUtil.retuurn(iStream)
    return iStream

def gen_faulty_load():
    Logger.Singleton().log("<gen_faulty_load>")
    subroutine = '''
    .global s_faulty_load
s_faulty_load:
'''
    iStream = ""
    rChooser = RandomChooser()
    regAlloc = ContextAllocator(rChooser)
    memInst = MemInstruction(data=0x51)

    Logger.Singleton().log("[REF]")

    _, _, loadAddrRef = TransUtil.load(False, regAlloc, rChooser, memInst, "")

    for _ in range(rChooser.pick_n(Config.Singleton().MAX_FAUL_B_M)):
        MemOpType = ['LOAD', 'REPMOV', 'STORE', 'STORE', 'STORE', 'STORE']
        memOp = rChooser.pick_one(MemOpType)
        
        if memOp == 'LOAD':
            iStream = TransUtil.comment("Load", iStream)
            iStream, _, _ = TransUtil.load(rChooser.chance(Config.Singleton().CHANCE_EARLY_MEM_FAULT), regAlloc, rChooser, memInst, iStream, loadAddrRef)
        elif memOp == 'STORE':    
            iStream = TransUtil.comment("Store", iStream)
            iStream = TransUtil.store(rChooser.chance(Config.Singleton().CHANCE_EARLY_MEM_FAULT), regAlloc, rChooser, memInst, iStream, loadAddrRef)
        elif memOp == 'REPMOV':
            iStream = TransUtil.comment("REPMOV", iStream)
            iStream = TransUtil.rep_mov(rChooser.chance(Config.Singleton().CHANCE_EARLY_MEM_FAULT), regAlloc, rChooser, memInst, iStream, loadAddrRef)

        if rChooser.chance(Config.Singleton().CHANCE_AUX_EX):
            iStream = TransUtil.comment("Exception!!!", iStream)
            iStream = TransUtil.exception_instruction(regAlloc, rChooser, iStream)

        iStream = TransUtil.arbitrary_instruction(regAlloc, rChooser, iStream)

    iStream = TransUtil.comment("Faulty Load", iStream)
    Logger.Singleton().log("[Faulty Load]")
    iStream, loadOutReg, _ = TransUtil.load(False, regAlloc, rChooser, memInst, iStream, loadAddrRef, same=True)
    iStream = TransUtil.encode_to_oracle(regAlloc, loadOutReg, iStream)
    iStream = regAlloc.get_int_restore_stub(iStream)
    iStream = TransUtil.retuurn(iStream)
    iStream = subroutine + regAlloc.get_int_save_stub("") + iStream    
    return iStream, loadAddrRef

def generate():
    asm_file = open('autogen.S', 'w+')
    code, ld = gen_faulty_load()    
    asm_file.write(gen_prepare_buffer(ld))
    asm_file.write(code)
    asm_file.seek(0)
    asm_source = asm_file.read()
    asm_file.close()
    log = Logger.Singleton().content
    Logger.Singleton().reset()
    return asm_source, log

def run_cmd(cmdstr):
    cmd = cmdstr.split()
    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE)
    proc.wait()
    return proc.stdout.read().decode('utf8')


def run_test(n, timeout, attacker, victim=None):
    c = 0
    for _ in range(n):    
        # print("Gen %s"%(c))
        asm_source, log = generate()
        run_cmd('make')
        cmd = "timeout %s ./app %s"%(timeout, attacker)
        if victim is not None:
            cmd = "%s %s"%(cmd, victim)
        
        print("Try %s"%(c))
        leakage = run_cmd(cmd)
        leakage = leakage.split("\n")
        hist = {}
        if len(leakage) > 1:
            leakage = leakage[1].split()
            print(asm_source.strip())
            print(log.strip())
            print("Leaked %s bytes"%(len(leakage)))

            for v in leakage:
                if v in hist:
                    hist[v] += 1
                else:
                    hist.update({v : 1})

            print(hist)

            print_ln = len(leakage)
            if print_ln > 1000:
                print_ln = 1000
                
            for v in leakage[0:print_ln]:
                print(v, end= ' ')
            print("\n")
            
        c += 1
        sys.stdout.flush()

def tweak_makefile():
    r = "1" if Config.Singleton().ARCH_NO_TSX else "0"
    new_Makefile = ""
    with open("Makefile", 'r') as f:
        new_Makefile = f.read()
        keyword = "-DNO_TSX="
        l_new_Makefile = list(new_Makefile)
        l_new_Makefile[new_Makefile.index("-DNO_TSX=")+len("-DNO_TSX=")] = r
        new_Makefile = ''.join(l_new_Makefile)
        
    with open("Makefile", 'w') as f:
        f.write(new_Makefile)

def main():
    run_cmd("make clean")
    tweak_makefile()
    
    run_test(
        Config.Singleton().RUN_N_SAMPLE, 
        Config.Singleton().RUN_TIMEOUT, 
        Config.Singleton().RUN_ATTACKER_CPU, 
        Config.Singleton().RUN_VICTIM_CPU
    )

if __name__== "__main__":
    main()

