.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xbd65, %rsi
lea addresses_normal_ht+0xcb65, %rdi
add %r9, %r9
mov $21, %rcx
rep movsq
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x18be5, %rdi
nop
nop
and $44209, %r11
mov (%rdi), %r13d
nop
nop
nop
nop
xor $4150, %r11
lea addresses_A_ht+0x765, %rsi
lea addresses_normal_ht+0x13f65, %rdi
and %r14, %r14
mov $49, %rcx
rep movsw
nop
nop
nop
nop
nop
and $61514, %rcx
lea addresses_A_ht+0x7eb5, %r14
nop
nop
nop
nop
nop
dec %rdi
mov (%r14), %r13d
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1fc5, %r13
nop
nop
nop
nop
nop
xor %r9, %r9
movl $0x61626364, (%r13)
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x19865, %r9
nop
nop
nop
and $61741, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
add $5398, %r11
lea addresses_WC_ht+0x130a5, %rsi
lea addresses_WC_ht+0x18345, %rdi
nop
cmp %r10, %r10
mov $94, %rcx
rep movsw
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x6765, %rcx
nop
nop
nop
add $52724, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x8f65, %rsi
lea addresses_WT_ht+0x12f65, %rdi
nop
nop
nop
nop
add $48615, %r9
mov $45, %rcx
rep movsb
nop
nop
nop
nop
nop
add $13177, %rdi
lea addresses_WT_ht+0x96c5, %r11
nop
cmp $49792, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm6
and $0xffffffffffffffc0, %r11
movntdq %xmm6, (%r11)
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x15765, %rsi
lea addresses_D_ht+0x18165, %rdi
nop
nop
nop
nop
xor $50199, %r10
mov $9, %rcx
rep movsw
nop
nop
nop
nop
sub $62387, %rdi
lea addresses_D_ht+0x5da5, %rcx
nop
nop
add $20055, %r9
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_RW+0x2f65, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
vmovntdqa (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 6739, '45': 549, '48': 11562, '00': 2973, '08': 6}
48 45 48 48 48 46 00 00 46 46 48 46 46 46 00 48 46 46 46 48 48 46 48 48 46 48 46 46 48 48 48 48 46 48 48 48 00 48 46 45 48 48 00 48 48 46 00 48 46 46 48 48 46 00 48 48 48 00 00 46 48 46 46 48 46 48 46 48 48 46 48 48 46 48 48 46 46 48 48 48 46 46 46 46 46 00 48 46 00 48 48 46 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 46 46 46 46 48 00 48 46 00 48 48 46 48 46 00 48 48 48 46 46 48 48 48 48 00 45 46 46 48 48 48 48 46 48 48 48 00 48 00 46 48 46 00 46 00 48 48 46 48 48 48 46 00 48 00 46 48 48 46 48 48 48 48 46 00 48 48 48 48 48 48 48 48 48 48 46 48 46 48 00 46 48 46 48 48 48 48 46 00 48 46 00 48 48 48 48 46 00 48 48 46 48 46 46 48 48 45 00 48 48 46 48 00 46 46 48 46 48 48 00 45 46 48 46 48 46 45 48 48 48 46 46 48 46 46 48 46 45 48 48 48 00 48 46 46 48 48 00 46 48 48 48 48 48 48 46 00 48 46 46 48 48 46 00 46 00 48 46 48 46 48 48 46 48 48 46 46 46 48 46 46 48 48 46 46 46 46 46 48 46 46 48 46 48 48 46 48 48 48 00 48 48 48 48 48 48 48 46 45 00 48 00 48 48 48 48 48 48 48 46 48 48 00 48 46 48 48 46 46 48 48 48 48 48 46 48 00 46 46 48 46 46 48 45 48 46 00 46 48 46 45 46 48 46 45 00 48 46 48 48 00 45 48 48 46 00 48 48 48 00 48 48 48 48 48 46 48 46 46 48 48 48 48 46 46 00 48 46 45 46 48 48 48 46 46 46 46 48 48 46 46 46 46 48 48 48 46 46 48 48 46 48 46 48 48 48 45 46 48 46 00 48 48 46 46 00 48 48 48 00 46 46 48 48 48 46 48 46 00 48 48 46 48 46 48 48 46 46 46 48 48 46 48 48 46 00 48 46 48 48 46 48 48 46 46 48 46 48 48 46 46 48 00 46 48 48 46 46 48 48 48 48 48 48 48 48 46 48 46 48 00 48 46 46 48 46 46 45 48 48 46 48 48 48 46 48 48 48 48 48 48 45 48 48 48 48 46 46 48 48 46 00 00 48 46 00 48 48 46 00 46 46 00 48 46 48 46 46 46 00 48 48 00 48 46 00 48 46 46 00 48 46 48 48 48 00 00 48 48 48 48 48 46 46 48 46 48 48 00 00 48 46 46 48 48 00 48 48 48 46 48 00 48 48 48 46 46 48 48 46 46 48 48 46 45 46 48 00 48 48 46 00 48 46 48 48 45 48 48 48 46 48 48 48 00 00 48 46 46 46 00 48 48 48 00 48 46 48 00 48 46 48 48 00 48 46 48 48 48 48 46 48 48 48 48 45 00 48 00 46 46 48 48 46 45 48 48 48 46 48 48 46 00 46 46 00 00 48 46 48 48 48 46 46 48 48 48 46 00 48 46 45 48 48 48 46 46 00 45 48 00 48 46 46 46 46 46 00 48 46 46 46 48 48 48 48 46 48 48 48 48 48 46 46 48 46 48 48 45 48 48 48 46 48 46 46 00 48 48 46 48 00 46 48 48 45 48 48 00 46 48 46 48 48 48 48 48 00 48 48 46 48 46 00 48 48 48 00 48 00 46 46 00 00 48 46 46 48 00 46 46 46 48 46 00 48 48 46 48 48 46 45 48 46 48 48 00 48 46 00 48 48 46 46 48 48 48 48 48 48 48 48 48 48 48 46 00 48 46 00 48 46 46 48 48 00 48 48 48 48 46 48 48 46 46 46 46 46 00 48 46 00 46 46 00 48 46 48 48 48 45 46 48 46 48 48 45 48 46 48 48 48 48 46 48 48 48 48 48 46 48 00 48 48 48 46 48 46 46 00 00 48 46 00 48 48 00 48 46 48 46 00 48 46 00 48 48 48 48 48 45 46 48 48 48 46 48 48 46 00 48 46 00 48 48 48 46 46 48 48 46 48 48 46 46 48 46 48 00 48 48 00 46 48 48 46 00 48 48 46 48 48 48 48 46 48 48 00 48 46 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 46 48 48 46 48 48 46 46 00 48 46 46 48 46 48 48 46 48 48 48 48 46 00 48 46 00 48 46 46 46 48 48 46 48 48 46 46
*/
