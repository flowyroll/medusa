.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe844, %rbp
nop
nop
nop
nop
xor %rax, %rax
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %r8
xor %r8, %r8
lea addresses_UC_ht+0x7d74, %rax
nop
nop
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%rax)
nop
nop
nop
and $41994, %r13
lea addresses_normal_ht+0x8aec, %rsi
lea addresses_D_ht+0x1e630, %rdi
nop
nop
nop
cmp %rax, %rax
mov $115, %rcx
rep movsq
cmp $54572, %rdi
lea addresses_A_ht+0x1bba4, %rsi
lea addresses_WT_ht+0x1c414, %rdi
xor %r8, %r8
mov $115, %rcx
rep movsw
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x5fb4, %r8
nop
nop
inc %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm1
movups %xmm1, (%r8)
nop
nop
dec %rbp
lea addresses_A_ht+0x1211c, %r8
nop
nop
nop
and %r13, %r13
movw $0x6162, (%r8)
nop
cmp %r13, %r13
lea addresses_WC_ht+0xd34, %r15
clflush (%r15)
nop
and $41037, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
cmp $48411, %rbp
lea addresses_WT_ht+0x9b14, %rsi
lea addresses_WT_ht+0x1d874, %rdi
nop
add %r13, %r13
mov $42, %rcx
rep movsl
nop
nop
nop
nop
nop
add $51435, %rax
lea addresses_WT_ht+0x3144, %r15
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%r15)
xor $23377, %r15
lea addresses_WC_ht+0x1a1ec, %r15
and $10643, %rdi
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x7934, %r13
nop
nop
nop
sub %r8, %r8
mov (%r13), %cx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x14e64, %r15
and %rbp, %rbp
mov (%r15), %si
nop
cmp $57644, %rcx
lea addresses_WT_ht+0x579c, %rsi
lea addresses_UC_ht+0x14c74, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $58188, %r8
mov $29, %rcx
rep movsw
nop
nop
nop
nop
xor $55169, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x5274, %rbp
nop
nop
nop
nop
nop
add $57475, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
add $34043, %rbx

// REPMOV
lea addresses_A+0x4340, %rsi
lea addresses_WT+0x1face, %rdi
nop
nop
nop
add $62444, %r10
mov $70, %rcx
rep movsw
nop
inc %rdi

// Store
lea addresses_normal+0x16c74, %rdx
and $24543, %r9
movb $0x51, (%rdx)
and %r10, %r10

// Faulty Load
mov $0x474, %rcx
nop
nop
nop
add $32024, %r9
mov (%rcx), %edx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'00': 27}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
