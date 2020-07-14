.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x9db4, %rdx
nop
cmp $20715, %rsi
movl $0x51525354, (%rdx)
nop
add %rbp, %rbp

// Load
mov $0x1f2ecc0000000740, %r12
clflush (%r12)
dec %rbx
mov (%r12), %si
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_WC+0x18034, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor $12916, %r14
mov (%rdx), %ebp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 1}
00
*/
