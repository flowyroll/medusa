.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x4457, %r8
nop
sub %r9, %r9
movb $0x61, (%r8)
nop
nop
sub $45078, %r15
lea addresses_normal_ht+0x13e2b, %r8
dec %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
sub $63014, %r8
lea addresses_A_ht+0x15e37, %r10
clflush (%r10)
nop
nop
nop
nop
cmp $4894, %r9
mov (%r10), %r8
nop
nop
inc %r8
lea addresses_UC_ht+0xe9e9, %rsi
lea addresses_A_ht+0x1e86f, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $25036, %r8
mov $87, %rcx
rep movsq
nop
nop
nop
nop
cmp $40288, %rsi
lea addresses_normal_ht+0x8b37, %r9
nop
nop
nop
nop
dec %rsi
movw $0x6162, (%r9)
sub %rcx, %rcx
lea addresses_WC_ht+0xd4f7, %r8
nop
and %r11, %r11
mov (%r8), %r10
nop
nop
nop
nop
nop
add $37727, %r9
lea addresses_WC_ht+0x1df67, %rsi
lea addresses_UC_ht+0x163b7, %rdi
nop
nop
nop
nop
nop
sub $47976, %r10
mov $46, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $13352, %r15
lea addresses_A_ht+0x14a37, %r11
nop
nop
dec %r9
movl $0x61626364, (%r11)
add $20240, %rdi
lea addresses_A_ht+0xca37, %rsi
lea addresses_normal_ht+0xb49b, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $26, %rcx
rep movsb
sub $18286, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rdx
push %rsi

// Load
lea addresses_UC+0x1a1d, %rsi
nop
add %rax, %rax
mov (%rsi), %r15w
cmp %r8, %r8

// Store
lea addresses_WT+0x441f, %rax
clflush (%rax)
nop
nop
nop
nop
and $35398, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovntdq %ymm6, (%rax)
sub $28607, %r12

// Faulty Load
lea addresses_UC+0xe637, %r8
nop
xor %rax, %rax
movaps (%r8), %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'00': 18835, '45': 2994}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00
*/
