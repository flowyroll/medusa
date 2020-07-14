.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1559b, %rsi
lea addresses_WT_ht+0x15507, %rdi
clflush (%rsi)
nop
nop
nop
cmp $8718, %r15
mov $64, %rcx
rep movsb
nop
sub $27595, %r8
lea addresses_WC_ht+0x11e57, %rbx
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rbx)
nop
cmp %r12, %r12
lea addresses_UC_ht+0x16813, %r12
nop
sub %r8, %r8
movb $0x61, (%r12)
nop
xor %r8, %r8
lea addresses_A_ht+0x16daa, %rsi
lea addresses_D_ht+0x170db, %rdi
xor $28722, %r15
mov $62, %rcx
rep movsl
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x1dd8b, %rdi
nop
nop
add %r15, %r15
movl $0x61626364, (%rdi)
inc %rbx
lea addresses_WC_ht+0xb09b, %r8
nop
nop
nop
nop
nop
add %r12, %r12
movw $0x6162, (%r8)
add $5591, %r15
lea addresses_A_ht+0x13c9b, %rsi
lea addresses_A_ht+0xb9b9, %rdi
nop
cmp %rbp, %rbp
mov $66, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x18f9b, %rsi
lea addresses_normal_ht+0x1b4cb, %rdi
clflush (%rsi)
nop
nop
xor $7778, %r8
mov $29, %rcx
rep movsl
nop
nop
nop
nop
nop
add $44258, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbx
push %rsi

// Faulty Load
mov $0x398add000000089b, %r14
clflush (%r14)
and $5987, %r13
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rbx
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'46': 2462, '00': 882, '48': 1989, '45': 2438}
00 46 00 45 45 46 00 00 45 00 45 46 45 48 45 48 46 46 46 46 46 46 00 45 48 45 46 46 45 46 45 00 45 46 00 45 48 45 46 46 45 48 48 48 46 45 45 45 45 46 00 00 45 48 48 48 45 46 45 46 45 45 46 48 45 45 48 45 00 48 45 46 45 00 46 45 46 46 45 46 48 48 46 48 45 00 45 46 45 46 45 46 46 46 45 48 45 45 48 00 48 45 48 45 46 45 48 48 46 00 46 45 46 45 48 48 46 48 00 48 48 46 48 46 45 48 46 45 00 45 46 00 46 46 48 45 48 48 48 46 46 45 46 46 46 46 45 48 48 46 45 46 48 48 48 46 45 48 00 46 00 00 45 00 46 45 45 46 46 45 46 46 46 45 45 46 00 45 46 00 00 00 45 48 45 46 46 48 46 45 48 45 48 45 48 45 00 45 45 45 45 45 00 48 48 45 46 45 45 45 46 45 46 45 46 48 46 45 00 45 00 45 45 00 48 46 48 45 45 46 48 45 46 48 45 48 48 45 48 45 46 00 45 48 46 45 48 00 48 45 48 46 45 45 46 48 48 48 48 48 45 00 45 45 48 46 45 46 48 46 45 46 46 46 00 48 45 00 45 45 45 45 45 45 45 45 45 46 45 45 46 45 46 46 46 48 00 48 45 48 46 46 46 48 48 46 45 48 45 48 46 48 46 46 45 46 45 48 46 00 45 48 00 45 48 46 00 45 00 46 46 45 46 45 45 46 46 00 48 46 45 45 48 45 00 00 46 46 00 46 46 00 46 46 00 46 00 45 46 45 46 45 46 48 45 46 45 48 48 45 46 48 46 46 46 48 48 48 46 45 46 48 46 00 00 48 45 48 45 46 46 48 45 45 46 46 45 45 45 48 45 48 45 46 45 00 46 48 45 00 48 46 48 45 45 45 00 45 00 46 00 46 45 46 45 46 48 45 46 45 48 45 45 48 45 46 48 46 46 45 48 48 48 45 46 48 46 45 45 46 46 46 46 00 46 46 45 48 45 48 48 45 46 45 46 45 45 48 46 48 45 48 00 48 46 45 46 48 46 00 00 45 45 48 45 48 48 45 46 48 46 45 46 00 45 45 45 46 46 48 45 46 45 46 46 46 46 48 48 45 45 46 00 46 45 45 45 48 45 46 00 48 48 48 48 45 48 45 46 00 46 46 46 45 46 48 48 48 45 46 48 46 46 00 48 46 46 48 45 48 00 48 45 45 46 46 48 46 48 45 45 45 48 48 46 45 48 48 48 46 48 45 46 45 45 46 45 48 45 45 46 48 45 45 46 45 46 46 00 46 48 45 45 48 46 46 45 46 46 45 45 45 45 48 46 45 46 45 46 45 48 46 46 46 48 46 00 45 48 48 45 46 00 46 45 45 45 00 45 48 46 46 45 46 45 46 48 48 46 46 45 45 45 45 48 48 45 46 48 46 46 48 46 46 46 46 46 00 46 00 48 46 46 45 48 48 45 46 46 45 46 45 48 48 46 48 46 48 46 46 48 45 48 48 48 48 45 48 46 46 45 45 45 48 45 48 46 46 45 00 45 46 48 48 45 46 45 45 45 46 48 48 48 45 46 45 46 00 46 45 46 45 48 45 46 46 48 48 46 46 46 45 46 46 00 45 45 00 46 48 46 48 46 45 45 00 46 48 48 45 48 45 46 48 48 45 48 00 45 46 46 48 45 46 46 45 48 48 45 48 46 45 48 45 00 48 46 00 46 45 45 48 46 46 45 46 45 46 46 46 46 45 46 46 45 48 48 46 46 46 45 45 48 45 45 48 48 45 45 46 00 48 48 48 46 46 48 45 48 45 46 46 48 45 45 45 46 45 48 46 48 48 45 00 46 45 46 48 48 45 46 46 45 46 48 45 46 46 48 45 46 48 00 48 46 00 48 46 45 00 00 48 46 00 45 48 48 45 00 45 48 46 45 46 46 45 45 45 45 46 45 45 48 48 46 46 46 00 46 46 45 48 46 46 45 48 45 48 45 45 46 46 46 48 45 46 45 45 45 48 45 46 46 46 45 45 00 45 48 00 45 45 48 46 46 45 46 00 45 46 00 45 48 48 45 46 46 45 00 48 45 45 45 48 46 45 45 46 00 48 46 45 00 45 46 48 45 45 45 45 46 46 48 46 46 45 00 46 48 45 45 45 45 48 00 48 48 45 46 45 45 48 48 48 48 46 46 48 48 46 48 45 45 46 48 00 45 46 46 46
*/
