.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
lea addresses_UC_ht+0x1dcf5, %r9
nop
nop
nop
nop
xor $64582, %rax
mov (%r9), %r10
nop
nop
nop
nop
nop
and %rax, %rax
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rdx

// Store
lea addresses_RW+0xadf5, %r9
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
xor $40117, %r13

// Store
mov $0x2a5, %r10
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovaps %ymm6, (%r10)
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_D+0x1eef5, %r14
nop
dec %r8
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': True, 'NT': False}}
{'36': 12}
36 36 36 36 36 36 36 36 36 36 36 36
*/
