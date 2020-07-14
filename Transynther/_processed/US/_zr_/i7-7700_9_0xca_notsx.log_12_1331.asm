.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10531, %rsi
lea addresses_WC_ht+0xafd6, %rdi
clflush (%rdi)
nop
add $11493, %rax
mov $98, %rcx
rep movsb
nop
add $22899, %r14
lea addresses_UC_ht+0x173d6, %r11
clflush (%r11)
add %rdi, %rdi
mov (%r11), %si
nop
dec %r14
lea addresses_UC_ht+0x188d6, %rcx
nop
nop
dec %r14
mov (%rcx), %eax
nop
xor $44658, %rdi
lea addresses_WT_ht+0x2eb6, %rsi
nop
nop
and %rdi, %rdi
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x1a176, %rdi
nop
nop
and $32800, %rsi
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
add $2647, %r11
lea addresses_D_ht+0xcbd6, %rsi
lea addresses_WC_ht+0x18e96, %rdi
nop
nop
dec %r11
mov $24, %rcx
rep movsl
nop
nop
nop
add $54932, %rcx
lea addresses_A_ht+0x1da2e, %r14
cmp $36532, %r13
mov (%r14), %cx
nop
nop
nop
cmp $63940, %r13
lea addresses_A_ht+0x29d6, %rcx
nop
nop
nop
nop
nop
and $23182, %r14
mov (%rcx), %esi
nop
add $18190, %r11
lea addresses_WC_ht+0x14560, %rsi
lea addresses_WT_ht+0x13c56, %rdi
nop
nop
nop
nop
xor $44949, %r8
mov $109, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $11018, %rsi
lea addresses_normal_ht+0x1ebd6, %rdi
clflush (%rdi)
nop
nop
and $42191, %r8
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r14
xor %r11, %r11
lea addresses_UC_ht+0xe7f4, %rsi
lea addresses_D_ht+0x10d36, %rdi
nop
nop
inc %r11
mov $103, %rcx
rep movsl
nop
nop
nop
and $50326, %rdi
lea addresses_UC_ht+0x9d7e, %rsi
lea addresses_A_ht+0x1cbd6, %rdi
clflush (%rsi)
nop
nop
nop
add $55577, %r13
mov $61, %rcx
rep movsb
nop
add %r11, %r11
lea addresses_normal_ht+0x57d6, %rsi
nop
nop
nop
add %r13, %r13
mov (%rsi), %edi
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x600a, %rsi
nop
add %r11, %r11
mov (%rsi), %rax
nop
nop
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rdi

// Store
lea addresses_PSE+0xfd6, %r15
nop
nop
nop
nop
nop
add $25057, %r14
movl $0x51525354, (%r15)
nop
nop
nop
nop
and $26937, %r10

// Faulty Load
lea addresses_US+0x137d6, %r12
nop
nop
nop
nop
cmp $63544, %r15
mov (%r12), %r14d
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
