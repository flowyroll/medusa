.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x2c78, %r14
nop
cmp $15260, %rcx
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
cmp $27866, %rdx
lea addresses_WC_ht+0x9e78, %rsi
lea addresses_WT_ht+0x13c78, %rdi
nop
dec %rbp
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x6978, %rsi
lea addresses_WC_ht+0x13380, %rdi
nop
nop
cmp $46669, %r10
mov $72, %rcx
rep movsl
nop
nop
nop
add $45134, %rsi
lea addresses_A_ht+0x181dc, %r14
nop
nop
cmp $29776, %r10
mov (%r14), %ebx
nop
nop
nop
nop
xor $8862, %rbp
lea addresses_WC_ht+0x81a8, %rsi
nop
nop
and $30010, %rdx
mov (%rsi), %cx
nop
nop
nop
nop
nop
sub $37729, %rcx
lea addresses_A_ht+0x1d878, %rbp
nop
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%rbp)
nop
nop
nop
cmp $49906, %rcx
lea addresses_WC_ht+0x15b0c, %rsi
lea addresses_WC_ht+0xc738, %rdi
nop
nop
cmp %r14, %r14
mov $114, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_A_ht+0x8ee8, %rsi
lea addresses_normal_ht+0xca78, %rdi
nop
and %r10, %r10
mov $33, %rcx
rep movsq
nop
nop
nop
nop
add $5795, %rbx
lea addresses_WC_ht+0x14e78, %r10
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r10)
add %rdi, %rdi
lea addresses_normal_ht+0xe878, %rdi
add $49238, %rbx
movb $0x61, (%rdi)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x11338, %r10
nop
add $16019, %rsi
movl $0x61626364, (%r10)
nop
nop
nop
nop
cmp $44695, %rbp
lea addresses_normal_ht+0x1078, %rsi
lea addresses_A_ht+0x151af, %rdi
nop
nop
and %r14, %r14
mov $2, %rcx
rep movsl
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1cc78, %r11
nop
cmp $9200, %r9
movw $0x5152, (%r11)
nop
nop
inc %r13

// Store
lea addresses_A+0xb178, %rbx
nop
nop
nop
nop
nop
cmp $9165, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
and %r11, %r11

// REPMOV
lea addresses_WC+0x5e98, %rsi
lea addresses_WC+0xf678, %rdi
nop
nop
nop
xor %r9, %r9
mov $17, %rcx
rep movsl
nop
nop
nop
xor $8431, %r11

// Store
lea addresses_PSE+0x14cf8, %rsi
nop
inc %rcx
movw $0x5152, (%rsi)
xor %rsi, %rsi

// Load
lea addresses_UC+0x16f8, %rcx
nop
nop
nop
nop
nop
add %r11, %r11
mov (%rcx), %r9d
nop
dec %rbx

// Store
lea addresses_WT+0x17e78, %rdi
nop
and %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_PSE+0x16e78, %r12
clflush (%r12)
nop
nop
add $22155, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
nop
nop
nop
sub $53537, %rcx

// Faulty Load
lea addresses_A+0x4678, %rsi
nop
nop
nop
and %rdi, %rdi
movntdqa (%rsi), %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'58': 1, '52': 1, '79': 18538, 'fa': 1, '18': 1, '00': 3282, 'a0': 2, '6d': 1, 'c0': 1, 'd0': 1}
d0 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 00 79 79 79 00 79 79 79 79 00 79 79 79 79 79 79 79 00 79 79 00 79 79 79 00 79 79 79 79 79 00 79 79 79 79 00 79 00 79 79 79 00 79 79 79 00 79 00 79 79 79 79 00 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 00 79 79 00 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 00 79 79 79 00 00 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 00 79 79 00 79 79 79 00 79 00 79 79 79 79 79 79 79 00 79 79 00 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 00 79 79 79 00 79 79 79 79 79 00 79 79 79 79 79 79 79 79 00 79 79 00 79 79 00 79 79 79 00 79 79 79 79 00 00 79 79 79 00 79 79 79 00 79 00 79 79 00 00 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 00 79 79 00 00 79 79 79 79 00 79 79 79 79 79 79 79 79 00 79 79 79 79 79 00 79 00 79 79 79 79 79 00 00 79 79 79 00 00 79 79 79 79 00 79 79 00 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 00 79 79 00 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 00 00 79 00 79 79 79 79 79 79 79 79 79 00 79 79 00 79 79 00 79 00 79 79 79 79 79 79 00 00 79 79 79 79 00 00 00 79 79 79 00 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 00 79 79 00 00 79 79 79 79 79 79 79 00 79 79 00 79 79 79 00 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 00 79 00 79 00 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 00 79 79 79 00 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 00 79 00 79 79 00 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 00 79 79 79 00 79 79 79 79 79 79 79 00 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 79 79 79 79 00 79 79 79 79 79 79 00 00 79 79 79 00 00 79 79 79 79 79 79 79 79 00 79 79 79 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 00 79 79 79 00 79 79 79 79 79 00 79 00 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 79 00 79 79 79 79 79 79 79 79 79 00 00 79 00
*/
