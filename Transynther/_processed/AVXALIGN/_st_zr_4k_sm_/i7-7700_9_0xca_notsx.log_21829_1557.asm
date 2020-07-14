.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rsi
lea addresses_normal_ht+0xb396, %rcx
nop
nop
cmp $12547, %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
add $4654, %r9
lea addresses_A_ht+0x4836, %rsi
nop
nop
nop
and $18822, %rbp
movl $0x61626364, (%rsi)
nop
cmp $58105, %rsi
lea addresses_normal_ht+0x1396, %rcx
and %r8, %r8
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1dc7a, %rsi
nop
nop
nop
cmp $16386, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x112c6, %r9
and $44906, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r9)
nop
nop
add %r9, %r9

// REPMOV
lea addresses_UC+0x11716, %rsi
lea addresses_D+0x2d96, %rdi
nop
nop
nop
nop
nop
add $29187, %rdx
mov $10, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11

// REPMOV
lea addresses_WC+0x9296, %rsi
lea addresses_D+0x3e16, %rdi
nop
nop
xor %r14, %r14
mov $73, %rcx
rep movsq
nop
nop
nop
dec %r14

// Store
lea addresses_WC+0x1ff96, %rdi
nop
nop
nop
xor %r9, %r9
movb $0x51, (%rdi)
add %rdx, %rdx

// Load
lea addresses_A+0xff96, %rsi
sub %rdi, %rdi
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
and $44277, %r11

// Load
mov $0x6a89ed0000000d96, %rdx
nop
nop
add $63419, %r9
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0x1ff96, %r11
nop
nop
nop
cmp $26760, %r9
movb $0x51, (%r11)
nop
nop
nop
nop
xor $30960, %rcx

// Store
lea addresses_RW+0xcd36, %r14
xor %rcx, %rcx
movb $0x51, (%r14)
xor $26476, %r14

// Faulty Load
lea addresses_WC+0x1ff96, %r11
nop
nop
and $50975, %rdi
movntdqa (%r11), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 2837, '51': 18844, '37': 148}
00 51 00 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 00 51 51 51 51 51 51 51 00 51 51 51 51 37 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 00 51 51 51 51 51 51 00 51 51 00 00 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 00 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 00 51 51 51 37 51 51 51 51 51 51 51 51 51 00 00 00 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 00 51 00 51 51 51 51 00 51 00 51 51 37 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 37 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 37 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 00 00 00 00 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 37 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 37 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 00 51 51 00 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 00 00 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 37 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 37 51 51 51 51 51 00 51 51 51 51 51 51 51
*/
