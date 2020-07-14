.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x45fb, %r9
nop
nop
nop
xor %rax, %rax
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x15fb, %rsi
lea addresses_UC_ht+0x163f3, %rdi
nop
nop
nop
nop
nop
add $25686, %r11
mov $32, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x9dfb, %r11
nop
nop
nop
nop
xor $49447, %rdi
movw $0x6162, (%r11)
cmp $56066, %r14
lea addresses_normal_ht+0x15e6f, %rcx
nop
nop
nop
nop
nop
dec %r10
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp $12183, %rsi
lea addresses_WC_ht+0x1c71b, %rsi
lea addresses_WC_ht+0x167fb, %rdi
nop
nop
nop
nop
nop
xor $31874, %r10
mov $65, %rcx
rep movsw
nop
cmp $35911, %rsi
lea addresses_A_ht+0xd9fb, %r11
nop
nop
nop
nop
xor $23832, %rsi
movb $0x61, (%r11)
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0xd9fb, %rsi
lea addresses_A_ht+0xb6fb, %rdi
nop
nop
nop
nop
dec %r9
mov $58, %rcx
rep movsl
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x597b, %r10
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%r10)
nop
nop
nop
nop
nop
cmp $20466, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x25fb, %r9
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'3c': 1, '00': 43, '48': 1, '10': 3}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 10 00 48 00 00 00 00 00 00 00 00 00 00 3c 10 00
*/
