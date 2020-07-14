.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xf2d8, %r8
nop
nop
sub %rbp, %rbp
mov (%r8), %rsi
nop
inc %r13
lea addresses_UC_ht+0x4e92, %rsi
lea addresses_WC_ht+0x1a8d8, %rdi
nop
nop
nop
nop
inc %r11
mov $32, %rcx
rep movsq
nop
nop
inc %r8
lea addresses_WC_ht+0x8c08, %rdi
nop
nop
nop
nop
and $61635, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
cmp $1469, %r13
lea addresses_WT_ht+0xf1ca, %rsi
lea addresses_normal_ht+0x16ad8, %rdi
clflush (%rdi)
dec %r8
mov $3, %rcx
rep movsl
nop
nop
inc %r13
lea addresses_WC_ht+0x1eed8, %rsi
lea addresses_WC_ht+0x136d8, %rdi
add %r8, %r8
mov $50, %rcx
rep movsw
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x107a8, %rsi
lea addresses_WC_ht+0x1b88e, %rdi
and %r14, %r14
mov $30, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x4f00, %rsi
lea addresses_normal_ht+0x3918, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $86, %rcx
rep movsq
nop
nop
nop
add $6985, %r8
lea addresses_A_ht+0x186d8, %rdi
add %r11, %r11
movb (%rdi), %cl
nop
cmp $29056, %r8
lea addresses_D_ht+0x1a8d8, %r8
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r8)
add %rdi, %rdi
lea addresses_A_ht+0x1e840, %r13
xor %r11, %r11
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
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
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x46d8, %r14
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
nop
nop
dec %rax

// REPMOV
lea addresses_UC+0xb658, %rsi
lea addresses_UC+0xfc58, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $90, %rcx
rep movsq
nop
nop
xor %r10, %r10

// Load
lea addresses_D+0xc4d8, %rcx
nop
nop
nop
nop
nop
dec %r12
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
add $63782, %r9

// Store
lea addresses_A+0x19b78, %rsi
nop
sub $38825, %rax
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
add %r12, %r12

// REPMOV
lea addresses_UC+0x1b458, %rsi
lea addresses_A+0x1a6e8, %rdi
add %r9, %r9
mov $86, %rcx
rep movsl
nop
nop
nop
nop
xor $18652, %r9

// Store
lea addresses_WT+0xaf48, %rsi
nop
nop
nop
and $12274, %r10
movw $0x5152, (%rsi)
nop
nop
add $56743, %rdi

// Store
lea addresses_RW+0x3498, %rax
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
add $22315, %rcx

// Store
lea addresses_normal+0x15e58, %r10
clflush (%r10)
nop
cmp %rax, %rax
movb $0x51, (%r10)
nop
cmp %rsi, %rsi

// Faulty Load
mov $0x4e366800000006d8, %r14
nop
nop
nop
nop
nop
xor $8340, %rax
movaps (%r14), %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 16878, '45': 2, '49': 4932, '48': 17}
00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 45 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00
*/
