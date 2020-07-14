.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x133d2, %rsi
lea addresses_UC_ht+0xb62, %rdi
nop
nop
nop
add %rdx, %rdx
mov $18, %rcx
rep movsq
xor %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x6906, %rsi
lea addresses_normal+0x9162, %rdi
nop
nop
and %r15, %r15
mov $82, %rcx
rep movsb
nop
nop
add $56287, %r12

// Load
lea addresses_A+0x9d62, %r12
dec %r15
mov (%r12), %rsi
nop
nop
nop
nop
xor %rsi, %rsi

// Load
lea addresses_PSE+0x6c3a, %r10
and %rcx, %rcx
movups (%r10), %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
nop
xor $4245, %r10

// Faulty Load
lea addresses_US+0xa562, %rdi
nop
nop
nop
nop
and %r10, %r10
mov (%rdi), %esi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'00': 240}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
