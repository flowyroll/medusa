.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xeed, %rbx
nop
nop
sub $24549, %r15
movb (%rbx), %r8b
nop
add $46841, %rsi
lea addresses_normal_ht+0x7b6d, %r11
inc %r9
mov (%r11), %r14d
nop
inc %r8
lea addresses_D_ht+0x1d847, %rsi
nop
nop
add $39613, %r14
mov (%rsi), %r15w
nop
nop
nop
sub $54643, %rbx
lea addresses_normal_ht+0x1d269, %r14
nop
nop
add %r11, %r11
mov (%r14), %ebx
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x10e6d, %rsi
lea addresses_A_ht+0x4e2d, %rdi
nop
add $8654, %r14
mov $30, %rcx
rep movsl
nop
nop
nop
nop
and $3212, %rcx
lea addresses_D_ht+0xf405, %r8
nop
add $7717, %r14
movl $0x61626364, (%r8)
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0xdbcd, %rsi
lea addresses_normal_ht+0x3ecd, %rdi
nop
dec %r9
mov $26, %rcx
rep movsl
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x134d, %r8
nop
nop
nop
nop
nop
and $44905, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%r8)
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0xe86d, %rsi
lea addresses_UC_ht+0xbced, %rdi
nop
nop
nop
xor $41036, %r8
mov $115, %rcx
rep movsw
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx

// Store
mov $0x1b07fc0000000e6d, %r14
nop
nop
nop
nop
nop
cmp $14821, %rcx
movl $0x51525354, (%r14)
nop
nop
nop
cmp $34674, %r11

// Store
lea addresses_A+0xc66d, %r14
nop
nop
nop
nop
sub $19887, %r8
mov $0x5152535455565758, %r11
movq %r11, (%r14)

// Exception!!!
nop
nop
nop
mov (0), %rcx
nop
add %rbp, %rbp

// Store
lea addresses_A+0x1296d, %r8
nop
cmp %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, (%r8)
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_RW+0x6e6d, %r12
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
inc %rbp

// Faulty Load
mov $0x1b07fc0000000e6d, %r12
add %rax, %rax
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 2, '46': 2}
00 46 46 00
*/
