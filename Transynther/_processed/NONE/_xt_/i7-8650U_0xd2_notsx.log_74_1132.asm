.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rdi
push %rsi
lea addresses_A_ht+0x1735e, %r10
nop
nop
cmp %r13, %r13
movups (%r10), %xmm1
vpextrq $1, %xmm1, %rdi
nop
xor %r15, %r15
lea addresses_UC_ht+0x93ae, %r14
add $54421, %rsi
movb (%r14), %r15b
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1ee2e, %rdx
inc %rax
movw $0x5152, (%rdx)
nop
nop
inc %r12

// Faulty Load
lea addresses_RW+0x11e6e, %rdi
nop
nop
nop
add %rbx, %rbx
mov (%rdi), %r12w
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'32': 74}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
