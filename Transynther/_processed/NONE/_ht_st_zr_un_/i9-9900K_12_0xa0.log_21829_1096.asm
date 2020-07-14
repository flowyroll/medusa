.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x796d, %rsi
lea addresses_A_ht+0xdced, %rdi
sub $16877, %r11
mov $67, %rcx
rep movsb
and %rdx, %rdx
lea addresses_normal_ht+0x16ed, %rsi
lea addresses_normal_ht+0x12ed, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r8, %r8
mov $102, %rcx
rep movsq
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1c9ad, %rsi
lea addresses_A_ht+0xbeed, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r12
mov $25, %rcx
rep movsw
sub %rsi, %rsi
lea addresses_normal_ht+0x6e1d, %rdx
nop
and $24989, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdx)
and $18221, %r12
lea addresses_A_ht+0x1680d, %rcx
nop
nop
inc %r8
mov (%rcx), %dx
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x19eed, %rsi
clflush (%rsi)
nop
nop
xor $54023, %rdx
mov (%rsi), %r12
nop
cmp $21959, %rsi
lea addresses_WT_ht+0x194ed, %r12
nop
nop
nop
nop
nop
add $58678, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x13a55, %rdx
nop
nop
nop
nop
and $7746, %rcx
mov (%rdx), %r11
nop
nop
inc %rdx
lea addresses_WT_ht+0x80ed, %rdi
nop
nop
nop
nop
lfence
movb $0x61, (%rdi)
nop
nop
xor $3208, %rsi
lea addresses_D_ht+0x1d2bd, %rsi
lea addresses_normal_ht+0xbaed, %rdi
add $56701, %r13
mov $62, %rcx
rep movsb
nop
nop
xor $61558, %rdx
lea addresses_WC_ht+0x189ad, %rcx
nop
nop
nop
nop
add $10029, %r8
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
sub $26334, %rcx
lea addresses_WT_ht+0x44ed, %rsi
lea addresses_WT_ht+0x3aed, %rdi
nop
and %r8, %r8
mov $34, %rcx
rep movsl
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x51cf, %rsi
lea addresses_WC_ht+0x1c20f, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $37, %rcx
rep movsw
nop
nop
nop
xor $63765, %r12
lea addresses_D_ht+0xa7cd, %rsi
nop
nop
nop
nop
cmp $9862, %rdi
movb $0x61, (%rsi)
nop
and $54062, %r13
lea addresses_WC_ht+0x13f80, %r13
inc %r11
movups (%r13), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
add $16557, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbx
push %rdx
push %rsi

