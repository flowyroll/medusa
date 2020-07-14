.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd0f, %rsi
lea addresses_A_ht+0x14e0f, %rdi
clflush (%rsi)
and $36136, %rbp
mov $76, %rcx
rep movsb
nop
nop
nop
add $20413, %r11
lea addresses_UC_ht+0x13a4f, %r12
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
xor $52272, %rsi
lea addresses_WC_ht+0x7e0f, %rsi
lea addresses_D_ht+0x179a7, %rdi
nop
nop
nop
sub $36984, %r13
mov $16, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x10a0f, %rdi
nop
xor %rcx, %rcx
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r12
nop
cmp %r12, %r12
lea addresses_normal_ht+0x12a7f, %rsi
lea addresses_normal_ht+0x6f27, %rdi
nop
nop
nop
nop
dec %r8
mov $97, %rcx
rep movsb
nop
and %r8, %r8
lea addresses_WC_ht+0x2e0f, %r12
nop
nop
nop
lfence
mov $0x6162636465666768, %r13
movq %r13, (%r12)
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0xe00f, %rdx
nop
nop
nop
nop
nop
and %r15, %r15
mov (%rdx), %di
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 58}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
