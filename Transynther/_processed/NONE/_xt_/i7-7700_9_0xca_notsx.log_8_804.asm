.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x137b4, %rsi
lea addresses_WT_ht+0x23b4, %rdi
nop
dec %r9
mov $45, %rcx
rep movsl
nop
nop
nop
nop
cmp $57277, %rsi
lea addresses_WC_ht+0x9a40, %rsi
lea addresses_WC_ht+0xaef4, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $11, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0xdaf8, %rsi
lea addresses_WT_ht+0x15d74, %rdi
nop
dec %r15
mov $98, %rcx
rep movsw
nop
nop
nop
nop
add $22358, %rcx
lea addresses_UC_ht+0x19648, %rcx
nop
nop
add $61088, %r10
movl $0x61626364, (%rcx)
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x6734, %rcx
nop
cmp $14631, %rdi
movl $0x61626364, (%rcx)
nop
xor $9802, %rdi
lea addresses_WT_ht+0x10354, %rsi
lea addresses_WC_ht+0x1d74, %rdi
nop
nop
nop
nop
nop
and $11740, %rbx
mov $86, %rcx
rep movsl
nop
nop
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_UC+0x1be74, %r15
cmp $48735, %r12
movl $0x51525354, (%r15)
nop
add %r8, %r8

// Load
mov $0x35b3a50000000ad4, %r12
nop
nop
nop
nop
sub %rbx, %rbx
movups (%r12), %xmm0
vpextrq $0, %xmm0, %rdi
xor %rdi, %rdi

// Store
lea addresses_normal+0x1c274, %rbx
nop
nop
nop
sub %r12, %r12
movw $0x5152, (%rbx)
nop
inc %rbx

// Store
mov $0x274, %r15
nop
and $46983, %r9
movw $0x5152, (%r15)
cmp %rdi, %rdi

// Store
mov $0x74f9780000000c54, %r9
nop
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r9)
nop
nop
sub $62739, %rdi

// Faulty Load
lea addresses_PSE+0x1da74, %r15
nop
nop
nop
xor %r14, %r14
movups (%r15), %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'33': 8}
33 33 33 33 33 33 33 33
*/
