.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rcx
push %rsi
lea addresses_WC_ht+0x168a4, %rcx
nop
nop
nop
cmp $57918, %r9
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
xor $719, %r14
pop %rsi
pop %rcx
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x6e44, %rsi
lea addresses_WT+0xceb8, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $61023, %r12
mov $98, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_WC+0x7cfc, %r10
clflush (%r10)
nop
nop
nop
sub $55945, %r14
mov (%r10), %di
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_A+0x14f04, %r10
clflush (%r10)
nop
add $45073, %r12
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
nop
and %r10, %r10

// Load
lea addresses_A+0xed98, %rdi
xor $53885, %r14
mov (%rdi), %rcx
nop
nop
add %r10, %r10

// Store
lea addresses_D+0x6b4c, %rdx
nop
nop
nop
nop
nop
and %r10, %r10
movl $0x51525354, (%rdx)
nop
nop
dec %rcx

// Store
lea addresses_RW+0x10baa, %rdi
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
xor %rdi, %rdi

// Load
lea addresses_WT+0xf044, %rdx
nop
nop
nop
sub %r12, %r12
mov (%rdx), %rsi
nop
xor $64946, %rcx

// Store
lea addresses_US+0x1edc4, %r12
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%r12)
nop
nop
nop
nop
xor $13133, %rdi

// Store
lea addresses_D+0x14444, %r10
nop
nop
nop
add %rsi, %rsi
movw $0x5152, (%r10)
nop
add $32996, %rdi

// Store
mov $0x5775780000000444, %r10
nop
nop
and $28500, %r12
movb $0x51, (%r10)
nop
nop
nop
and $7507, %rdi

// Store
mov $0x4a4, %rcx
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
cmp $42769, %r12

// Store
lea addresses_RW+0x1e584, %rdi
nop
nop
nop
nop
nop
sub $21286, %rdx
movl $0x51525354, (%rdi)
nop
cmp $50234, %r12

// Faulty Load
mov $0x5775780000000444, %rsi
nop
nop
sub $38000, %rdx
movaps (%rsi), %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 1}
00
*/
