.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0xea4a, %rsi
dec %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rsi)
and %rsi, %rsi

// Store
lea addresses_PSE+0x18e4a, %rax
nop
nop
cmp $48697, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_D+0x1748a, %rax
dec %rsi
movw $0x5152, (%rax)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_WC+0x554a, %r13
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
cmp $7826, %r13

// REPMOV
lea addresses_PSE+0x116c6, %rsi
lea addresses_A+0x14f4a, %rdi
nop
and %rbx, %rbx
mov $123, %rcx
rep movsw
nop
nop
nop
nop
nop
add $4920, %r9

// Load
lea addresses_A+0x224a, %rsi
nop
cmp $54044, %rbx
mov (%rsi), %ecx
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_US+0x5a4a, %rax
nop
xor %rsi, %rsi
movb (%rax), %r13b
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 1}
00
*/
