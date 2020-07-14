.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa523, %r8
nop
nop
nop
nop
nop
xor $8276, %rdi
mov (%r8), %ebp
nop
nop
nop
nop
nop
xor $29808, %r9
lea addresses_WT_ht+0x17123, %r15
nop
nop
cmp %rbp, %rbp
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r12
nop
and $31429, %r15
lea addresses_D_ht+0x10ec9, %rsi
lea addresses_UC_ht+0x2f23, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $43, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1b0f7, %rcx
clflush (%rcx)
sub $46939, %r12
mov (%rcx), %r9
nop
nop
nop
nop
nop
xor $13228, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi

// Store
mov $0x24e5fb0000000523, %rax
nop
nop
nop
sub $31683, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_US+0x1450b, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%rdi)
nop
nop
nop
sub $2034, %rax

// Load
lea addresses_WT+0x110e3, %r10
nop
nop
nop
nop
nop
add $40693, %r15
mov (%r10), %rdi
nop
nop
nop
cmp $59503, %rdi

// Store
lea addresses_WT+0x168a3, %r15
nop
and %rax, %rax
movb $0x51, (%r15)
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_PSE+0x12123, %r10
dec %r12
mov (%r10), %di
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'33': 14}
33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
