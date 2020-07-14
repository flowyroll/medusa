.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3cea, %rsi
lea addresses_WT_ht+0x1a712, %rdi
nop
add %r13, %r13
mov $83, %rcx
rep movsl
and %r10, %r10
lea addresses_normal_ht+0x8978, %r15
nop
nop
nop
sub %r14, %r14
movb (%r15), %r13b
add $61893, %rdi
lea addresses_normal_ht+0x4d4e, %r15
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r15)
nop
dec %r14
lea addresses_WT_ht+0x1630e, %rcx
nop
nop
xor %r15, %r15
mov (%rcx), %esi
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xd5de, %rsi
sub $50925, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm1, (%rsi)
nop
sub $3692, %rdi
lea addresses_D_ht+0xa31e, %r13
nop
nop
add %r14, %r14
mov (%r13), %esi
nop
nop
xor $28565, %rcx
lea addresses_WC_ht+0xb54e, %rdi
sub %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x4cee, %rsi
lea addresses_normal_ht+0x294e, %rdi
nop
nop
sub %rbx, %rbx
mov $57, %rcx
rep movsw
xor $60996, %rsi
lea addresses_WC_ht+0xa60e, %rsi
lea addresses_D_ht+0x8ca6, %rdi
nop
xor $47875, %r15
mov $67, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $42071, %r13
lea addresses_WT_ht+0x1214e, %rdi
nop
nop
nop
nop
add %rcx, %rcx
mov (%rdi), %rsi
nop
cmp $37758, %rbx
lea addresses_D_ht+0xf5be, %rsi
lea addresses_WC_ht+0xb34e, %rdi
nop
nop
nop
sub %r15, %r15
mov $121, %rcx
rep movsq
nop
nop
nop
nop
xor $25517, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdx

// Store
mov $0x6756a60000000302, %r14
nop
nop
nop
nop
nop
sub $47683, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
nop
nop
nop
and %r14, %r14

// Store
mov $0x6ec8f10000000d8e, %r8
nop
nop
nop
cmp %r10, %r10
movl $0x51525354, (%r8)
nop
nop
nop
nop
sub $64045, %r10

// Load
lea addresses_UC+0xf78e, %rbp
nop
nop
and %rdx, %rdx
movb (%rbp), %cl
dec %rbp

// Store
lea addresses_A+0x1ab4e, %r8
nop
add %r10, %r10
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
mov $0x5698bf000000054e, %rcx
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
cmp $43381, %rbp

// Faulty Load
lea addresses_WT+0x1d94e, %rdx
nop
nop
nop
nop
and %rcx, %rcx
mov (%rdx), %r10w
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'39': 3}
39 39 39
*/
