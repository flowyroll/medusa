.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1d69a, %r13
nop
nop
and $6947, %r9
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x559, %r12
nop
add %rdx, %rdx
movb (%r12), %r10b
nop
add %rbp, %rbp
lea addresses_WT_ht+0x67e2, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $38591, %r13
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x6c4a, %rdi
nop
nop
xor $27648, %r10
movb (%rdi), %r13b
nop
sub $26523, %r12
lea addresses_UC_ht+0x52e2, %rsi
lea addresses_WC_ht+0xfe2, %rdi
nop
nop
nop
nop
nop
sub $45025, %r10
mov $92, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xc9e2, %rsi
lea addresses_A_ht+0x1be2, %rdi
nop
nop
nop
nop
add $34617, %r9
mov $54, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x1dfe2, %rsi
lea addresses_UC_ht+0x2de2, %rdi
nop
nop
inc %rdx
mov $17, %rcx
rep movsl
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x146fe, %r9
nop
cmp %r10, %r10
movw $0x6162, (%r9)
cmp $7859, %r9
lea addresses_D_ht+0x1ab62, %rcx
cmp $11302, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
nop
nop
add $3554, %rdi
lea addresses_UC_ht+0x926a, %rsi
lea addresses_normal_ht+0xbce2, %rdi
nop
nop
nop
add %r9, %r9
mov $34, %rcx
rep movsl
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x4de2, %rcx
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rcx)
nop
sub $61924, %r9
lea addresses_normal_ht+0x1c7c2, %rdi
nop
nop
nop
nop
nop
inc %rbp
movw $0x6162, (%rdi)
nop
dec %r12
lea addresses_UC_ht+0xbfe2, %r10
nop
nop
nop
nop
nop
sub $35501, %rbp
mov (%r10), %r13d
sub $62793, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_WC+0x155e2, %r11
nop
add %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_US+0x17e2, %r15
add $315, %rbx
mov (%r15), %esi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 26}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
