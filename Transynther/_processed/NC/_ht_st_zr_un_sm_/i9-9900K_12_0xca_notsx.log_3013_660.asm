.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdb35, %rsi
lea addresses_WT_ht+0x35cc, %rdi
add %r11, %r11
mov $43, %rcx
rep movsq
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x17735, %r14
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%r14)
add $63724, %rdi
lea addresses_UC_ht+0x1beed, %rdi
nop
nop
nop
dec %rcx
mov (%rdi), %r11
nop
nop
nop
nop
nop
and $30472, %rsi
lea addresses_WC_ht+0x1ad75, %r14
nop
nop
and %rbx, %rbx
movw $0x6162, (%r14)
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x100e5, %rsi
lea addresses_UC_ht+0x1de35, %rdi
xor %rbp, %rbp
mov $46, %rcx
rep movsl
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x15535, %rcx
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
add $50056, %r12
lea addresses_UC_ht+0x14d35, %rcx
nop
nop
nop
and $36389, %r11
movb (%rcx), %r12b
nop
nop
nop
nop
nop
sub $16331, %rcx
lea addresses_normal_ht+0x17035, %r12
nop
nop
cmp %r11, %r11
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
sub $26899, %rsi
lea addresses_WC_ht+0x7b2d, %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb (%r14), %cl
nop
nop
nop
cmp $32579, %rdi
lea addresses_normal_ht+0x3d35, %rsi
lea addresses_D_ht+0x5b35, %rdi
nop
nop
xor $32565, %r14
mov $46, %rcx
rep movsw
nop
nop
cmp $7427, %rbx
lea addresses_normal_ht+0x7535, %rcx
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %rcx
movntdq %xmm5, (%rcx)
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xb9b5, %rbp
clflush (%rbp)
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%rbp)
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x1005d, %rbp
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx

// Store
mov $0x3e575c0000000d35, %r8
nop
nop
nop
dec %rcx
movw $0x5152, (%r8)
nop
and %rcx, %rcx

