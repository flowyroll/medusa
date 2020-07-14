.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb5db, %r13
nop
nop
add $27790, %r14
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x1eb1b, %rbp
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rbp), %rdx
nop
nop
nop
cmp $11375, %rax
lea addresses_normal_ht+0xbf1b, %rax
nop
nop
cmp $7297, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rax)
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x1c1d3, %rbp
and $31868, %r14
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x2c1b, %rcx
clflush (%rcx)
nop
nop
xor $30934, %rdx
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp $13666, %r14
lea addresses_UC_ht+0x1a31b, %r14
nop
nop
nop
nop
nop
add $57730, %r13
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
and %r12, %r12
lea addresses_WC_ht+0x1a66f, %r13
nop
nop
nop
nop
cmp %rax, %rax
mov (%r13), %rcx
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0xb4db, %r14
nop
and $907, %rax
movb $0x61, (%r14)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x14a1b, %rdx
nop
add $46009, %rcx
mov (%rdx), %r13
and %r13, %r13
lea addresses_WC_ht+0xb, %rsi
lea addresses_UC_ht+0x1dc8b, %rdi
nop
nop
xor %r14, %r14
mov $32, %rcx
rep movsw
nop
nop
and $40279, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_RW+0x12b1b, %rdi
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%rdi)
cmp $42131, %r14

// Store
lea addresses_normal+0x1e31b, %r12
clflush (%r12)
nop
nop
nop
nop
xor $17089, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r12)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r11
sub %r12, %r12

// Store
lea addresses_RW+0x12b1b, %r14
nop
nop
nop
xor %rcx, %rcx
movb $0x51, (%r14)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_US+0x176b, %rdi
nop
nop
add $35080, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_A+0x1c85b, %r12
nop
dec %r11
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x1fa9b, %r14
nop
inc %rdi
movb $0x51, (%r14)
sub $28206, %rbp

// Store
lea addresses_WT+0x14e83, %r11
nop
nop
nop
add $61181, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
and %r9, %r9

// Store
lea addresses_RW+0x903b, %r14
nop
nop
nop
nop
nop
and %r12, %r12
movw $0x5152, (%r14)
nop
nop
nop
nop
and $58523, %rdi

// Store
lea addresses_UC+0x1f3b, %r9
nop
nop
nop
xor $11352, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_RW+0x12b1b, %r14
nop
cmp %r12, %r12
movb (%r14), %r9b
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'51': 336}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
