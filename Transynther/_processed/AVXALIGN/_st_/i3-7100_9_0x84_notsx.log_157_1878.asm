.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xa39e, %rsi
lea addresses_WT_ht+0x12b9e, %rdi
clflush (%rdi)
nop
nop
cmp $51638, %r14
mov $68, %rcx
rep movsb
cmp $64005, %r9
lea addresses_normal_ht+0x2b9e, %r13
cmp %rbp, %rbp
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
nop
sub $37974, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x13d9e, %rsi
lea addresses_WT+0x175ae, %rdi
nop
nop
cmp $13485, %rbp
mov $8, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx

// Store
mov $0x4003cc0000000c1e, %r8
nop
xor $1273, %r12
movw $0x5152, (%r8)
nop
nop
nop
xor $131, %r12

// Faulty Load
lea addresses_PSE+0x10b9e, %rbp
nop
nop
nop
nop
and $14008, %rsi
mov (%rbp), %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'33': 157}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
