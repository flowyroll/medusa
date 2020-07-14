.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15a77, %rbx
nop
nop
nop
sub $56320, %r15
mov (%rbx), %bp
nop
nop
add $30673, %r9
lea addresses_WC_ht+0x10037, %rsi
lea addresses_UC_ht+0x8077, %rdi
nop
inc %r10
mov $80, %rcx
rep movsb
nop
nop
nop
nop
and $46889, %rcx
lea addresses_A_ht+0x19b17, %rsi
cmp $52837, %r15
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x10137, %r10
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x6162, (%r10)
nop
nop
nop
nop
add $19006, %rdi
lea addresses_UC_ht+0x124a8, %rbx
nop
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x2ccb, %rsi
lea addresses_WT_ht+0x13ab7, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $9, %rcx
rep movsb
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x1ba4b, %rsi
lea addresses_D_ht+0x1e3b7, %rdi
nop
nop
nop
dec %r15
mov $41, %rcx
rep movsq
nop
xor $15308, %r10
lea addresses_WC_ht+0x63b7, %rsi
lea addresses_D_ht+0xc1b7, %rdi
nop
nop
cmp %r15, %r15
mov $38, %rcx
rep movsq
nop
and $60704, %rbx
lea addresses_A_ht+0xadb7, %rsi
lea addresses_WT_ht+0xa5e7, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $31, %rcx
rep movsl
nop
xor $53052, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rdi

// Store
lea addresses_PSE+0x304c, %rax
nop
and %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovntdq %ymm7, (%rax)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_RW+0xf6b7, %r15
nop
nop
nop
nop
cmp $9609, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
add %r9, %r9

// Load
lea addresses_WC+0x8c8f, %r15
inc %r11
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
sub $31697, %r13

// Store
mov $0xe46a70000000bb7, %rax
nop
nop
inc %r11
movl $0x51525354, (%rax)
nop
nop
nop
nop
inc %r13

// Faulty Load
mov $0xe46a70000000bb7, %r11
nop
nop
nop
nop
dec %rdi
movb (%r11), %r15b
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'54': 357, '00': 32, 'c0': 6}
54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 c0 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 00 54 54 00 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 c0 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 c0 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 c0 54 54 54 54 54 54 54 54 54 54 54 54 54 c0 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 c0 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54
*/
