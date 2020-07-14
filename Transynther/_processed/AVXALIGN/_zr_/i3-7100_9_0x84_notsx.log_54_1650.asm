.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x5026, %r13
and $36080, %r10
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
inc %rdx
lea addresses_WC_ht+0x5c26, %r13
nop
nop
and $61164, %rdx
movups (%r13), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
add $12760, %r8
lea addresses_normal_ht+0x17906, %rsi
lea addresses_WT_ht+0x1c5c6, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $27, %rcx
rep movsl
nop
and $46384, %rdi
lea addresses_UC_ht+0x7026, %rsi
lea addresses_D_ht+0x13426, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $19650, %r12
mov $42, %rcx
rep movsq
nop
nop
dec %rcx
lea addresses_WC_ht+0x1c9a6, %rsi
lea addresses_A_ht+0x6026, %rdi
clflush (%rsi)
nop
nop
add $38679, %r10
mov $28, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $54364, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rbx
push %rsi

// Faulty Load
mov $0x826, %rbx
sub %rsi, %rsi
mov (%rbx), %r10d
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 54}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
