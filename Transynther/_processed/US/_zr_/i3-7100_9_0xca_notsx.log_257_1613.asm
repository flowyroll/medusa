.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xfcf1, %r8
nop
add $30468, %rbx
mov (%r8), %rdx
sub $40677, %rax
lea addresses_normal_ht+0x16fd7, %r9
nop
nop
nop
add $60660, %r12
movb $0x61, (%r9)
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x14fb1, %rbx
nop
nop
nop
xor $11269, %rax
movw $0x6162, (%rbx)
nop
dec %r9
lea addresses_WT_ht+0x2491, %rbx
nop
nop
sub $26126, %r8
movl $0x61626364, (%rbx)
sub %r8, %r8
lea addresses_WT_ht+0xb3f1, %r12
nop
xor $7457, %r9
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
nop
and $57866, %r12
lea addresses_D_ht+0x1c571, %r9
clflush (%r9)
nop
nop
add %rdx, %rdx
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x1e271, %rsi
lea addresses_A_ht+0x194f1, %rdi
nop
nop
nop
nop
nop
add $14690, %r8
mov $10, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $65010, %r9
lea addresses_WT_ht+0x180f1, %rdi
nop
add $32801, %r9
mov (%rdi), %r12d
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x10191, %r12
nop
inc %rdx
mov (%r12), %r8
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0xf79b, %rsi
lea addresses_WT_ht+0x190f1, %rdi
nop
nop
nop
add %r12, %r12
mov $52, %rcx
rep movsq
add $4628, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0x74f1, %r8
nop
nop
cmp %rcx, %rcx
mov (%r8), %r11w
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 10, 'NT': True, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'00': 257}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