// Faulty Load
lea addresses_WC+0xe6ed, %rsi
add $11480, %rdx
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbx
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'44': 1235, '48': 626, '49': 9631, '08': 2, '00': 9365, '46': 964, '3f': 4, 'ff': 2}
49 48 49 00 00 49 49 48 00 00 49 49 00 00 49 49 49 00 00 00 49 49 00 00 49 49 49 49 44 00 49 49 46 00 00 49 46 00 00 00 00 00 49 00 00 00 49 49 49 00 00 3f 00 00 49 49 49 48 00 49 44 00 49 49 00 00 49 49 00 00 00 49 48 00 00 49 49 49 44 49 49 46 00 00 49 49 48 00 00 49 44 49 49 00 00 00 49 49 49 00 00 49 49 00 00 00 00 49 46 00 00 00 00 49 49 49 48 00 00 00 49 00 00 00 00 49 48 00 49 49 00 00 49 49 49 44 00 49 00 00 49 49 00 00 49 49 00 49 49 49 46 00 49 49 00 00 49 49 49 44 00 00 49 44 00 48 49 44 00 49 49 49 44 00 49 00 49 49 00 00 00 00 49 49 49 49 49 49 00 00 49 00 00 00 49 49 49 48 00 00 49 49 00 00 00 00 49 00 00 00 49 49 48 49 44 00 00 49 44 00 00 49 49 00 49 49 49 44 49 49 49 00 00 49 49 49 49 46 00 00 49 00 49 49 00 49 49 00 49 49 00 00 49 48 49 49 00 49 46 44 00 00 49 49 00 49 00 00 49 44 00 00 49 49 00 00 49 49 44 00 49 49 49 48 00 00 49 49 49 49 49 00 00 49 49 49 44 00 49 49 44 00 49 49 46 00 00 49 49 00 49 49 46 00 00 49 49 00 00 00 00 49 49 49 00 49 49 44 00 00 00 49 00 00 00 49 49 00 00 00 00 49 49 44 49 49 46 00 49 49 46 00 00 49 49 49 44 49 49 00 00 00 00 49 49 00 00 00 49 00 00 49 49 00 49 49 44 00 00 49 49 00 00 00 00 00 49 46 00 00 49 46 00 00 00 00 00 49 46 00 00 49 49 44 00 49 46 00 00 00 00 49 49 49 44 00 00 49 49 00 00 00 00 49 49 00 00 00 49 49 00 00 00 00 00 49 49 00 00 00 49 49 00 49 48 49 00 49 49 49 44 00 00 49 48 00 00 49 46 00 49 48 00 49 49 49 48 00 00 49 49 00 00 00 49 49 00 00 49 44 00 00 49 49 44 49 49 49 44 49 49 49 44 00 49 49 49 46 00 00 49 00 00 49 49 44 00 49 00 00 49 44 00 48 49 49 00 00 49 49 00 00 49 48 49 00 00 00 00 49 49 49 00 00 00 00 49 44 49 49 49 49 49 00 49 49 44 00 00 49 49 00 49 49 00 00 49 49 49 46 00 49 49 44 00 49 49 48 49 49 48 00 00 49 49 44 00 00 49 49 48 00 49 00 00 49 46 48 49 49 44 00 00 00 49 49 44 00 49 49 00 00 00 49 49 00 00 00 49 49 44 49 49 00 00 49 49 49 00 00 00 00 49 49 49 44 00 00 49 49 49 00 49 46 00 00 00 00 49 49 44 00 49 49 00 00 49 44 00 49 49 46 00 49 49 00 00 49 49 44 00 49 49 44 44 00 00 49 49 00 00 49 46 00 49 48 00 00 49 49 00 00 00 49 46 00 00 00 49 49 00 00 49 49 46 49 49 49 49 00 49 49 46 00 49 49 00 00 49 44 49 49 00 00 49 49 49 00 00 00 49 49 00 00 00 00 49 49 00 49 49 00 00 49 49 00 00 49 49 00 00 49 49 49 00 00 49 49 00 00 49 00 49 49 49 49 00 00 49 49 49 49 00 00 48 49 49 00 00 00 49 49 49 00 00 49 49 49 00 00 49 49 44 00 49 44 00 00 00 00 49 49 00 49 49 49 46 00 00 49 49 49 46 48 00 49 49 00 49 49 49 44 00 00 49 46 00 49 49 00 00 00 49 44 00 00 49 46 49 49 00 00 49 49 49 00 00 49 49 00 00 49 49 00 00 00 49 46 48 00 00 00 49 49 00 00 49 00 49 46 00 00 49 49 49 44 00 00 49 49 00 00 49 49 00 00 49 49 49 00 49 49 46 00 00 49 49 46 00 49 49 49 00 00 00 49 00 00 00 00 49 49 49 44 00 00 49 49 49 44 00 00 49 49 49 00 00 00 49 49 44 00 00 49 49 00 49 49 49 49 00 00 00 00 49 49 49 00 00 00 49 46 00 49 49 49 00 00 00 49 00 49 49 00 49 49 49 49 00 00 49 49 00 00 00 49 00 00 00 49 49 00 00 00 00 49 49 49 48 00 00 00 49 49 49 46 00 00 49 00 00 49 00 00 49 49 00 00 49 49
*/
