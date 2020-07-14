.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1eb10, %rcx
nop
nop
add $21116, %rdx
movb (%rcx), %r8b
nop
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0x14f50, %r9
nop
nop
sub $6232, %rax
movw $0x6162, (%r9)
nop
and $8167, %r10
lea addresses_WT_ht+0xc150, %r10
nop
nop
nop
nop
dec %r8
movw $0x6162, (%r10)
nop
nop
and $23957, %r8
lea addresses_WT_ht+0x1e9f0, %rcx
nop
nop
nop
sub $36587, %r13
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x18650, %rsi
lea addresses_A_ht+0x708, %rdi
cmp %r13, %r13
mov $20, %rcx
rep movsb
nop
and %rax, %rax
lea addresses_WC_ht+0x395c, %rcx
nop
nop
sub %rdx, %rdx
mov (%rcx), %edi
xor %r9, %r9
lea addresses_A_ht+0xed50, %rsi
lea addresses_WT_ht+0x13950, %rdi
nop
nop
nop
nop
xor $43119, %r10
mov $80, %rcx
rep movsl
inc %rdi
lea addresses_WC_ht+0xe1b0, %rsi
lea addresses_normal_ht+0x619c, %rdi
xor $7169, %r13
mov $72, %rcx
rep movsl
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rsi

// Faulty Load
lea addresses_US+0x10150, %rbp
nop
nop
nop
nop
add %r11, %r11
mov (%rbp), %si
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
