.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x19bb, %r14
nop
nop
sub %rax, %rax
movb (%r14), %dl
nop
nop
nop
nop
xor $44074, %r8
lea addresses_UC_ht+0x113b0, %rsi
lea addresses_WT_ht+0x14e30, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $15, %rcx
rep movsl
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0xcf30, %rsi
lea addresses_WT_ht+0x31f6, %rdi
nop
nop
inc %rdx
mov $60, %rcx
rep movsw
nop
nop
sub $36418, %r13
lea addresses_WC_ht+0x13f30, %rsi
clflush (%rsi)
nop
nop
sub $45841, %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x38d8, %rsi
clflush (%rsi)
nop
nop
xor %r14, %r14
movb $0x61, (%rsi)
nop
cmp %rax, %rax
lea addresses_UC_ht+0xe730, %rsi
lea addresses_UC_ht+0x2930, %rdi
nop
nop
nop
nop
cmp $33086, %rdx
mov $2, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0xfad0, %rsi
lea addresses_A_ht+0x14930, %rdi
nop
nop
add %r13, %r13
mov $97, %rcx
rep movsq
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x2b50, %rsi
lea addresses_normal_ht+0xbbb0, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $82, %rcx
rep movsl
sub %rcx, %rcx
lea addresses_WC_ht+0x77e0, %r8
nop
nop
nop
nop
nop
cmp $52906, %rcx
movb $0x61, (%r8)
nop
nop
nop
nop
add $12021, %rdx
lea addresses_normal_ht+0x12f30, %rdi
xor %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
add $223, %rdx
lea addresses_A_ht+0x184e0, %rsi
lea addresses_D_ht+0x295c, %rdi
sub %r8, %r8
mov $96, %rcx
rep movsw
nop
sub %r14, %r14
lea addresses_normal_ht+0x7f7c, %rsi
lea addresses_normal_ht+0x10458, %rdi
nop
add %rax, %rax
mov $100, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rsi

// Store
lea addresses_normal+0x9730, %r8
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
nop
add $52891, %rsi

// Faulty Load
mov $0xf30, %r13
nop
nop
nop
nop
dec %r11
mov (%r13), %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'00': 2}
00 00
*/
