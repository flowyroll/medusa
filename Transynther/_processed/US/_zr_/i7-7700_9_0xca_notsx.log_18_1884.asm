.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rsi
lea addresses_UC_ht+0x34e5, %r15
nop
dec %r14
mov (%r15), %rsi
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x10f96, %rsi
nop
nop
nop
add $13544, %rbx
mov (%rsi), %rcx
nop
nop
nop
nop
nop
and $18589, %rsi
lea addresses_A_ht+0xc0e5, %rsi
nop
nop
nop
nop
sub $27005, %r14
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
xor $59977, %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rax
push %rdi

// Store
lea addresses_D+0x15d81, %r14
nop
add $52100, %rdi
movb $0x51, (%r14)
nop
nop
dec %r8

// Store
lea addresses_D+0x1a0e5, %r8
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
sub $56634, %rax

// Load
lea addresses_D+0x1a6e5, %r14
nop
nop
nop
and %r12, %r12
mov (%r14), %r10w
and %rax, %rax

// Faulty Load
lea addresses_US+0x1c8e5, %r14
nop
dec %r8
mov (%r14), %r12
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
