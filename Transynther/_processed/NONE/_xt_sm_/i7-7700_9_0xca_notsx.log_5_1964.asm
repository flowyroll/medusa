.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x472b, %r15
nop
nop
xor %r13, %r13
mov (%r15), %rdi
nop
nop
nop
dec %rdx
lea addresses_A_ht+0xf22b, %rsi
lea addresses_WC_ht+0x17e2b, %rdi
nop
nop
nop
inc %r14
mov $122, %rcx
rep movsl
nop
xor $39376, %r14
lea addresses_A_ht+0x1ec6b, %rsi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov (%rsi), %r15d
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x10819, %r15
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r15), %r13w
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xa82b, %rsi
lea addresses_normal_ht+0x43ab, %rdi
nop
nop
nop
nop
cmp $61221, %r8
mov $127, %rcx
rep movsw
cmp %rsi, %rsi
lea addresses_WC_ht+0x71cb, %rdi
nop
xor %r13, %r13
movb $0x61, (%rdi)
nop
nop
nop
add $21635, %r13
lea addresses_WC_ht+0x13e4f, %rdi
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rdi)
nop
add %rdx, %rdx
lea addresses_UC_ht+0xffbf, %rsi
lea addresses_WC_ht+0x12b29, %rdi
nop
nop
nop
nop
cmp $12335, %r14
mov $65, %rcx
rep movsq
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x19af, %r13
and %rsi, %rsi
mov (%r13), %r8w
and %r13, %r13
lea addresses_D_ht+0x5f2b, %rsi
lea addresses_UC_ht+0x62b, %rdi
clflush (%rdi)
inc %r13
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x1ec6f, %rcx
nop
nop
sub $64605, %r8
movb (%rcx), %r15b
nop
nop
nop
nop
nop
and $19824, %rdx
lea addresses_WC_ht+0x5c2b, %r8
nop
xor $21582, %r15
mov (%r8), %r13w
nop
nop
dec %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rbx

// Store
lea addresses_D+0x66ab, %r13
xor %r12, %r12
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_WT+0x110b, %rbx
nop
nop
nop
cmp $12177, %r11
movb $0x51, (%rbx)
add %r13, %r13

// Store
lea addresses_D+0x17edb, %rbp
nop
nop
nop
nop
nop
xor $15038, %r11
movb $0x51, (%rbp)
dec %r14

// Load
lea addresses_US+0x124a3, %rbp
cmp %r10, %r10
vmovntdqa (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_A+0x1c82b, %rbx
nop
nop
nop
nop
nop
xor $19944, %r13
movb $0x51, (%rbx)
nop
nop
nop
nop
cmp $15943, %rbp

// Faulty Load
lea addresses_A+0x1c82b, %r10
nop
nop
nop
and $15519, %rbp
mov (%r10), %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'51': 5}
51 51 51 51 51
*/
