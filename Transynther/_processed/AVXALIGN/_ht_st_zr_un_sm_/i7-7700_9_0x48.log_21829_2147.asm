.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13dd9, %rdi
nop
nop
nop
add $62501, %r9
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
nop
nop
nop
nop
xor $41290, %r11
lea addresses_UC_ht+0x161d9, %rsi
lea addresses_D_ht+0x12e0d, %rdi
cmp $55283, %r11
mov $15, %rcx
rep movsq
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xa699, %rsi
lea addresses_A_ht+0x17dd9, %rdi
nop
and $8820, %r11
mov $6, %rcx
rep movsb
nop
nop
nop
nop
cmp $53736, %r12
lea addresses_D_ht+0x8af1, %rcx
nop
nop
nop
nop
nop
cmp $38094, %rbp
mov (%rcx), %rdi
nop
cmp $16814, %r9
lea addresses_A_ht+0x7fe1, %rbp
nop
nop
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%rbp)
nop
nop
nop
add $53283, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Store
lea addresses_RW+0x1b559, %r14
nop
add %rdx, %rdx
movl $0x51525354, (%r14)
nop
nop
nop
inc %rdi

// Store
lea addresses_D+0x1e5d9, %rbp
nop
nop
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%rbp)

// Exception!!!
mov (0), %r14
add $94, %r15

// Store
lea addresses_A+0x9fd9, %rdx
sub %r14, %r14
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
add $49654, %rdx

// Store
lea addresses_D+0x1e5d9, %rdi
nop
sub $38945, %rbp
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
xor %r8, %r8

// Load
lea addresses_D+0xd3f9, %rbp
cmp %r12, %r12
movb (%rbp), %dl
nop
sub %r14, %r14

// Faulty Load
lea addresses_D+0x1e5d9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $25745, %rdx
vmovntdqa (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': True, 'NT': False}}
{'ef': 2, 'ae': 1, '83': 2, '1f': 2, '9e': 1590, '03': 2286, '8c': 1, 'a0': 1, 'e2': 2, 'c5': 3, '2b': 3, '35': 1, '65': 1, '37': 134, '72': 3270, '86': 2, '46': 1, '20': 351, '3e': 3, 'ca': 481, 'f4': 1, 'bb': 7, 'd2': 3, 'c3': 279, '53': 1, '89': 2, '57': 1, '06': 1, 'cb': 1, '31': 2, 'ad': 152, 'e4': 1, 'e8': 202, '87': 2, 'eb': 1, '4d': 1, '61': 3, '2f': 40, '33': 1, '4b': 20, '0f': 255, '4f': 1, 'f6': 1, 'b7': 2, '1e': 6, 'f0': 6, '08': 1, 'b6': 1, '55': 1751, 'a2': 4, 'd7': 3, '6f': 1, '0b': 4, 'dd': 2, '4a': 1, 'e3': 217, '3b': 6949, '00': 920, 'c7': 1, 'cf': 1, '8b': 1, '9d': 1, '3d': 8, '4e': 1, '56': 2211, '26': 1, 'be': 1, 'b3': 2, '48': 11, 'bf': 1, 'ff': 2, '9f': 580, '17': 2, 'f3': 1, '77': 1, '0d': 4, '75': 12, 'a7': 1, '96': 1, 'aa': 2}
06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3b 56 56 56 56 56 56 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 55 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 83 03 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 9e 00 00 00 00 00 00 00 00 00 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 00 00 00 00 00 00 00 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 00 56 03 00 00 56 03 9e 03 9e 03 9e 56 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 56 03 56 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 00 33 72 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 56 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 83 72 03 9e 03 9e 56 56 03 9e 03 9e 03 9e 56 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 56 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 03 9e 56 72 03 37 56 03 37 03 37 03 56 56 03 37 03 37 03 37 03 37 03 37 03 37 03 37 00 3b 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 03 37 56 03 37 03 00 56 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 56 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3
*/
