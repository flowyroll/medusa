.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rcx
push %rsi
lea addresses_D_ht+0x16a05, %rsi
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
inc %r13
pop %rsi
pop %rcx
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_US+0x15711, %rbp
clflush (%rbp)
nop
nop
nop
nop
add $64520, %r10
mov (%rbp), %rsi
and $46952, %rdx

// Store
lea addresses_A+0x5a11, %r15
nop
nop
nop
nop
add $28624, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r15)
nop
add %r10, %r10

// Store
mov $0x1f98ce0000000d11, %rbp
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_US+0x5211, %r15
nop
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_A+0x19311, %r12
nop
nop
nop
and $12799, %r15
mov (%r12), %esi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'00': 1}
00
*/
