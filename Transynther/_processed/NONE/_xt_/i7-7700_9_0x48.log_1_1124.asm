.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Store
mov $0x384a560000000d8f, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%rdi)
nop
nop
cmp %r13, %r13

// Store
mov $0x50f, %rbp
nop
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
inc %rbp

// Store
lea addresses_RW+0x1d20f, %rbx
nop
nop
nop
nop
and $53909, %r14
movw $0x5152, (%rbx)
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_RW+0x1da0f, %r14
nop
nop
nop
nop
nop
inc %rax
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'32': 1}
32
*/
