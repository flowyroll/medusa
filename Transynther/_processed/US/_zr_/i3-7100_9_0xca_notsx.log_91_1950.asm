.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1de66, %r11
nop
nop
nop
inc %rdi
mov (%r11), %r9
nop
nop
nop
nop
nop
cmp $49823, %r14
lea addresses_UC_ht+0x105a, %r12
nop
nop
nop
nop
nop
and $25192, %r11
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
xor $38404, %r14
lea addresses_normal_ht+0x16466, %rax
nop
nop
xor %rbp, %rbp
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0xe466, %rsi
lea addresses_WT_ht+0x1ec66, %rdi
nop
nop
xor %r12, %r12
mov $59, %rcx
rep movsb
nop
dec %r11
lea addresses_A_ht+0x8166, %r9
nop
nop
nop
nop
and %rcx, %rcx
mov (%r9), %r14
nop
nop
nop
nop
nop
add $52575, %r14
lea addresses_WT_ht+0xf5d6, %r9
nop
nop
nop
nop
add $17810, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x158c6, %rsi
lea addresses_WT_ht+0x8376, %rdi
dec %r14
mov $84, %rcx
rep movsb
nop
nop
nop
cmp $62072, %rdi
lea addresses_normal_ht+0x1057e, %rsi
lea addresses_UC_ht+0xeedb, %rdi
nop
nop
and $19170, %rbp
mov $53, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rbp
push %rbx
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0xf466, %rsi
nop
nop
nop
and %rcx, %rcx
mov (%rsi), %ebp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'00': 91}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
