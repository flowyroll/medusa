.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_normal+0x1cc52, %rbp
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
and %r12, %r12

// Store
lea addresses_UC+0x1fe52, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub $59453, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
mov $0xc9e, %rbx
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
cmp %rax, %rax

// Store
lea addresses_RW+0x12938, %r13
nop
nop
inc %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movaps %xmm1, (%r13)
sub %rbp, %rbp

// Load
lea addresses_normal+0x1145a, %r13
nop
sub %rbp, %rbp
mov (%r13), %rbx
add $56423, %rbp

// Faulty Load
lea addresses_UC+0xb452, %r11
nop
nop
add $48311, %rax
mov (%r11), %cx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': True, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 3}
00 00 00
*/
