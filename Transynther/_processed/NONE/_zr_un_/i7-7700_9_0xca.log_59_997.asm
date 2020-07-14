.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0xabe, %rbp
nop
nop
nop
nop
nop
inc %rax
movl $0x51525354, (%rbp)
add %rbp, %rbp

// Store
lea addresses_normal+0xc63e, %r14
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
cmp $3856, %rbx

// Store
lea addresses_normal+0x13716, %rbp
add %rbx, %rbx
movw $0x5152, (%rbp)

// Exception!!!
nop
nop
mov (0), %rdx
nop
inc %r14

// Store
lea addresses_A+0x387e, %rsi
nop
nop
and %r14, %r14
movl $0x51525354, (%rsi)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_UC+0xc48e, %r14
nop
nop
nop
cmp $27934, %rdi
movl $0x51525354, (%r14)
nop
sub $46407, %rdx

// Store
mov $0xa1e, %rdi
inc %r14
movw $0x5152, (%rdi)
nop
add %rbp, %rbp

// Store
lea addresses_US+0xc55e, %rdi
nop
sub %rbp, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_WC+0xf6fe, %rbx
nop
nop
nop
nop
sub $41878, %rdx
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'d0': 13, '00': 46}
00 00 00 00 00 00 00 00 00 d0 00 00 d0 00 00 00 d0 00 d0 00 00 00 00 00 00 00 00 d0 00 00 d0 00 00 00 d0 00 00 00 00 00 d0 d0 00 d0 00 00 00 d0 00 d0 d0 00 00 00 00 00 00 00 00
*/
