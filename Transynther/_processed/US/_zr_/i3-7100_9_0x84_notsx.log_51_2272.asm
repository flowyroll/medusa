.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x2d40, %rdi
nop
cmp $49533, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rdi)
cmp $61610, %rdi
lea addresses_D_ht+0xfec0, %r12
nop
nop
nop
nop
nop
sub $44681, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x12ac0, %rsi
lea addresses_UC_ht+0xb160, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $69, %rcx
rep movsb
sub $34906, %r15
lea addresses_A_ht+0x144c0, %rdx
nop
nop
xor $5793, %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xe5c0, %rdi
clflush (%rdi)
nop
nop
cmp %rdx, %rdx
mov (%rdi), %cx
sub %rsi, %rsi
lea addresses_D_ht+0xbf40, %rsi
lea addresses_WT_ht+0xbd40, %rdi
nop
nop
nop
dec %r12
mov $93, %rcx
rep movsq
xor $41407, %rsi
lea addresses_normal_ht+0x90c0, %r8
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, (%r8)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1a9c0, %rsi
lea addresses_A_ht+0x184d8, %rdi
cmp $56165, %r10
mov $25, %rcx
rep movsb
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x1a544, %rdx
nop
nop
inc %r12
movl $0x51525354, (%rdx)
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_US+0x118c0, %r10
nop
nop
nop
nop
nop
inc %r15
movb (%r10), %r12b
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'00': 51}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
