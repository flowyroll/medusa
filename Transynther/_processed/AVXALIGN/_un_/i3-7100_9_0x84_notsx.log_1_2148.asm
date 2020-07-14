.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x139cf, %rsi
lea addresses_UC_ht+0xd84b, %rdi
nop
and $60486, %r8
mov $84, %rcx
rep movsb
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0xd85b, %rax
nop
nop
cmp %rbp, %rbp
movb (%rax), %r8b
inc %rbp
lea addresses_WT_ht+0x14733, %rdi
nop
nop
nop
cmp %rbp, %rbp
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x9907, %r8
nop
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%r8)
nop
sub %rax, %rax
lea addresses_D_ht+0x1349f, %rsi
lea addresses_WT_ht+0xd8f3, %rdi
nop
nop
nop
nop
nop
and $65498, %r12
mov $25, %rcx
rep movsw
nop
nop
sub $60887, %r12
lea addresses_UC_ht+0x46fb, %rsi
lea addresses_UC_ht+0xc69b, %rdi
cmp $30712, %rax
mov $40, %rcx
rep movsb
nop
nop
nop
sub $54781, %rbp
lea addresses_A_ht+0x2c5b, %rsi
lea addresses_normal_ht+0x4fdb, %rdi
nop
nop
nop
nop
nop
sub $26841, %rax
mov $21, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $1419, %rax
lea addresses_D_ht+0x116c3, %rcx
nop
nop
xor %rbp, %rbp
movb (%rcx), %r12b
nop
add %rsi, %rsi
lea addresses_A_ht+0x3c57, %r8
nop
nop
and %rbx, %rbx
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x445b, %rsi
lea addresses_A_ht+0x1b991, %rdi
sub $10967, %r12
mov $79, %rcx
rep movsq
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1395b, %rcx
nop
nop
nop
nop
nop
inc %r12
mov (%rcx), %si
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x277b, %rsi
nop
nop
and %rbx, %rbx
movl $0x61626364, (%rsi)
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rbx

// Faulty Load
mov $0x4308450000000c5b, %rbx
nop
nop
and $51598, %rax
movb (%rbx), %r12b
lea oracles, %r12
and $0xff, %r12
shlq $12, %r12
mov (%r12,%r12,1), %r12
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'fe': 1}
fe
*/
