.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd132, %r14
nop
nop
nop
add %rbx, %rbx
movb $0x61, (%r14)
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x58b2, %r13
nop
nop
nop
add $37941, %r15
movl $0x61626364, (%r13)
nop
nop
nop
nop
xor $42344, %r14
lea addresses_WT_ht+0x2142, %r15
clflush (%r15)
cmp %rcx, %rcx
movb (%r15), %r13b
nop
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x18002, %r15
clflush (%r15)
xor %rcx, %rcx
mov (%r15), %rdi
nop
nop
xor $6002, %r13
lea addresses_WT_ht+0x5eb0, %r14
nop
dec %rdi
movw $0x6162, (%r14)
add $59376, %r14
lea addresses_WC_ht+0x19b82, %r13
xor $48241, %r14
movb (%r13), %r12b
nop
nop
nop
cmp $9822, %r12
lea addresses_A_ht+0x23e2, %r12
nop
nop
nop
and $53876, %rdi
mov (%r12), %r14
inc %r13
lea addresses_WC_ht+0xc02, %rsi
lea addresses_A_ht+0x10e02, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rbx, %rbx
mov $114, %rcx
rep movsq
nop
dec %r13
lea addresses_UC_ht+0x9802, %rsi
lea addresses_WC_ht+0x12402, %rdi
nop
nop
nop
nop
sub $11843, %r13
mov $52, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0x6002, %r14
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x931a, %rsi
nop
nop
xor %r15, %r15
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor $43992, %rbx
lea addresses_normal_ht+0x17dc2, %r12
nop
nop
add $3959, %r15
mov (%r12), %rdi
nop
nop
nop
mfence
lea addresses_UC_ht+0x2170, %rdi
nop
nop
nop
nop
sub $59649, %rbx
mov (%rdi), %r15
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdx

// Load
lea addresses_WT+0x1d202, %rcx
nop
nop
cmp %r15, %r15
movb (%rcx), %r13b
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
mov $0x21d3600000000fc7, %rdx
nop
nop
inc %r9
movw $0x5152, (%rdx)
nop
nop
nop
nop
add $46933, %r13

// Load
lea addresses_D+0x19002, %rcx
and $37316, %r9
vmovntdqa (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
xor $30708, %r15

// Faulty Load
lea addresses_UC+0x1a802, %r9
nop
nop
nop
nop
sub %r10, %r10
movaps (%r9), %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'48': 5345, '49': 1, 'ff': 1, '00': 16482}
00 00 00 00 48 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 48 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 48 00 48 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 48 48 00 00 48 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 48 48 48 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 48 00 48 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 48 00 48 48 00 48 00 00 00 00 00 00 00 00 00 48 48 48 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 48 00 48 48 00 00 00 00 00 00 48 48 00 48 00 00 00 48 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 48 00 00 48 48 00 00 00 00 48 48 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 48 48 48 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 00 00 48 00 48 00 48 00 48 48 00 00 00 00 48 00 48 00 00 00 00 48 48 00 00 00 00 00 48 00 00 48 48 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 48 48 48 48 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 00 00 00 48 48 00 48 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 48 48 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 48 48 48 00 00 00 00 48 48 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 00 48 48 48 48 00 00 48 48 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 48 48 48 48 48 00 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 48 48 48 00 00 00 00 48 48 00 00 00 00 00 48 48 00 00 00 00 00 48
*/
