.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xaa09, %r8
nop
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r8), %r10b
dec %rdi
lea addresses_WC_ht+0x4169, %rsi
lea addresses_normal_ht+0x12909, %rdi
xor %r10, %r10
mov $97, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x409, %rbp
xor $19761, %r9
movw $0x6162, (%rbp)
cmp %rcx, %rcx
lea addresses_WT_ht+0x7109, %rsi
lea addresses_A_ht+0x16ef9, %rdi
nop
xor %r9, %r9
mov $56, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xc9c9, %rsi
lea addresses_WT_ht+0x1b6b1, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $53, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x2609, %rbp
nop
nop
and $46890, %r10
mov (%rbp), %r8d
sub $50902, %rsi
lea addresses_A_ht+0xa259, %rsi
lea addresses_WC_ht+0x10ce1, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $6817, %rbp
lea addresses_WT_ht+0xc2d9, %rsi
lea addresses_D_ht+0x209, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $6, %rcx
rep movsb
add %rbp, %rbp
lea addresses_normal_ht+0x1616c, %r8
xor $30674, %r9
mov (%r8), %esi
xor %r9, %r9
lea addresses_WC_ht+0xea09, %r10
nop
sub $43820, %rbp
movl $0x61626364, (%r10)
nop
nop
dec %rcx
lea addresses_WC_ht+0xaa49, %rcx
nop
nop
sub %r9, %r9
mov (%rcx), %rdi
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0xb609, %rsi
nop
cmp $16362, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add $56193, %rbp
lea addresses_UC_ht+0x106a9, %rsi
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x3609, %r8
nop
nop
nop
add $58696, %rax
mov (%r8), %di
nop
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0xebb1, %r10
nop
nop
inc %r9
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx

// Store
mov $0x689, %r8
clflush (%r8)
nop
nop
add %rcx, %rcx
movb $0x51, (%r8)
inc %r8

// Store
lea addresses_US+0x12521, %r8
clflush (%r8)
nop
nop
nop
and $4483, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r8)

// Exception!!!
nop
nop
mov (0), %rbp
nop
nop
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_UC+0x17209, %r9
nop
cmp %r11, %r11
movntdqa (%r9), %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 1275, '44': 18520, '48': 1805, '49': 229}
00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 48 44 48 48 44 44 44 44 44 44 44 44 00 48 00 48 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 48 00 48 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 00 48 44 48 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 48 00 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 48 44 44 48 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 48 48 44 44 48 49 48 48 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 48 44 44 44 44 44 44 00 48 44 44 44 44 44 48 44 48 44 44 44 44 44 00 00 48 48 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 49 44 48 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 48 44 48 48 44 44 48 44 48 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 48 00 48 00 00 48 48 44 00 44 44 00 48 44 48 48 44 00 00 49 48 48 48 44 48 44 44 44 44 44 44 44 44 44 44 44 00 00 48 48 44 44 48 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 48 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 48 00 48 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 48 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 48 00 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 48 44 44 44 44 48 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 48 44 48 48 44 44 44 00 00 00 44 48 49 48 48 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 48 44 48 48 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 49 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 48 48 48 44 44 44 44 44 44 44 44 44 00 49 00 48 48 44 44 44 44 44 44 44 44 00 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 48 44 48 48 49 44 44 44 44 44 44 44 44 44 48 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 49 48 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
