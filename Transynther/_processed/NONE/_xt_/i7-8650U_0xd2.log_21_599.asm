.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xf2f2, %rcx
nop
dec %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0xd2d2, %r13
nop
sub $37578, %rcx
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x1f2a, %r15
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
dec %r15
lea addresses_UC_ht+0x128a6, %r13
nop
nop
nop
sub $57200, %r15
movb (%r13), %cl
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x8252, %r9
nop
nop
nop
nop
nop
xor $65391, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
xor $52875, %rdx
lea addresses_WC_ht+0xd852, %r15
sub %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0xff4a, %rsi
lea addresses_A_ht+0x7402, %rdi
and %r10, %r10
mov $57, %rcx
rep movsw
nop
nop
nop
nop
add $50250, %rsi
lea addresses_WT_ht+0x9d52, %rsi
lea addresses_UC_ht+0x8e02, %rdi
nop
add $42304, %r13
mov $54, %rcx
rep movsl
nop
cmp $53790, %rdx
lea addresses_D_ht+0x1d6d2, %rdx
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rdx)
nop
nop
nop
cmp $44857, %r9
lea addresses_A_ht+0x42d2, %rcx
nop
nop
nop
nop
nop
xor $21671, %r15
mov (%rcx), %edi
xor $52876, %r10
lea addresses_normal_ht+0x12d2, %rsi
lea addresses_D_ht+0x1edd2, %rdi
clflush (%rdi)
nop
nop
nop
dec %r10
mov $30, %rcx
rep movsq
xor $65504, %rsi
lea addresses_A_ht+0x1ca22, %r10
xor $3567, %rax
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1e286, %rsi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0xa5d2, %rsi
nop
nop
dec %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xbc92, %r10
nop
xor %rcx, %rcx
mov (%r10), %r15
nop
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rsi

// Store
lea addresses_PSE+0x12ad2, %r13
nop
nop
add $32139, %rsi
movl $0x51525354, (%r13)
nop
nop
nop
xor $56515, %rax

// Load
lea addresses_US+0x4f92, %rbp
nop
nop
xor %r8, %r8
mov (%rbp), %rsi
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_A+0x11d92, %r11
nop
nop
nop
sub $53250, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
nop
and $47774, %r13

// Store
mov $0x6238cb0000000522, %r11
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_PSE+0x1c042, %rax
nop
nop
sub %r13, %r13
movb $0x51, (%rax)
nop
nop
nop
and $53143, %r12

// Load
lea addresses_UC+0x19b6a, %r11
cmp %r8, %r8
mov (%r11), %rax
nop
nop
nop
dec %r12

// Store
lea addresses_WT+0x56d2, %r12
nop
nop
nop
sub $25392, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r12)
nop
nop
and $54671, %r11

// Load
lea addresses_D+0x11ad2, %rax
xor $42784, %r11
movups (%rax), %xmm6
vpextrq $1, %xmm6, %r13
and $5204, %r11

// Faulty Load
lea addresses_D+0x92d2, %r13
nop
nop
nop
nop
sub %rbp, %rbp
movb (%r13), %r8b
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'36': 21}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
