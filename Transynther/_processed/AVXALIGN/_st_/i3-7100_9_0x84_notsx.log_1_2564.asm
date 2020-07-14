.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x15dd8, %rsi
lea addresses_WT+0x36b2, %rdi
xor %rbx, %rbx
mov $38, %rcx
rep movsq
dec %rsi

// Store
lea addresses_normal+0x10672, %r14
clflush (%r14)
and %r10, %r10
movb $0x51, (%r14)
nop
nop
nop
sub $39339, %r10

// Store
mov $0x1f84500000009c2, %rdi
nop
sub $59478, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdi)
nop
nop
dec %rbx

// Store
lea addresses_WT+0x1ca32, %rbp
xor $61837, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
sub %rsi, %rsi

// Faulty Load
lea addresses_D+0x3232, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rdi), %r14w
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'36': 1}
36
*/
