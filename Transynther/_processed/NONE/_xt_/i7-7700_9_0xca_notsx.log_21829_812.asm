.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x10116, %r14
nop
nop
nop
sub $1079, %rbp
mov $0x6162636465666768, %r11
movq %r11, (%r14)
nop
nop
add $62555, %rcx
lea addresses_WT_ht+0x6296, %rsi
lea addresses_WT_ht+0xcc6, %rdi
clflush (%rdi)
nop
nop
xor $34174, %rbx
mov $100, %rcx
rep movsq
nop
nop
nop
and $11421, %rbx
lea addresses_A_ht+0x3516, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x1ad16, %rsi
lea addresses_WC_ht+0x16026, %rdi
nop
nop
and %r12, %r12
mov $28, %rcx
rep movsb
nop
and $28109, %rcx
lea addresses_WT_ht+0x18b16, %rcx
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rcx
movntdq %xmm4, (%rcx)
xor $37640, %rcx
lea addresses_WC_ht+0x226e, %rsi
lea addresses_UC_ht+0xd55e, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
add %r11, %r11
mov $87, %rcx
rep movsb
nop
inc %rbp
lea addresses_UC_ht+0x13b16, %rbp
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%rbp)
sub $11833, %rbx
lea addresses_A_ht+0x2916, %rsi
lea addresses_A_ht+0x1aa16, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $23, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $28179, %r14
lea addresses_WT_ht+0xc74a, %rsi
lea addresses_WT_ht+0x9516, %rdi
dec %r12
mov $93, %rcx
rep movsq
nop
nop
sub $24722, %rsi
lea addresses_UC_ht+0x147b6, %r12
nop
nop
nop
nop
and $40725, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x1a1d6, %rsi
lea addresses_UC_ht+0xb616, %rdi
clflush (%rdi)
nop
nop
dec %rbp
mov $66, %rcx
rep movsw
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x16916, %rsi
nop
nop
add $53921, %rdi
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rbx
and $53536, %r14
lea addresses_A_ht+0xb16, %rsi
lea addresses_UC_ht+0x1ae99, %rdi
nop
nop
nop
and $4154, %rbx
mov $93, %rcx
rep movsb
nop
nop
xor %r14, %r14
lea addresses_A_ht+0xb056, %r12
nop
nop
nop
nop
dec %r14
mov (%r12), %ebp
nop
xor $3785, %rbp
lea addresses_A_ht+0x16856, %rsi
nop
nop
nop
nop
nop
and $39528, %r11
mov (%rsi), %ebx
nop
nop
cmp $12325, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi

// Faulty Load
lea addresses_normal+0xd16, %rax
xor %rcx, %rcx
movb (%rax), %r8b
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
