.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xfa9, %rsi
lea addresses_D_ht+0x1c479, %rdi
nop
nop
nop
nop
add $4187, %rbp
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
and $41058, %rbp
lea addresses_WC_ht+0x3979, %r10
nop
nop
nop
nop
cmp $12995, %r8
movb (%r10), %r15b
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1c1cd, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add $22591, %rsi
movb $0x61, (%r10)
inc %r8
lea addresses_WT_ht+0x4421, %rsi
lea addresses_WT_ht+0x1ae39, %rdi
sub %rdx, %rdx
mov $37, %rcx
rep movsw
nop
nop
sub $42422, %rdi
lea addresses_A_ht+0xcd39, %r10
nop
nop
nop
xor %rbp, %rbp
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
dec %r10
lea addresses_D_ht+0x1b539, %rsi
lea addresses_UC_ht+0x3af9, %rdi
nop
inc %rbp
mov $123, %rcx
rep movsw
nop
nop
sub $55739, %r15
lea addresses_WT_ht+0x10179, %rcx
nop
nop
nop
nop
cmp %r10, %r10
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xbe79, %r8
clflush (%r8)
nop
nop
nop
nop
sub $50751, %rcx
movw $0x6162, (%r8)
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x18875, %r8
clflush (%r8)
add $8784, %rsi
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
and $44365, %rdi
lea addresses_A_ht+0x6361, %rcx
nop
nop
nop
sub %rbp, %rbp
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
nop
sub $41738, %rsi
lea addresses_WT_ht+0x1d439, %rsi
lea addresses_A_ht+0x1e939, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $29898, %r15
mov $84, %rcx
rep movsq
nop
nop
sub $37594, %r15
lea addresses_D_ht+0xc39, %rsi
nop
add %rdx, %rdx
mov (%rsi), %r10d
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x19139, %r15
nop
nop
nop
nop
nop
and $60631, %rsi
mov (%r15), %r8
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rdx

// Store
mov $0x109, %r13
xor $6546, %r15
mov $0x5152535455565758, %r12
movq %r12, (%r13)
nop
nop
nop
dec %rbp

// Load
lea addresses_PSE+0x6efd, %rdx
nop
nop
dec %r14
movaps (%rdx), %xmm6
vpextrq $1, %xmm6, %rbp
sub $28043, %r13

// Load
lea addresses_WT+0xe879, %rdx
nop
nop
xor %r12, %r12
mov (%rdx), %r14
nop
xor $31654, %rbp

// Store
mov $0x7e6e3700000009c1, %rdx
nop
nop
nop
nop
cmp $35320, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
cmp $52190, %r12

// Store
lea addresses_WT+0x17ce1, %r13
clflush (%r13)
xor $60587, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r13)
dec %r14

// Store
lea addresses_WT+0xa979, %r14
cmp $54145, %r13
movw $0x5152, (%r14)
nop
nop
nop
xor $53080, %r13

// Store
lea addresses_RW+0x16539, %r9
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
nop
nop
cmp $58030, %rbp

// Store
lea addresses_RW+0x1bb09, %r9
cmp %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r9)
cmp $54526, %r14

// Store
lea addresses_WT+0x1bd39, %r15
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
xor $8697, %r14

// Store
lea addresses_PSE+0x5939, %r13
sub $64282, %rbp
movl $0x51525354, (%r13)
nop
and %r14, %r14

// Faulty Load
mov $0x2d26bd0000000939, %r15
clflush (%r15)
nop
inc %rbp
mov (%r15), %r9w
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 19990, '00': 1839}
54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 00 54 54 00 54 00 00 54 54 54 54 54 54 54 00 54 00 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
