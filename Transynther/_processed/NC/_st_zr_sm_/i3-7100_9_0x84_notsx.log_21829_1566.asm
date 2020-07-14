.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x14f1e, %rsi
lea addresses_D_ht+0x1b33c, %rdi
nop
sub $54051, %r8
mov $40, %rcx
rep movsq
nop
nop
and %r14, %r14
lea addresses_A_ht+0x9ade, %rax
nop
nop
add $58340, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rax
movntdq %xmm6, (%rax)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1f1e, %rsi
lea addresses_UC_ht+0x12b1e, %rdi
cmp $22727, %rdx
mov $80, %rcx
rep movsw
nop
nop
nop
add $63678, %rdi
lea addresses_UC_ht+0xb662, %r12
nop
nop
nop
and $24380, %rax
movb $0x61, (%r12)
xor $49929, %rax
lea addresses_normal_ht+0x47a, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov (%rdi), %r8
nop
nop
nop
and $10837, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rdi

// Load
lea addresses_RW+0x12c5f, %r13
nop
nop
nop
nop
nop
add $58381, %rax
movb (%r13), %r14b
nop
and $35052, %r10

// Store
lea addresses_D+0xf72e, %r13
add $26080, %rax
movw $0x5152, (%r13)
nop
nop
nop
add $59786, %rax

// Store
lea addresses_normal+0xa53e, %rbp
lfence
movb $0x51, (%rbp)
nop
nop
nop
inc %r10

// Load
lea addresses_normal+0x1a31e, %rax
nop
nop
nop
xor %r13, %r13
mov (%rax), %r14w
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_RW+0xa59e, %r10
nop
nop
nop
nop
and %rbx, %rbx
movb $0x51, (%r10)
sub %rbx, %rbx

// Load
lea addresses_PSE+0xcb1e, %rax
nop
sub $9192, %rbp
mov (%rax), %r13w
add %r10, %r10

// Store
lea addresses_US+0x273e, %r14
nop
nop
nop
dec %rbx
movb $0x51, (%r14)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_WC+0x435e, %r10
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%r10)
sub %rdi, %rdi

// Store
mov $0x685abf000000031e, %r10
nop
sub %rdi, %rdi
movb $0x51, (%r10)
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_D+0x928a, %r13
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r13)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_normal+0xc0e8, %r14
nop
nop
dec %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
xor $20260, %rbx

// Load
lea addresses_US+0x4a1e, %rbp
nop
nop
nop
nop
inc %rdi
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
add %rbp, %rbp

// Load
lea addresses_US+0x1ba1e, %rdi
nop
nop
nop
xor $41522, %rbp
mov (%rdi), %r10d
and %r10, %r10

// Faulty Load
mov $0x685abf000000031e, %r14
nop
nop
nop
nop
xor %r13, %r13
movups (%r14), %xmm4
vpextrq $0, %xmm4, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2954, '51': 18875}
51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 00 51 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 00 51 51 51 00 51 00 00 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 00 51 00 51 51 51 51 00 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 00 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 00 51 51 00 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 00 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51
*/
