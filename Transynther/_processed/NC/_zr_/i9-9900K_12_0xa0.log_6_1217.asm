.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x716f, %rsi
lea addresses_WT_ht+0x169c9, %rdi
nop
nop
nop
nop
sub $42558, %rdx
mov $10, %rcx
rep movsl
nop
add %r14, %r14
lea addresses_A_ht+0x19c7f, %rbx
nop
nop
nop
xor $13339, %rsi
movb (%rbx), %r14b
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_PSE+0x55af, %r12
nop
nop
nop
nop
cmp %rcx, %rcx
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rdx
nop
xor $59350, %rdx

// Store
mov $0x2007690000000cef, %rax
nop
nop
nop
nop
inc %rbp
movl $0x51525354, (%rax)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r12
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_UC+0x130cf, %rax
nop
and %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rax)
nop
nop
xor %rdi, %rdi

// Store
mov $0x12d4e100000004ef, %rdi
nop
nop
nop
nop
add $25296, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovaps %ymm2, (%rdi)
nop
nop
nop
inc %rdi

// Store
lea addresses_WC+0x17bc1, %rdx
add %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
add $13226, %rbp

// Store
lea addresses_D+0x175c7, %rcx
nop
inc %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
nop
dec %rbp

// Faulty Load
mov $0x4f435200000004ef, %rax
nop
nop
xor %rbp, %rbp
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'00': 6}
00 00 00 00 00 00
*/
