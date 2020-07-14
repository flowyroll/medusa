.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x10ae8, %rdi
nop
nop
add $6762, %rbp
movb $0x61, (%rdi)
add $20519, %r11
lea addresses_WT_ht+0x70b6, %rsi
lea addresses_WC_ht+0x14723, %rdi
nop
nop
nop
nop
nop
cmp $24615, %rbp
mov $7, %rcx
rep movsl
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x1dc1e, %rsi
lea addresses_WT_ht+0x1681e, %rdi
nop
nop
nop
nop
and $34921, %r14
mov $40, %rcx
rep movsl
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x1bc1e, %r14
nop
dec %rcx
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
xor $65066, %rcx
lea addresses_WC_ht+0x1415e, %r14
nop
inc %rbp
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x5fe, %rbp
nop
nop
nop
nop
xor %rcx, %rcx
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
inc %r9
lea addresses_WT_ht+0xd84e, %rcx
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rcx)
dec %rcx
lea addresses_WC_ht+0x29e, %rcx
nop
nop
nop
cmp %rbp, %rbp
movl $0x61626364, (%rcx)
nop
inc %rdi
lea addresses_D_ht+0x1e01e, %rdi
nop
nop
nop
nop
nop
add $46424, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rdi)
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_UC+0x781e, %rbp
nop
nop
nop
nop
nop
xor $4903, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovntdq %ymm7, (%rbp)
nop
nop
and $5476, %rbp

// Load
lea addresses_normal+0xd8de, %rax
nop
and $5428, %rcx
mov (%rax), %r10w
nop
nop
nop
cmp %rax, %rax

// Load
lea addresses_UC+0xb57e, %r8
xor $33783, %r15
mov (%r8), %rcx
nop
nop
nop
nop
sub $31688, %r10

// Store
mov $0x2a6e54000000081e, %rbp
sub $1124, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
sub $956, %rbp

// Store
mov $0x891, %r15
nop
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub $64271, %rbp

// Store
lea addresses_UC+0x781e, %rcx
nop
nop
inc %r10
movb $0x51, (%rcx)
nop
nop
and %r10, %r10

// Store
lea addresses_US+0x95be, %rax
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movaps %xmm6, (%rax)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_UC+0x781e, %rbp
nop
nop
add $27042, %rcx
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': True, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'46': 100, '00': 19361, '40': 294, 'ff': 715, 'ee': 1, '48': 24, '9f': 244, '20': 202, '42': 688, '2b': 1, '3e': 1, '2a': 18, '7a': 59, '34': 20, '7b': 14, 'a5': 1, '72': 26, '08': 51, '8c': 1, 'd8': 5, '4b': 1, 'e6': 2}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 40 00 00 40 00 40 00 40 00 00 00 00 40 00 40 00 40 00 40 00 40 00 00 00 40 00 00 00 00 00 40 00 40 00 40 00 40 00 00 40 00 40 00 40 00 40 00 40 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 42 00 42 00 00 42 00 00 42 00 42 00 42 00 42 00 42 00 42 00 00 42 00 00 00 42 00 00 00 42 00 42 00 42 00 00 42 00 00 42 00 00 42 00 42 00 42 00 42 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 40 42 42 40 42 40 42 42 42 42 40 42 42 42 42 42 42 40 42 42 40 42 40 40 42 42 42 40 40 40 40 40 42 42 40 40 42 40 42 42 40 40 42 40 42 42 40 40 42 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 42 00 00 20 00 00 00 00 00 20 00 00 20 00 20 00 00 00 20 00 20 00 00 00 20 00 00 20 00 20 00 20 00 00 00 20 00 00 00 00 00 20 00 20 00 00 20 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
