.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rdi
push %rdx
lea addresses_UC_ht+0x39c1, %rdx
nop
nop
and %r10, %r10
mov (%rdx), %rdi
xor %rax, %rax
pop %rdx
pop %rdi
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %r8
push %r9

// Load
mov $0xccb0c00000008e0, %r10
nop
nop
nop
add %r12, %r12
mov (%r10), %r11
nop
xor $39457, %r9

// Store
lea addresses_A+0x19ac, %r15
nop
nop
nop
nop
xor $25272, %r8
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
nop
nop
nop
nop
add $18795, %r9

// Store
lea addresses_RW+0x111ac, %r10
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movaps %xmm0, (%r10)
inc %r14

// Faulty Load
lea addresses_A+0x19ac, %r15
nop
nop
nop
nop
nop
cmp $10133, %r8
mov (%r15), %r12d
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 83}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
