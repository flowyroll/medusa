.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rcx
lea addresses_D_ht+0x1864b, %rax
nop
nop
nop
nop
nop
cmp $61538, %rcx
mov (%rax), %r15
nop
nop
nop
nop
dec %r10
pop %rcx
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rdx

// Store
lea addresses_A+0xcbfb, %r12
clflush (%r12)
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r12)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x290b, %r12
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x51525354, (%r12)
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_normal+0x1884b, %r14
nop
inc %r15
mov (%r14), %rbp
nop
nop
nop
nop
xor $33012, %rbx

// Load
lea addresses_D+0x1a15f, %r15
nop
nop
nop
nop
nop
add $9910, %r13
movntdqa (%r15), %xmm5
vpextrq $1, %xmm5, %rdx
dec %rbx

// Store
mov $0x97b, %rdx
and %r15, %r15
movb $0x51, (%rdx)
nop
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_WC+0x1f14b, %rdx
cmp $49, %r12
mov (%rdx), %r15
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_RW+0x1a64b, %rbx
clflush (%rbx)
nop
nop
nop
and $19784, %r14
movb (%rbx), %r13b
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'32': 10}
32 32 32 32 32 32 32 32 32 32
*/
