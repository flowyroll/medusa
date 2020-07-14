.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbx
push %rdi
lea addresses_A_ht+0x12095, %r9
clflush (%r9)
nop
nop
nop
and $1322, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
sub $39779, %rbx
pop %rdi
pop %rbx
pop %r9
pop %r8
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
lea addresses_D+0x1ce95, %rsi
mov $0xc63, %rdi
nop
nop
cmp $51661, %r10
mov $6, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi

// Store
mov $0x4345c80000000895, %rsi
nop
nop
nop
nop
nop
add $35566, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
xor $35810, %rsi

// Store
lea addresses_RW+0x1a495, %r8
nop
nop
nop
nop
cmp $52125, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r10
nop
nop
sub $3688, %r8

// Faulty Load
lea addresses_D+0x1ce95, %rsi
nop
nop
nop
nop
dec %rbp
mov (%rsi), %r12d
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
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
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'36': 19}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
