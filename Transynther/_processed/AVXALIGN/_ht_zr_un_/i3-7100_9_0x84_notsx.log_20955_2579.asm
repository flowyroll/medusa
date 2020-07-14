.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ddd6, %r13
nop
inc %r9
movb $0x61, (%r13)
xor %rdx, %rdx
lea addresses_normal_ht+0x1cf96, %rbp
nop
nop
nop
nop
nop
xor $245, %rax
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1d0da, %rbp
nop
nop
add %rsi, %rsi
mov (%rbp), %ebx
nop
nop
nop
nop
add $12284, %r13
lea addresses_D_ht+0x18b96, %rsi
lea addresses_normal_ht+0x1d2d6, %rdi
nop
nop
cmp $35285, %rbx
mov $84, %rcx
rep movsq
nop
sub $38861, %rdx
lea addresses_UC_ht+0xd9ba, %rsi
lea addresses_WT_ht+0x8b96, %rdi
nop
nop
nop
and %rbp, %rbp
mov $19, %rcx
rep movsb
cmp %rbx, %rbx
lea addresses_WC_ht+0x2916, %rsi
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm7, (%rsi)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x1d516, %rsi
lea addresses_normal_ht+0x14746, %rdi
nop
nop
inc %r9
mov $0, %rcx
rep movsw
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1b796, %rsi
lea addresses_WT_ht+0x1befe, %rdi
xor $24782, %r13
mov $52, %rcx
rep movsw
nop
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0xdf96, %rbx
nop
nop
xor $20787, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
add $33490, %rcx

// REPMOV
lea addresses_D+0x1da02, %rsi
lea addresses_D+0xe196, %rdi
nop
sub $57006, %r14
mov $62, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_D+0x10f96, %r10
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
sub $51194, %rsi

// Faulty Load
lea addresses_D+0x10f96, %r14
nop
nop
nop
nop
sub %rdx, %rdx
vmovaps (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'81': 1, 'f8': 2, '7d': 2, '49': 1, '46': 108, '00': 15606, 'ff': 7, '07': 5222, '08': 6}
00 07 00 00 00 00 07 00 00 00 00 07 07 07 00 00 00 07 00 00 07 00 00 00 00 07 07 00 00 00 00 00 00 00 00 00 07 00 00 07 00 07 07 00 00 07 00 00 07 00 00 00 00 00 07 00 00 00 00 00 00 00 00 00 00 07 00 07 00 00 07 07 00 00 07 00 00 00 00 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 07 00 00 00 00 07 00 00 07 00 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 07 00 07 00 00 00 00 00 00 00 00 00 07 07 00 07 00 00 07 00 00 00 00 07 00 00 00 00 00 00 00 00 00 07 00 00 00 07 00 00 00 00 07 00 00 00 00 07 07 00 00 00 07 07 00 00 00 00 07 00 00 00 00 00 00 07 00 00 07 00 07 07 00 00 00 07 00 00 00 00 00 00 07 00 00 00 00 00 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 07 00 07 07 00 07 00 00 00 07 00 00 07 00 00 07 00 00 00 00 07 00 00 00 00 00 00 07 07 00 07 00 00 07 00 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 07 07 00 00 00 00 00 00 00 07 00 00 00 00 07 00 00 07 07 00 00 00 00 00 07 07 07 00 00 00 07 07 00 07 00 00 00 00 00 07 07 00 00 00 00 00 00 00 00 07 00 00 00 00 46 07 00 00 00 00 00 00 00 00 00 00 00 00 07 00 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 07 00 07 00 07 07 00 00 00 00 00 00 07 00 00 00 00 00 00 00 00 07 07 00 07 00 00 00 07 00 00 07 07 07 00 07 07 00 00 00 00 00 07 00 07 00 07 00 00 00 00 07 00 00 07 00 07 07 00 00 00 00 00 00 07 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 07 07 00 00 00 00 00 07 00 07 07 07 00 07 07 00 07 00 00 00 00 00 07 00 00 07 00 07 00 00 07 00 00 07 00 00 00 00 07 00 07 07 00 00 07 07 00 07 07 00 07 00 00 00 00 00 00 00 00 07 07 00 00 00 00 00 07 00 00 07 00 07 00 00 07 00 00 00 00 00 00 00 07 07 00 00 00 00 00 00 00 00 00 07 07 00 07 07 00 00 00 00 00 00 00 00 00 00 07 00 00 00 00 00 07 00 00 00 00 07 00 00 00 00 00 07 07 00 00 00 00 00 07 00 07 00 00 07 00 07 00 07 07 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 07 07 00 07 00 00 00 00 00 00 00 00 00 00 00 00 07 00 00 00 07 00 00 00 07 00 00 00 07 00 00 00 00 07 00 07 00 ff 00 07 00 00 00 00 07 00 07 07 00 00 00 00 00 07 00 00 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 07 07 07 07 00 00 00 00 07 00 00 07 07 00 07 07 00 00 00 07 00 07 00 00 00 00 07 00 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00 07 00 07 00 00 00 00 00 00 00 00 07 00 00 07 00 00 00 00 07 00 00 07 00 00 00 00 07 00 00 07 07 00 00 00 00 07 00 00 00 07 07 00 00 07 00 00 00 00 07 00 00 00 00 00 00 00 00 07 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 46 00 46 46 46 00 00 46 00 00 46 46 00 46 00 00 46 46 00 00 46 00 46 00 46 00 00 00 00 00 00 00 07 00 00 00 00 07 00 00 07 07 00 00 00 07 00 00 00 00 00 00 00 00 00 00 00 07 00 07 00 07 00 07 00 07 00 00 07 00 07 00 00 07 07 07 00 00 00 07 00 07 00 07 00 00 00 00 00 00 00 00 00 00 00 00 00 07 07 00 00 00 00 00 00 00 07 00 00 00 00 00 00 07 00 00 07 00 07 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 07 07 46 00 00 07 00 07 00 07 00 00 00 00 00 07 00 00 00 00 00 00 00 00 00 00 00
*/
