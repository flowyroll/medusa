.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1bf52, %r9
nop
nop
nop
nop
nop
add $9864, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x16466, %rsi
lea addresses_D_ht+0xd158, %rdi
clflush (%rdi)
nop
nop
xor %r13, %r13
mov $125, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x10c86, %rsi
lea addresses_A_ht+0x10dca, %rdi
cmp %r8, %r8
mov $127, %rcx
rep movsb
sub %r8, %r8
lea addresses_normal_ht+0x101d6, %rdi
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
sub $44185, %r8
lea addresses_normal_ht+0x137d6, %rsi
lea addresses_WC_ht+0x1d4d6, %rdi
nop
and $11756, %r11
mov $119, %rcx
rep movsw
nop
nop
nop
sub $59877, %r9
lea addresses_A_ht+0x32d6, %r8
nop
nop
nop
nop
and $36583, %rdi
mov (%r8), %esi
nop
inc %r11
lea addresses_WC_ht+0x8fd6, %rsi
lea addresses_A_ht+0x6f6, %rdi
clflush (%rdi)
nop
add %r10, %r10
mov $62, %rcx
rep movsl
nop
nop
add $6290, %r11
lea addresses_A_ht+0x596e, %r10
nop
nop
nop
nop
nop
and $12361, %rdi
movl $0x61626364, (%r10)
add $54530, %r8
lea addresses_A_ht+0x1ad56, %rcx
nop
dec %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rcx)
nop
and $23482, %r9
lea addresses_A_ht+0x129d6, %rsi
lea addresses_WT_ht+0x1de32, %rdi
nop
nop
nop
nop
nop
sub $60671, %r11
mov $97, %rcx
rep movsl
nop
nop
nop
and $55958, %rsi
lea addresses_normal_ht+0x9fd6, %rcx
nop
nop
add $7141, %rsi
mov (%rcx), %rdi
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x8df6, %rsi
lea addresses_WC_ht+0x1ac56, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r13, %r13
mov $115, %rcx
rep movsb
nop
add %r9, %r9
lea addresses_A_ht+0xbb56, %r11
nop
nop
nop
nop
dec %r8
mov (%r11), %edi
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x125b6, %r9
nop
nop
nop
nop
xor $1618, %r8
mov (%r9), %r10d
nop
nop
nop
sub $37466, %rcx
lea addresses_D_ht+0x19c6e, %rsi
lea addresses_normal_ht+0xc592, %rdi
xor $34846, %r11
mov $5, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x15e06, %rax
nop
nop
nop
nop
nop
add $55042, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
dec %r13

// Store
lea addresses_WC+0x169d6, %rbx
nop
nop
nop
nop
nop
sub $56659, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
xor $36491, %r8

// Store
mov $0x9ca, %rbx
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
nop
nop
nop
nop
add %rbx, %rbx

// REPMOV
lea addresses_US+0x1c9d6, %rsi
lea addresses_RW+0x10936, %rdi
clflush (%rdi)
xor %r15, %r15
mov $88, %rcx
rep movsl
nop
nop
nop
dec %rdi

// Store
lea addresses_WT+0x1dbd6, %rsi
nop
nop
dec %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
cmp $5692, %r13

// Store
lea addresses_RW+0x1b8df, %r10
nop
nop
nop
nop
and %rax, %rax
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0xbe36, %r13
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovaps %ymm2, (%r13)
inc %r15

// Store
lea addresses_A+0xffd6, %r8
nop
nop
nop
sub $47236, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movntdq %xmm1, (%r8)
nop
xor %rax, %rax

// Store
lea addresses_US+0x16b9f, %r15
nop
nop
nop
and $54105, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
cmp %rcx, %rcx

// Load
lea addresses_UC+0xefd6, %r10
nop
dec %rdi
mov (%r10), %r8
xor $59709, %rcx

// REPMOV
lea addresses_normal+0xabd6, %rsi
lea addresses_normal+0x1a7d6, %rdi
nop
nop
nop
sub $42166, %r11
mov $61, %rcx
rep movsl
nop
add %r11, %r11

// REPMOV
lea addresses_normal+0x1ef56, %rsi
lea addresses_RW+0x67d6, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $120, %rcx
rep movsl
inc %r15

// REPMOV
lea addresses_UC+0x33d6, %rsi
lea addresses_WT+0x13bd6, %rdi
nop
nop
cmp %rbx, %rbx
mov $110, %rcx
rep movsq
nop
nop
nop
and $8154, %r11

// Store
lea addresses_WT+0x108d6, %rsi
nop
nop
and %rax, %rax
movw $0x5152, (%rsi)
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_WT+0xb366, %rax
sub $54077, %r8
movb $0x51, (%rax)
and %rax, %rax

// Faulty Load
lea addresses_RW+0x67d6, %r15
nop
add $28387, %r13
mov (%r15), %ecx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_US', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'a0': 1}
a0
*/
