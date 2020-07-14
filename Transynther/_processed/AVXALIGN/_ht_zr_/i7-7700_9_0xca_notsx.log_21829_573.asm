.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1786a, %rsi
lea addresses_WC_ht+0x3cc2, %rdi
nop
nop
nop
nop
inc %r9
mov $114, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0xd30, %rsi
lea addresses_normal_ht+0x19b30, %rdi
clflush (%rdi)
nop
nop
and %r15, %r15
mov $53, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x33d0, %r12
nop
nop
nop
dec %r11
movb $0x61, (%r12)
nop
nop
nop
sub $54027, %r11
lea addresses_A_ht+0x7d30, %rsi
lea addresses_WC_ht+0x14d30, %rdi
add %r12, %r12
mov $106, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $47515, %rdi
lea addresses_normal_ht+0x16170, %r9
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x854, %rdx
nop
nop
nop
nop
nop
sub $30327, %r8
movb (%rdx), %r12b
nop
nop
nop
nop
and $27309, %r15

// Faulty Load
lea addresses_PSE+0x2530, %r12
nop
nop
nop
nop
nop
and $30462, %rbx
vmovntdqa (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 48, '45': 10859, '44': 10921, '49': 1}
00 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 00 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 00 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45
*/
