.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xeb02, %rsi
lea addresses_normal_ht+0xfe88, %rdi
nop
inc %r8
mov $85, %rcx
rep movsq
nop
nop
nop
xor $6323, %rsi
lea addresses_D_ht+0x2f02, %r8
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r8)
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x1c0d2, %rbp
nop
nop
xor $35796, %r9
movb $0x61, (%rbp)
nop
nop
nop
nop
and $58362, %rdi
lea addresses_D_ht+0x1b02, %rbx
nop
nop
sub $50355, %rdi
movb $0x61, (%rbx)
cmp $34651, %rbp
lea addresses_normal_ht+0x3a82, %rdi
and $55972, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x1491a, %rsi
lea addresses_WT_ht+0x1cd02, %rdi
clflush (%rdi)
nop
nop
nop
nop
lfence
mov $69, %rcx
rep movsb
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x18302, %rbp
nop
nop
nop
and %r8, %r8
mov (%rbp), %r9d
nop
xor $59087, %r8
lea addresses_WT_ht+0x1762, %rcx
nop
inc %rsi
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x10242, %r8
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
nop
add $61459, %rbp
lea addresses_A_ht+0x202, %rbx
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb (%rbx), %r8b
nop
nop
nop
add $32154, %r8
lea addresses_normal_ht+0x1491a, %rdi
nop
inc %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0xd302, %rcx
nop
nop
nop
cmp $52158, %rbp
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
cmp $22739, %rsi
lea addresses_D_ht+0x19282, %rcx
nop
cmp $15999, %r8
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x4c72, %r9
nop
nop
nop
nop
dec %r8
movb (%r9), %cl
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x9384, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and $44792, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r11)
nop
nop
cmp $17607, %rsi

// REPMOV
lea addresses_UC+0x3c02, %rsi
lea addresses_WT+0x19ca2, %rdi
nop
nop
nop
add %r8, %r8
mov $103, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WC+0x191d2, %rbp
nop
nop
nop
nop
nop
sub $53285, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rbp)
xor $35966, %rdi

// Store
lea addresses_normal+0xc432, %rcx
nop
cmp %r14, %r14
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x1be82, %r8
nop
nop
nop
nop
nop
cmp %r11, %r11
movw $0x5152, (%r8)
nop
dec %r14

// Store
lea addresses_UC+0x2f02, %rdi
and %r8, %r8
movw $0x5152, (%rdi)
nop
nop
nop
and $53725, %rdx

// Store
lea addresses_D+0x1a4c2, %r11
sub $36746, %r14
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
inc %rbp

// Faulty Load
lea addresses_A+0x1c302, %r11
nop
nop
and %rdx, %rdx
mov (%r11), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1, '35': 21828}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
