.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf119, %rsi
lea addresses_A_ht+0xf879, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $47, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x1d789, %r12
inc %rcx
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
inc %r12
lea addresses_WT_ht+0x15119, %r11
nop
dec %r9
movb (%r11), %cl
nop
nop
nop
nop
nop
add $57566, %rcx
lea addresses_A_ht+0x1a3bd, %rsi
lea addresses_normal_ht+0x118d9, %rdi
nop
inc %rbp
mov $80, %rcx
rep movsl
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x6f19, %rsi
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%rsi), %dl
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xdd19, %rcx
nop
nop
nop
nop
nop
xor $18336, %r9
movw $0x6162, (%rcx)
add %rsi, %rsi
lea addresses_WC_ht+0x6919, %rdi
nop
nop
xor $21952, %r9
mov (%rdi), %r12d
nop
nop
inc %rdi
lea addresses_UC_ht+0x6619, %rdx
clflush (%rdx)
nop
nop
and %rbp, %rbp
mov (%rdx), %esi
nop
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rdi
push %rdx

// Store
lea addresses_WT+0x1c519, %rdx
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovaps %ymm5, (%rdx)
nop
nop
nop
xor %rdx, %rdx

// Load
lea addresses_WC+0x182c9, %r8
nop
nop
nop
nop
sub %r15, %r15
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
dec %r13

// Store
lea addresses_WC+0xfa99, %r11
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%r11)
nop
nop
nop
add $23463, %rdi

// Faulty Load
lea addresses_US+0x10119, %rdi
nop
nop
add $37411, %r8
movaps (%rdi), %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 1054, '45': 745, '48': 299}
45 00 00 00 48 45 00 00 45 00 00 00 00 45 00 45 45 00 00 45 48 00 48 48 00 00 48 00 45 00 00 00 45 00 45 00 00 45 00 00 00 45 45 00 00 48 48 00 48 00 00 00 00 45 45 00 00 45 45 45 00 45 00 00 00 00 00 00 00 00 45 45 45 48 00 00 00 00 45 00 00 45 00 00 00 45 45 45 45 00 45 00 45 45 45 00 45 48 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 45 00 45 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 45 45 00 00 00 00 48 45 45 48 45 45 45 45 45 48 45 00 45 48 00 00 00 00 00 48 45 00 00 00 45 45 00 45 45 45 00 00 45 00 00 45 00 45 45 00 00 00 00 00 45 45 00 45 45 00 45 00 00 00 45 45 00 45 45 00 48 00 00 48 45 00 48 45 00 48 00 00 45 45 45 45 48 45 45 00 45 48 48 48 45 00 00 00 00 00 45 00 48 45 00 45 00 00 00 00 45 00 00 00 00 00 48 00 48 45 45 00 00 45 48 45 00 00 00 00 00 45 00 00 00 00 00 45 00 45 48 45 00 00 00 00 45 00 45 00 00 45 00 48 00 45 48 45 45 45 00 45 48 48 45 00 00 00 45 00 45 45 00 45 48 00 45 00 45 00 45 00 45 00 00 00 45 45 00 00 00 48 00 45 45 00 48 45 48 45 00 45 45 48 45 45 45 00 45 45 00 00 45 00 00 45 45 00 45 48 00 45 00 45 48 45 48 45 45 00 00 00 45 00 00 48 00 48 00 48 00 45 00 45 45 00 48 00 45 00 48 48 00 00 00 00 45 45 48 45 45 00 45 00 48 45 45 00 00 00 00 00 45 00 45 00 45 45 00 45 45 45 48 45 45 45 48 00 00 48 00 00 00 00 00 00 00 00 45 00 00 00 45 45 48 48 45 00 48 45 45 00 45 00 00 45 00 48 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 00 45 00 00 00 48 00 48 00 45 00 45 00 00 48 00 48 48 45 45 00 00 48 00 00 45 45 45 00 45 00 45 00 00 45 00 48 00 48 45 00 45 45 45 48 00 00 45 00 00 48 00 00 00 48 48 45 48 00 45 48 00 00 48 00 45 45 48 45 45 00 00 45 00 00 00 45 00 48 45 48 00 00 00 00 00 45 00 00 48 00 00 00 45 45 00 45 48 00 00 48 48 00 45 00 45 00 00 45 00 48 45 00 00 00 45 00 48 00 00 48 00 00 00 00 45 45 45 45 45 00 00 00 00 45 48 00 00 48 45 45 00 45 00 00 00 45 45 00 00 00 00 00 00 48 00 00 45 45 00 45 00 00 00 45 45 00 00 45 48 45 00 00 48 00 48 00 00 00 00 45 00 48 00 00 48 00 00 00 00 00 00 00 48 00 45 00 45 45 00 48 00 45 00 48 00 00 00 00 00 48 45 00 45 00 00 48 00 45 45 45 48 00 48 00 48 00 45 00 00 00 48 00 45 48 48 48 45 45 00 00 00 48 45 48 00 48 00 00 48 00 48 48 48 00 00 00 00 45 00 00 00 48 45 45 45 45 48 45 00 48 00 00 48 48 45 48 00 00 45 45 00 45 45 48 45 45 00 00 45 00 48 45 45 45 45 45 00 00 00 45 00 45 00 48 00 00 45 48 00 00 00 00 45 00 45 48 00 45 00 00 45 00 45 00 00 45 48 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 45 45 00 45 45 00 00 00 45 00 00 00 00 00 48 00 00 45 00 00 45 00 45 45 00 00 45 48 00 00 45 48 45 45 00 00 00 00 00 00 48 45 45 00 00 45 00 45 00 00 00 45 00 00 45 00 00 00 45 48 45 45 45 00 48 48 00 00 45 00 00 45 48 00 00 48 45 45 45 00 00 45 00 00 45 45 00 00 00 48 48 48 00 45 00 00 00 45 45 00 00 48 45 45 00 48 48 00 48 00 48 00 45 00 00 00 45 45 00 00 45 45 00 45 45 00 45 00 45 00 00 45 45 45 00 00 45 00 45 45 00 45 00 45 45 48 45 00 00 45 48 45 00 48 00 48 00 00 45 00 00 45 00 45 00 45 48 48 45 00 45 45 00 00 00 45 48 00 00 48 45 45 45 45
*/
