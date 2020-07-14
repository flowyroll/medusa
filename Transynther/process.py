#!/usr/bin/env python3
import sys, os, codecs
from fuzz import MemAddress

def mkdir_if(dir):
    if not os.path.exists(dir):
        os.mkdir(dir, 0o755)

def leakage_attr(faultyLoad, faultType, leakageHist, previousMem):
    ht = st = zero = expected = unknown = _4k = same = False 
    for k in leakageHist:
        kd = ord(codecs.decode(k, 'hex'))
        if kd in range(0x40, 0x50) or kd in range(0x61, 0x69):
            ht = True
        elif kd == 0:
            zero = True
        elif kd in range(0x30, 0x40):
            if faultType == "NONE" and MemAddress.Types[faultyLoad["src"]["type"]]["byte"] == kd:
                expected = True
            else:
                st = True
        elif kd in range(0x51, 0x59):
            for v in previousMem:
                if v['OP'] == 'STOR':
                    if v['dst']['same'] and v['dst']["type"] == faultyLoad["src"]["type"]:
                        same = True
                        if faultType == "NONE":
                            expected = True
                    
                    if faultType != "NONE" and v['dst']['congruent'] == 11 and v['dst']["type"] != faultyLoad["src"]["type"]:
                        _4k = True

            if not expected: 
                st = True
        else:
            unknown = True
            
    attr = "_"
    attr += "ht_" if ht else ""
    attr += "st_" if st else ""
    attr += "zr_" if zero else ""
    attr += "un_" if unknown else ""
    attr += "xt_" if expected else ""
    attr += "4k_" if _4k else ""
    attr += "sm_" if same else ""
    return attr

def fault_type(faultyLoad):
    
    if faultyLoad["src"]["AVXalign"] or faultyLoad["src"]["NT"]:
        return "AVXALIGN"

    addrType = faultyLoad["src"]["type"]
    if MemAddress.Types[addrType]["safe"] or addrType == "addresses_PSE" or addrType == "addresses_RW":
        return "NONE" 
    else:
        return addrType.split("_")[1]


def process_log(log, leakageHist):
    
    path = '_processed'
    mkdir_if(path)

    lines = log.strip().split("\n")
    iFaulty = lines.index("[Faulty Load]")
    iPrep = lines.index("<gen_prepare_buffer>")

    inThreadMem = map(eval, lines[2:iFaulty])
    outThreadMem = map(eval, lines[iPrep+1:])
    
    faultyLoad = eval(lines[iFaulty+1])    
    
    faultType = fault_type(faultyLoad)
    path = path + "/%s"%(faultType)
    mkdir_if(path)
    

    leakageAttr = leakage_attr(faultyLoad, faultType, leakageHist, inThreadMem)
    path = path + "/%s"%(leakageAttr)
    mkdir_if(path)

    return path

def main():    
    logFilePath = sys.argv[1]
    fLog = open(logFilePath)
    line = fLog.readline()
    code = log = ""
    fC = fL = False
    c  = 0
    while line:    
        if line.startswith(".global s_prepare_buffers"):
            fC = True
            fL = False
        if line.startswith("<gen_faulty_load>"):
            fC = False
            fL = True
        if line.startswith("Leaked"):        
            byteLeaked = int(line.split()[1])
            byteHist = eval(fLog.readline())
            bytePattern = fLog.readline().strip()

            root = process_log(log, byteHist)
            
            asmPath = "%s/%s_%s_%s.asm"%(root, os.path.basename(logFilePath), byteLeaked, c)
            print(asmPath)
            with open(asmPath, 'w+') as outFile:
                outFile.write(code)
                outFile.write("\n/*\n")
                outFile.write(log)
                outFile.write("%s\n"%str(byteHist))
                outFile.write("%s\n"%bytePattern)
                outFile.write("*/\n")
                
                
            code = log = ""
            fC = fL = False       
            c += 1

        if fC:
            code += line
        
        if fL:
            log += line

        line = fLog.readline()

if __name__== "__main__":
    main()
