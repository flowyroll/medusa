.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15b74, %r14
cmp $48962, %rbx
movb $0x61, (%r14)
cmp %r13, %r13
lea addresses_UC_ht+0xc3cb, %rsi
lea addresses_UC_ht+0x13f0b, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $22, %rcx
rep movsb
nop
nop
nop
add $35384, %rsi
lea addresses_WC_ht+0x228b, %rsi
lea addresses_D_ht+0x1490d, %rdi
nop
nop
and $36179, %rbx
mov $114, %rcx
rep movsq
nop
cmp $22848, %r14
lea addresses_WC_ht+0x4b, %rsi
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rsi), %r8
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0xfd0b, %r13
nop
sub $25182, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x1a6eb, %rsi
lea addresses_WC_ht+0x17acb, %rdi
nop
xor $64678, %r8
mov $125, %rcx
rep movsq
nop
and %rcx, %rcx
lea addresses_A_ht+0x19029, %rsi
lea addresses_WT_ht+0xfc8b, %rdi
xor $39793, %r14
mov $52, %rcx
rep movsw
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rcx

// Faulty Load
mov $0x2b05f000000048b, %rcx
nop
add $21171, %r14
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'45': 7325, '44': 900, '00': 322, '48': 301}
00 00 00 45 45 45 00 45 45 48 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 44 44 45 45 44 45 45 44 45 45 45 44 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 48 45 45 44 45 44 45 45 45 45 45 45 00 45 45 45 45 45 44 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 48 45 45 45 44 45 45 45 45 45 44 45 45 45 45 48 45 45 45 44 45 45 45 45 45 44 44 48 45 45 45 45 00 45 45 45 45 45 45 44 45 45 45 45 45 45 45 48 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 44 45 45 45 45 48 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 48 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 00 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 44 45 45 44 45 45 45 45 48 44 45 44 44 45 45 45 45 45 45 45 44 45 48 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 00 45 45 45 45 45 45 45 44 45 45 45 44 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 00 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 44 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 48 45 00 45 45 45 45 45 45 45 00 45 48 45 45 45 45 45 48 45 44 45 45 45 44 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 44 45 00 45 45 45 45 48 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 48 45 45 44 45 45 45 45 48 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 48 45 45 45 45 45 45 48 45 45 45 45 45 48 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 48 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 00 45 45 44 44 45 45 45 45 45 45 48 44 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 00 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 44 45 45 45 45 44 45 45 45 45 48 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 44 45 48 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45
*/
