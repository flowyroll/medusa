.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rdi
push %rsi
lea addresses_D_ht+0x4fbe, %r12
nop
nop
nop
nop
nop
add %r11, %r11
mov (%r12), %r15
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x1624e, %rsi
nop
nop
nop
nop
dec %rdi
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
xor $8630, %r15
lea addresses_normal_ht+0x954e, %rdi
nop
nop
nop
nop
nop
sub $18607, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x1822e, %rbp
nop
nop
nop
sub %r8, %r8
movw $0x6162, (%rbp)
nop
nop
nop
cmp $12128, %rdi
lea addresses_A_ht+0x15b4e, %r11
nop
and $51936, %r12
mov (%r11), %rsi
nop
inc %r15
lea addresses_WC_ht+0xf2ce, %rsi
and %r11, %r11
movb (%rsi), %r8b
and $22699, %rsi
lea addresses_A_ht+0x139c2, %r8
clflush (%r8)
xor $4121, %r11
mov (%r8), %rsi
xor $47746, %rbp
lea addresses_WT_ht+0x157a6, %r8
nop
nop
nop
nop
nop
cmp $19317, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
and $0xffffffffffffffc0, %r8
vmovntdq %ymm4, (%r8)
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x2d7e, %rsi
nop
nop
nop
nop
nop
dec %r12
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x1ba76, %rsi
add %r11, %r11
mov (%rsi), %r8w
nop
nop
nop
nop
nop
xor $37157, %rdi
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbx

// Faulty Load
lea addresses_normal+0x2d4e, %r10
nop
xor $21278, %rax
movntdqa (%r10), %xmm7
vpextrq $1, %xmm7, %r12
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'45': 9704, '44': 12125}
44 44 45 45 45 45 44 44 44 44 44 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 44 45 45 44 44 45 44 44 44 44 45 44 44 44 44 45 45 45 44 45 44 45 44 44 45 44 45 44 45 45 44 44 45 44 45 45 44 45 44 44 44 45 45 45 44 45 44 45 45 44 44 44 45 45 44 45 45 45 44 44 45 44 44 45 44 45 45 44 44 44 45 44 44 44 45 45 44 45 44 44 44 44 44 44 44 44 45 44 45 45 45 44 44 45 44 45 45 45 45 45 44 44 44 45 45 44 45 45 44 45 44 45 45 45 45 44 44 44 45 44 44 45 44 44 44 44 45 45 44 44 45 44 44 45 45 45 44 45 45 44 45 44 44 45 45 44 45 45 45 45 44 44 44 45 45 44 44 45 44 44 45 45 45 44 44 45 44 45 44 44 45 45 45 44 45 44 45 44 44 44 44 44 44 44 45 44 45 44 44 44 45 45 44 45 45 45 44 45 45 45 44 45 44 44 45 45 44 44 44 45 44 44 44 44 44 44 44 45 44 44 45 44 44 44 45 44 44 44 44 45 44 44 45 44 45 44 44 44 45 45 44 44 45 44 45 45 44 45 45 44 45 44 44 44 45 45 44 45 44 44 44 44 45 44 44 45 44 45 45 44 44 44 44 44 44 45 44 44 44 45 44 45 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 45 45 45 45 45 45 44 45 45 45 45 44 44 45 45 44 45 45 44 45 44 44 44 44 45 44 44 44 44 44 44 44 45 44 45 44 45 44 44 44 45 44 44 45 44 45 45 45 45 45 45 44 45 45 44 45 45 44 44 44 44 45 45 44 45 45 45 45 45 45 45 44 44 45 44 45 44 44 45 44 45 45 45 45 44 45 45 44 44 45 45 44 45 44 45 45 45 45 44 45 44 45 44 45 45 45 45 44 45 45 44 44 45 44 45 44 44 44 44 44 44 45 44 45 44 44 44 45 44 45 44 44 44 45 44 44 44 45 44 44 45 45 45 45 44 45 45 45 44 44 45 44 45 45 45 45 45 44 44 44 44 44 45 45 44 45 44 44 44 45 45 44 44 44 45 45 45 44 44 44 44 45 45 45 44 45 44 44 44 45 45 44 44 45 45 44 44 44 45 45 44 45 44 45 44 45 44 45 44 45 45 44 44 44 44 45 44 45 44 44 44 44 44 44 45 45 44 44 44 45 44 44 44 44 44 45 44 44 45 45 44 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 45 44 44 44 44 45 44 44 45 44 44 45 44 44 44 45 45 45 44 44 45 44 44 44 44 44 44 44 45 44 45 45 44 45 45 44 44 45 44 45 44 45 44 45 44 44 44 44 45 44 45 44 45 44 44 44 44 45 44 45 45 45 45 44 44 44 45 44 44 44 44 44 44 44 44 45 45 44 44 45 45 44 44 45 44 44 45 44 45 44 44 44 45 44 44 45 45 44 45 44 44 45 44 44 44 45 44 44 44 44 44 45 45 44 44 45 44 45 45 44 44 45 45 44 44 44 45 45 44 45 45 45 44 45 45 44 44 45 45 45 45 45 44 44 45 44 45 45 45 44 44 44 44 44 45 45 44 44 44 44 45 44 44 45 44 45 45 45 45 44 45 45 44 44 44 44 45 44 44 45 45 44 44 45 45 44 44 44 44 44 44 44 45 44 45 44 44 44 45 45 45 44 44 44 45 44 45 44 44 45 44 44 44 45 45 44 45 44 44 44 45 44 44 44 44 45 45 45 45 45 44 44 44 44 44 45 44 45 45 44 44 44 44 44 45 44 45 44 45 44 45 44 45 45 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 45 44 45 45 44 44 44 45 44 45 44 44 44 44 44 44 45 44 45 45 44 44 45 44 45 44 45 45 45 45 44 45 44 44 44 44 45 45 44 44 45 45 45 44 44 44 45 44 45 45 45 45 44 45 45 44 45 44 45 44 44 44 44 45 44 44 45 44 44 45 45 44 44 44 45 45 44 45 44 45 45 45 45 44 44 45 44 44 44 45 44 45 44 45 44 44 44 45 44 44 45 44 44 45 45 44 44 44 45 45 45 45 45 44 44 45 45 45 45 45 44 44 45 44 44 45 44 44 45 44 44 45 45 44 45 44 45 44 45 44 45 44 44 45 44 44
*/