// Store
lea addresses_D+0x127b5, %rbx
nop
sub $3228, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
mov $0x3e575c0000000d35, %rbx
nop
nop
nop
sub %r11, %r11
mov (%rbx), %r8d
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'b8': 1, '26': 3, '66': 3, '64': 4, '08': 4, 'ae': 5, 'aa': 2, 'b2': 3, 'ec': 2, '36': 5, '52': 2446, '68': 7, 'a6': 2, '98': 4, '3e': 8, 'd2': 5, 'c2': 10, 'a2': 7, 'b0': 5, 'a4': 5, '44': 7, 'ca': 3, '82': 2, '56': 5, '4e': 3, '6c': 5, '04': 5, '1e': 2, 'e8': 5, 'c8': 3, 'ba': 6, 'f8': 11, '92': 2, '7a': 2, 'e4': 4, 'de': 4, '12': 5, '8a': 1, 'cc': 6, 'ce': 1, 'd4': 3, '60': 4, '1c': 5, 'e0': 8, '4a': 8, '06': 4, '5a': 3, 'c6': 2, '9c': 2, '58': 6, '28': 7, '02': 5, 'e6': 6, '76': 2, '50': 3, '34': 9, 'c0': 1, 'f4': 1, 'b6': 4, '9e': 3, '0e': 5, '84': 5, '3a': 4, '24': 1, 'c4': 9, '40': 4, '78': 5, '96': 6, '30': 9, 'f6': 8, '86': 5, '14': 6, '2c': 3, 'fe': 4, 'be': 4, '80': 3, 'fa': 5, '62': 2, '42': 5, '70': 3, '38': 3, 'b4': 1, 'dc': 7, '20': 5, '72': 5, 'd0': 6, 'ee': 3, 'ea': 1, '6e': 2, '48': 4, 'bc': 3, '74': 1, 'd8': 2, '2a': 3, '18': 2, 'fc': 4, '54': 6, '32': 6, '0c': 2, '3c': 6, 'e2': 5, '16': 3, '22': 1, '10': 3, 'a8': 5, '9a': 1, 'd6': 3, 'f2': 6, '8e': 2, '46': 3, '94': 5, '5e': 5, 'da': 5, '7e': 3, '2e': 2, '88': 5, '8c': 5, '4c': 2, '90': 4, '6a': 5, '00': 56, '1a': 5, '5c': 4, '7c': 6, 'f0': 2}
52 52 52 52 52 52 52 90 52 00 52 52 52 76 aa 84 52 da 52 26 d0 52 80 52 c4 52 52 52 52 00 52 52 52 52 52 c2 52 52 52 52 52 52 52 52 52 52 52 a6 52 52 52 ae 52 20 52 02 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 56 52 24 52 52 46 50 52 a4 52 52 52 52 78 52 52 52 52 52 52 52 52 52 0c 52 52 52 52 52 52 52 96 52 52 52 52 52 52 52 52 52 52 00 08 00 52 52 c6 52 52 52 52 52 52 c2 52 52 52 52 52 52 52 54 52 52 84 36 52 28 52 52 52 82 52 52 52 52 52 52 32 52 52 52 52 8e 52 0e 3e 52 94 52 52 e0 52 52 52 52 52 68 52 52 a8 d2 52 52 52 52 00 52 52 52 52 52 52 78 52 52 52 52 3c 52 52 52 c8 52 52 52 52 52 52 ba 52 52 00 52 52 52 52 52 52 30 52 c2 52 52 52 90 52 96 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 54 52 8c 52 52 52 02 52 00 52 5e 52 52 42 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 9c 52 52 c2 52 52 52 54 52 52 52 52 52 52 dc 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 e2 52 52 52 52 00 52 52 52 52 52 52 52 34 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 c4 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 da 52 52 52 00 52 32 52 42 52 52 52 52 52 52 40 e6 52 a4 52 08 52 52 52 52 52 52 52 be 52 52 52 52 52 52 32 52 52 52 52 52 52 52 52 52 12 52 52 52 52 52 52 00 52 52 52 52 52 96 52 52 52 52 52 52 52 92 52 52 52 52 52 52 52 52 52 52 52 52 52 52 8c 52 52 52 52 52 52 52 52 52 9e 52 00 52 52 52 52 d4 52 52 52 52 52 52 52 52 52 52 52 52 12 52 52 52 52 52 52 52 52 e0 52 e0 52 52 52 52 52 68 52 52 52 94 52 52 4c 52 6a 52 52 52 88 52 52 52 52 52 52 52 52 52 52 7a 52 52 52 52 52 d8 52 52 52 2a 52 52 52 52 52 52 52 52 52 52 52 52 d0 52 52 52 52 52 52 f8 52 52 52 52 84 52 52 52 52 44 52 52 52 52 52 52 52 52 1c 52 52 3a 52 52 20 52 52 a2 52 52 96 52 52 52 52 52 52 52 e0 52 52 36 52 52 52 52 52 52 52 52 52 52 52 52 52 72 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 dc 52 be ec 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 3c 52 be da 52 2c 52 52 52 52 52 52 52 52 6a 52 52 52 52 52 52 52 52 52 52 52 3a 52 52 52 52 16 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 dc 44 52 00 52 44 fc 52 38 52 52 52 52 52 52 52 26 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 a8 52 52 94 52 52 cc 52 52 52 52 52 52 52 52 52 08 16 d0 bc 00 52 52 52 52 52 52 52 52 52 ea 52 12 52 52 52 52 52 52 e2 52 52 52 32 52 52 52 52 40 52 52 52 52 52 52 a2 52 52 00 52 52 52 52 52 52 e2 e6 52 52 44 52 b2 52 52 52 cc 52 52 52 52 52 52 52 52 52 52 52 52 52 52 60 52 52 52 f2 52 52 52 52 52 48 52 52 52 52 52 14 00 52 52 52 52 c2 52 52 30 52 7c 52 9a 52 5c 52 f6 52 52 2c 52 52 52 52 4e 52 52 e8 50 52 52 52 54 52 52 5e 52 52 52 52 52 52 4a 52 52 98 52 52 52 f8 52 52 52 e8 52 54 52 52 04 1a 52 52 52 52 52 52 4e 52 52 52 52 52 52 52 52 28 52 52 52 52 52 52 e0 60 52 52 52 52 52 52 c4 52 52 44 52 00 52 52 52 64 52 52 52 52 52 f6 dc 52 52 52 86 52 52 52 36 52 52 f2 52 52 52 de 7c 52 52 52 52 52 00 52 52 52 52 52 04 52 30 52 52 f8 52 52 52 fa 52
*/
