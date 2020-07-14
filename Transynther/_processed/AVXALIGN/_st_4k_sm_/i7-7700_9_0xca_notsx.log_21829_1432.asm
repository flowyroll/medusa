.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x94a1, %rdx
nop
nop
nop
nop
nop
xor %rdi, %rdi
movups (%rdx), %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0xfe11, %r12
nop
nop
nop
xor %r15, %r15
movb (%r12), %r10b
xor $26670, %r15
lea addresses_UC_ht+0xa391, %rsi
lea addresses_WC_ht+0x12111, %rdi
nop
nop
sub $2878, %r11
mov $46, %rcx
rep movsl
nop
nop
nop
nop
add $30492, %r15
lea addresses_WT_ht+0xb391, %r10
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
add $24852, %rdi
lea addresses_D_ht+0x1c671, %r10
nop
nop
nop
nop
nop
and %rdx, %rdx
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
nop
and %r15, %r15
lea addresses_A_ht+0x16e1, %rsi
lea addresses_normal_ht+0x6651, %rdi
nop
nop
nop
add $38666, %r12
mov $65, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xd451, %rsi
lea addresses_UC_ht+0x1c71d, %rdi
nop
nop
nop
inc %r11
mov $86, %rcx
rep movsw
inc %r11
lea addresses_normal_ht+0xfc73, %r11
nop
nop
nop
nop
add %rdi, %rdi
mov (%r11), %r15d
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x7b91, %r10
nop
nop
nop
nop
and $14555, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r10)
xor $9028, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0xeb91, %rbp
nop
xor %r14, %r14
movb (%rbp), %r12b
nop
nop
nop
and $12009, %r14

// Store
lea addresses_WT+0xe9d1, %rdx
nop
nop
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%rdx)
cmp $65422, %rdx

// Load
lea addresses_PSE+0x1fb91, %r11
nop
nop
nop
nop
nop
inc %rbp
mov (%r11), %edx
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0xe1d1, %rdx
nop
nop
nop
nop
nop
sub $34399, %rbp
movl $0x51525354, (%rdx)
nop
cmp %r14, %r14

// REPMOV
lea addresses_RW+0x391, %rsi
lea addresses_WT+0x3791, %rdi
clflush (%rsi)
nop
xor $43728, %r14
mov $106, %rcx
rep movsq
nop
nop
nop
nop
add $31888, %r11

// REPMOV
lea addresses_UC+0xb391, %rsi
lea addresses_PSE+0x13791, %rdi
nop
add $35786, %rbp
mov $39, %rcx
rep movsl
nop
xor %rbp, %rbp

// Store
lea addresses_WT+0x3305, %r12
nop
nop
nop
sub $4904, %rdi
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_A+0x16391, %r14
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
nop
nop
add $5112, %rsi

// Store
lea addresses_PSE+0x14291, %rcx
add %r14, %r14
movl $0x51525354, (%rcx)
xor $54638, %r11

// Load
lea addresses_UC+0xee11, %rsi
clflush (%rsi)
nop
nop
nop
xor $64009, %rbp
mov (%rsi), %r12
nop
xor $44102, %rsi

// Store
lea addresses_WT+0xdf51, %rdi
nop
and $17354, %rdx
movb $0x51, (%rdi)
nop
add %rdi, %rdi

// Store
lea addresses_normal+0xf131, %r10
nop
dec %r11
movb $0x51, (%r10)
nop
sub %rbp, %rbp

// Store
lea addresses_UC+0xb391, %rdi
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0xb169, %r12
nop
nop
nop
nop
nop
and $49986, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r12)
nop
nop
and $45714, %rbp

// Faulty Load
lea addresses_UC+0xb391, %rsi
nop
nop
nop
nop
sub %r12, %r12
movb (%rsi), %cl
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
