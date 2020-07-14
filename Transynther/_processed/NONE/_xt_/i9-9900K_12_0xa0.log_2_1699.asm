.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rdx
push %rsi
lea addresses_A_ht+0x9097, %r9
nop
nop
nop
add %r11, %r11
movb $0x61, (%r9)
nop
nop
add $57278, %r12
lea addresses_UC_ht+0x15097, %r12
nop
nop
nop
nop
inc %r11
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
cmp $57375, %r9
lea addresses_WT_ht+0x1d597, %rbp
nop
xor %rdx, %rdx
movb $0x61, (%rbp)
xor $3847, %rsi
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_US+0x12c97, %r12
nop
nop
xor %rdi, %rdi
movw $0x5152, (%r12)
nop
nop
sub $4052, %r8

// Load
lea addresses_RW+0x4397, %r9
nop
cmp %r10, %r10
movups (%r9), %xmm7
vpextrq $1, %xmm7, %r8
nop
add %r8, %r8

// Faulty Load
lea addresses_normal+0x2497, %r9
nop
nop
and $50235, %r11
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'34': 2}
34 34
*/
