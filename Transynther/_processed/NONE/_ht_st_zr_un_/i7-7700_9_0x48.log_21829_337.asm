.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1592a, %r15
nop
nop
sub $9832, %rbp
movl $0x61626364, (%r15)
nop
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0xfea0, %r9
nop
nop
xor %r14, %r14
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x1042a, %rsi
lea addresses_D_ht+0x1036a, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $62, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x1b06a, %rsi
lea addresses_D_ht+0x3e6a, %rdi
nop
inc %r13
mov $2, %rcx
rep movsl
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x756a, %rbp
clflush (%rbp)
xor $42685, %r15
mov (%rbp), %r9
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x442a, %rsi
lea addresses_UC_ht+0x7e6a, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $63290, %r11
mov $4, %rcx
rep movsb
xor %rdi, %rdi
lea addresses_normal_ht+0x4faa, %r11
nop
nop
nop
nop
nop
inc %rcx
movb (%r11), %r14b
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1b20a, %r9
nop
nop
xor $30711, %r13
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
nop
sub %r14, %r14
lea addresses_WT_ht+0xe968, %rcx
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x17bea, %rbp
nop
inc %r15
mov (%rbp), %rdi
nop
nop
nop
nop
nop
xor $5182, %r14
lea addresses_D_ht+0x1356a, %r9
clflush (%r9)
nop
nop
nop
and $21527, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1e66a, %r11
nop
dec %r14
movb $0x61, (%r11)
nop
cmp $49724, %rsi
lea addresses_WT_ht+0x490a, %r14
nop
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x29ab, %rbp
nop
nop
dec %r9
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1967e, %rsi
lea addresses_normal_ht+0xa972, %rdi
nop
nop
nop
inc %r13
mov $105, %rcx
rep movsl
nop
nop
nop
and $33230, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x2e9c0a0000000e6a, %rdi
dec %rdx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
and $56894, %rdx

// Store
lea addresses_D+0x1a5ca, %rdi
sub %rsi, %rsi
movw $0x5152, (%rdi)
cmp %rdi, %rdi

// Load
lea addresses_UC+0x5a6a, %rsi
nop
sub $17444, %r12
mov (%rsi), %ax
nop
sub $16477, %r8

// Load
lea addresses_WT+0x15e6a, %rdx
nop
nop
nop
nop
nop
cmp $32787, %rcx
mov (%rdx), %si
nop
nop
xor $56697, %rcx

// Faulty Load
lea addresses_WT+0x15e6a, %rsi
nop
cmp $19288, %rax
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'2a': 101, 'ae': 1, 'bc': 1, 'ed': 127, '1f': 1, '03': 48, '7b': 45, 'f4': 8, 'c5': 3223, '5b': 42, 'e9': 1, 'e5': 8, 'bf': 1, 'ac': 98, '82': 2, 'b4': 1, '6b': 2, '40': 1265, 'fa': 1, '25': 34, 'fb': 1, 'fc': 300, '73': 1, 'dd': 56, '06': 12, 'a5': 1, 'd3': 1, '31': 77, 'ec': 1, '78': 36, '5f': 1, '54': 1, '58': 1, '21': 166, '8e': 1, '87': 138, 'a9': 1, '15': 1, 'eb': 1, '23': 1, 'fd': 4, '4c': 69, '4f': 17, 'b7': 3, '2e': 2, '89': 68, 'e1': 375, '43': 1, '6c': 255, 'f5': 1, 'c1': 219, '0b': 1016, '02': 1, '52': 21, '29': 22, '0a': 44, 'e3': 11, '00': 3877, '1d': 4, 'd2': 74, 'de': 1, 'b5': 1, 'f9': 1, 'b8': 1, '44': 71, '6d': 1, 'c8': 63, '01': 80, 'cc': 1, 'c0': 4721, '37': 1, 'ff': 4688, 'f7': 1, '2c': 69, '17': 54, 'f3': 7, 'f0': 37, 'e8': 9, '5c': 50, '86': 1, '75': 2, 'ea': 1, 'fe': 75, '57': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c0 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 2e 2e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 c0 c0 c0 c0 c0 c0 c0 c5 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c5 c0 c0 c0 c5 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c5 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c c5 2c 2c 2c 2c 2c c5 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c c5 2c 2c 2c c5 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 c0 c0 c0 c5 c5 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 ff c5 c0 c0 c0 c5 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c5 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c5 c0 c0 c0 c0 c0 c5 c5 c0 c0 c0 c0 c0 c0 c0 c5 c0 c0 c0 c0 c5 c0 c0 c0 c0 c0 c5 c0 c0 ff 29 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 29 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 29 c0 c0 29 c0 c0 c0 29 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 ff 29 c0 c0 29 c0 29 c0 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 ff 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 29 c0 c0 c0 c0 c0 c0 c0 c0 c1 c5 c0 c0 c0 c0 ff ff ff ff ff c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 ff ff ff ff ff c0 c0 c0 c0 c0 c0 ff ff ff ff ff c0 c0 c0 c0 c0 ff ff ff ff c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 ff ff ff ff ff ff c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 ff ff ff ff ff c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 ff ff ff ff ff c0 c0 c0 c0 c0 c0 c0
*/
