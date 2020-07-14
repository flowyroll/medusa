.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x4af2, %rbp
nop
cmp %r8, %r8
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x1b1d4, %r9
nop
nop
xor %r14, %r14
movb $0x61, (%r9)
nop
nop
cmp $30552, %r8
lea addresses_WC_ht+0x1b6b2, %r14
nop
nop
nop
nop
cmp $46305, %r8
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r9
and $18046, %r8
lea addresses_D_ht+0x3bf2, %rsi
lea addresses_normal_ht+0x2af2, %rdi
sub $11965, %rdx
mov $64, %rcx
rep movsw
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x6be2, %rsi
lea addresses_WC_ht+0x1929d, %rdi
nop
nop
nop
cmp $31220, %r12
mov $125, %rcx
rep movsq
nop
nop
nop
cmp $877, %r8
lea addresses_UC_ht+0xbcf2, %rbp
nop
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%rbp)
and %r8, %r8
lea addresses_UC_ht+0x1590a, %r14
nop
nop
nop
nop
sub $25565, %rcx
movl $0x61626364, (%r14)
nop
nop
nop
nop
xor $29449, %rdi
lea addresses_A_ht+0x13f3a, %r8
nop
nop
nop
nop
cmp $19809, %rbp
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x9d5e, %rdx
clflush (%rdx)
nop
nop
add %rcx, %rcx
mov (%rdx), %esi
nop
nop
nop
add $14146, %rsi
lea addresses_WT_ht+0x15a72, %rcx
nop
nop
nop
nop
and $29826, %rsi
movb (%rcx), %r9b
nop
nop
nop
and $65356, %rcx
lea addresses_UC_ht+0x8292, %rsi
lea addresses_normal_ht+0x12c10, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $49, %rcx
rep movsw
nop
nop
xor $56984, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rdi

// Faulty Load
lea addresses_US+0xeaf2, %rax
cmp %rdi, %rdi
mov (%rax), %r11w
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
