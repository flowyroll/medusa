.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12330, %r11
nop
nop
nop
cmp $44477, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm0
and $0xffffffffffffffc0, %r11
vmovntdq %ymm0, (%r11)
nop
add $24381, %rdi
lea addresses_normal_ht+0x15d0, %rsi
lea addresses_D_ht+0x13938, %rdi
nop
nop
nop
nop
and $33076, %r11
mov $111, %rcx
rep movsq
nop
add $41430, %r12
lea addresses_UC_ht+0x8f56, %rsi
xor $25759, %rbp
movl $0x61626364, (%rsi)
nop
nop
nop
nop
add $39612, %r9
lea addresses_UC_ht+0xbc70, %rsi
lea addresses_WT_ht+0x5061, %rdi
sub %r14, %r14
mov $127, %rcx
rep movsb
nop
dec %r9
lea addresses_D_ht+0xc100, %rbp
nop
nop
cmp $37518, %r12
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x3530, %r9
clflush (%r9)
nop
add $36248, %rbp
movb (%r9), %cl
add %r9, %r9
lea addresses_normal_ht+0x1f80, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r14, %r14
mov (%rdi), %rsi
nop
nop
nop
nop
cmp $34947, %r12
lea addresses_normal_ht+0x4630, %rsi
lea addresses_UC_ht+0x7b30, %rdi
nop
nop
nop
nop
nop
and $40458, %r9
mov $105, %rcx
rep movsw
nop
cmp %r11, %r11
lea addresses_WT_ht+0x1c870, %rbp
nop
nop
nop
nop
nop
sub %r14, %r14
movl $0x61626364, (%rbp)
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x12930, %rsi
lea addresses_A_ht+0x18a70, %rdi
nop
nop
inc %r14
mov $89, %rcx
rep movsb
and %rdi, %rdi
lea addresses_WC_ht+0x188b0, %rsi
lea addresses_WT_ht+0x7b27, %rdi
nop
nop
nop
nop
nop
sub $62482, %r12
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $11495, %rsi
lea addresses_UC_ht+0xec10, %r12
nop
nop
nop
nop
nop
add $57538, %r14
movb $0x61, (%r12)
nop
xor $45542, %r14
lea addresses_UC_ht+0x3af8, %rsi
nop
nop
nop
nop
nop
dec %r12
mov (%rsi), %cx
nop
and %rcx, %rcx
lea addresses_WT_ht+0xedf0, %rsi
lea addresses_D_ht+0x667e, %rdi
nop
nop
nop
nop
xor $26294, %r11
mov $6, %rcx
rep movsb
sub $14260, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x12d30, %rdx
nop
nop
nop
nop
and $34340, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovaps %ymm1, (%rdx)
nop
dec %rcx

// Store
lea addresses_UC+0x1da47, %rbx
sub %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movaps %xmm5, (%rbx)
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_WT+0x63b0, %rbx
nop
xor %rdi, %rdi
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %rdx
nop
cmp %rbx, %rbx

// Store
lea addresses_PSE+0x13c12, %r13
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%r13)
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_normal+0x12d30, %r10
nop
nop
and $58399, %r13
mov (%r10), %bx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'58': 136}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
