.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rdx
push %rsi

// Store
lea addresses_RW+0xd000, %r12
nop
nop
nop
and $38761, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
sub %r13, %r13

// Load
lea addresses_D+0x19f00, %r13
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%r13), %r8w
sub %r13, %r13

// Store
lea addresses_A+0x3a00, %r13
clflush (%r13)
nop
nop
cmp $33299, %rbx
movl $0x51525354, (%r13)
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_A+0xa200, %rbx
nop
nop
nop
cmp $28026, %r14
mov (%rbx), %r12w
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 1}
00
*/
