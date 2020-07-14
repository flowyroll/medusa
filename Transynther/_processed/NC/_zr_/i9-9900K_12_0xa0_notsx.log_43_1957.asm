.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
lea addresses_A_ht+0x46c0, %r13
nop
nop
nop
and %rax, %rax
movb (%r13), %cl
nop
nop
nop
nop
nop
xor $56260, %r12
lea addresses_UC_ht+0x192c0, %rbx
add %r10, %r10
movb (%rbx), %r15b
nop
cmp $53941, %r15
lea addresses_UC_ht+0x12a71, %rax
nop
nop
cmp $43496, %rbx
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
xor $53950, %r12
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1e8e8, %r12
nop
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%r12)
and %rdi, %rdi

// REPMOV
lea addresses_normal+0x186c0, %rsi
lea addresses_normal+0xe1b0, %rdi
nop
nop
nop
dec %r10
mov $112, %rcx
rep movsw
nop
nop
add %r12, %r12

// Store
lea addresses_A+0xeec0, %r12
nop
add $4741, %r10
movb $0x51, (%r12)
nop
nop
and $11774, %r10

// Store
lea addresses_RW+0x18a70, %r10
nop
xor $51652, %r14
movw $0x5152, (%r10)
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_PSE+0x81d0, %r14
sub %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_US+0xee6, %rdx
nop
sub $13918, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movntdq %xmm6, (%rdx)
nop
add $12377, %rdx

// Store
lea addresses_normal+0x9198, %rcx
sub $7331, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_A+0x5d0c, %rsi
nop
dec %r12
movb $0x51, (%rsi)
nop
nop
nop
dec %rcx

// Store
lea addresses_UC+0x1c6c0, %rdx
add $16769, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
cmp $34953, %r14

// Load
lea addresses_UC+0x64c0, %rdx
cmp $55292, %r12
mov (%rdx), %rdi
nop
inc %rsi

// Store
lea addresses_WC+0xcc88, %rdi
nop
xor $43537, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
mov $0x3725380000000ac0, %rdx
nop
nop
nop
inc %rdi
mov (%rdx), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'00': 43}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
