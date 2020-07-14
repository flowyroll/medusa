.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x211ce10000000ae1, %r13
cmp $29273, %rbx
movl $0x51525354, (%r13)

// Exception!!!
mov (0), %rdx
xor $40440, %r13

// Store
lea addresses_PSE+0x137e1, %r8
nop
nop
nop
nop
nop
cmp $23073, %rbp
movl $0x51525354, (%r8)
nop
nop
add $22047, %rbp

// Store
lea addresses_A+0x2de1, %rbx
nop
and $19382, %r13
movb $0x51, (%rbx)
dec %r10

// Store
lea addresses_A+0x169e1, %r12
xor $12877, %rdx
movb $0x51, (%r12)
nop
nop
nop
cmp $24607, %rdx

// REPMOV
lea addresses_WC+0x16e2f, %rsi
lea addresses_D+0x2671, %rdi
and %r13, %r13
mov $102, %rcx
rep movsq
nop
nop
nop
nop
lfence

// Store
lea addresses_WT+0x1f3e1, %r13
xor %r12, %r12
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor $59421, %rbp

// Store
lea addresses_UC+0x127e1, %r8
nop
nop
nop
nop
add $4405, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r8)
dec %rsi

// Store
lea addresses_D+0x1cc61, %rbp
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
and $23708, %rdx

// Faulty Load
lea addresses_normal+0x1e3e1, %rsi
nop
cmp %rcx, %rcx
movb (%rsi), %bl
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 1}
00
*/
