.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4583, %rsi
lea addresses_WC_ht+0x8a19, %rdi
nop
nop
nop
and %rbx, %rbx
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x16a49, %rsi
and $18695, %rbp
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xc53, %rax
nop
nop
nop
nop
cmp $32637, %rcx
mov (%rax), %bx
nop
nop
nop
nop
nop
add $60604, %rcx
lea addresses_D_ht+0x194c3, %rsi
lea addresses_WC_ht+0x1df09, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $84, %rcx
rep movsq
cmp $15013, %rbp
lea addresses_WT_ht+0x127e1, %rsi
lea addresses_normal_ht+0xd689, %rdi
nop
nop
nop
nop
xor $14959, %rbx
mov $112, %rcx
rep movsw
xor %rcx, %rcx
lea addresses_A_ht+0x16c89, %rsi
clflush (%rsi)
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rsi)
nop
cmp $56566, %rbp
lea addresses_WT_ht+0x83c9, %rsi
lea addresses_WT_ht+0x15571, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $51, %rcx
rep movsq
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x1b509, %rbp
nop
nop
nop
nop
nop
and $9272, %rax
movl $0x61626364, (%rbp)
nop
xor $16872, %rdi
lea addresses_normal_ht+0x10aa9, %rax
nop
nop
add %rbp, %rbp
mov (%rax), %rcx
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xd849, %rsi
lea addresses_A_ht+0x8569, %rdi
nop
nop
nop
dec %r11
mov $25, %rcx
rep movsq
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x148c, %rax
sub %rsi, %rsi
movl $0x61626364, (%rax)
sub %rcx, %rcx
lea addresses_UC_ht+0x10889, %rbp
nop
inc %rdi
movb (%rbp), %al
nop
sub $37829, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WC+0x9889, %r8
inc %rdi
movl $0x51525354, (%r8)
nop
dec %r8

// Faulty Load
lea addresses_WC+0x9889, %r10
nop
nop
xor $44647, %rbx
vmovntdqa (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'13': 1, '5f': 1, '45': 6100, 'c3': 1, '68': 1, 'f1': 1, 'd6': 1, '03': 1, '85': 1, '49': 36, '00': 15682, '61': 1, '91': 2}
00 00 45 00 45 00 45 00 45 00 00 00 00 45 00 00 45 00 45 00 45 00 00 45 00 45 00 00 45 45 45 45 00 00 00 00 00 45 00 00 45 45 00 00 45 45 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 45 45 45 00 00 00 00 00 45 00 00 00 00 45 45 00 00 45 00 00 00 00 45 45 45 00 00 45 45 00 00 45 00 00 00 00 00 45 00 00 00 45 00 45 45 45 00 45 45 00 00 00 00 00 00 00 45 00 45 00 45 00 45 00 00 00 00 45 00 45 45 00 00 45 00 00 45 45 45 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 45 45 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 45 45 00 00 45 45 00 00 45 45 45 00 00 45 00 45 45 00 00 00 45 00 45 45 00 45 45 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 45 00 00 00 00 45 00 45 00 00 45 45 00 45 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 00 45 45 00 45 00 45 00 45 00 00 00 00 00 45 00 45 00 45 00 00 00 45 00 45 45 00 00 45 00 00 00 00 00 45 00 45 00 00 45 45 00 45 00 00 45 00 00 00 45 00 45 00 00 00 45 00 45 45 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 45 45 45 00 45 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 45 00 00 45 00 45 45 45 00 45 00 00 00 00 00 00 45 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 45 45 45 45 45 45 00 45 00 45 45 00 00 00 00 00 45 00 00 45 45 00 45 00 00 45 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 45 00 45 00 00 45 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 45 45 00 00 00 00 00 45 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 45 00 45 00 00 45 00 45 00 45 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 45 00 00 00 45 45 00 00 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 00 00 00 00 00 45 45 00 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 00 45 00 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 68 00 00 00 00 45 00 00 00 45 00 00 00 00 45 45 00 00 00 45 45 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
