.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1bdc2, %r9
nop
nop
nop
nop
and $17980, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
xor $41907, %r12
lea addresses_WC_ht+0x124a5, %rsi
lea addresses_A_ht+0x7d, %rdi
nop
add $62685, %rdx
mov $62, %rcx
rep movsl
nop
nop
nop
cmp $39488, %r12
lea addresses_normal_ht+0xcfd, %rsi
lea addresses_D_ht+0x12dd1, %rdi
clflush (%rsi)
nop
nop
nop
sub $47407, %r14
mov $82, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0xfd, %rsi
nop
sub $35991, %r14
mov (%rsi), %edi
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0xf32d, %rsi
lea addresses_normal_ht+0xa585, %rdi
nop
sub $18394, %r8
mov $62, %rcx
rep movsl
nop
nop
cmp $187, %r14
lea addresses_D_ht+0x1c440, %r12
nop
nop
nop
sub $43591, %r9
movl $0x61626364, (%r12)
add %r8, %r8
lea addresses_D_ht+0x129f5, %rsi
lea addresses_WC_ht+0x1c8fd, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r9, %r9
mov $96, %rcx
rep movsb
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rdi

// Faulty Load
lea addresses_UC+0x1c8fd, %r10
sub $56148, %rax
movaps (%r10), %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'46': 586, '00': 5936, '48': 11739, '45': 1785, '44': 1783}
00 00 48 48 48 00 00 44 48 48 48 48 48 48 48 48 48 48 48 00 00 44 00 45 00 00 46 48 48 48 48 48 00 48 48 00 48 44 48 45 00 48 00 00 48 48 45 48 48 48 48 48 45 44 44 48 48 48 00 48 44 00 48 48 48 00 00 48 00 00 00 44 48 45 00 48 44 45 48 48 48 48 48 48 00 00 48 44 44 48 48 48 48 00 00 48 48 00 48 48 00 45 00 48 44 44 48 48 00 00 48 48 44 48 48 48 48 00 48 48 48 00 00 48 48 00 48 00 48 45 48 44 00 45 00 48 44 48 00 48 00 48 00 48 48 48 45 00 48 48 48 48 00 48 48 00 48 00 46 00 48 48 00 48 00 00 00 48 48 48 00 00 00 00 00 44 00 48 48 00 48 00 00 00 46 44 48 48 00 48 44 45 48 00 00 46 48 44 45 46 44 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 00 48 00 00 48 46 00 48 48 48 00 48 00 44 48 44 00 48 48 46 48 48 48 46 48 00 45 00 44 48 44 48 48 00 48 48 00 48 00 00 00 48 48 48 48 48 48 48 48 00 48 00 00 48 00 48 48 48 00 00 46 48 00 00 48 00 46 00 48 48 00 00 44 00 48 00 48 48 00 48 48 48 00 00 48 00 48 48 48 00 00 00 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 44 00 48 48 48 46 48 00 00 00 48 48 44 48 48 48 48 48 48 48 44 00 00 48 48 48 48 48 48 44 48 00 44 48 48 48 00 44 00 48 00 44 44 00 00 44 44 44 48 48 48 48 48 48 48 48 48 00 00 48 48 00 00 48 00 44 00 48 48 44 48 00 48 00 44 00 48 48 48 00 48 48 48 44 48 46 48 48 48 44 00 45 48 48 48 48 48 00 46 48 00 00 48 48 44 45 00 48 48 00 48 45 48 48 00 00 00 45 48 48 48 48 45 48 46 48 48 48 48 48 00 48 48 48 48 48 45 48 00 48 48 44 45 48 48 48 48 00 48 48 48 48 44 00 46 48 00 45 48 00 48 46 45 45 45 00 48 48 48 48 48 00 48 00 48 00 00 48 45 44 48 48 48 00 45 45 44 48 48 00 45 48 48 00 00 45 45 46 00 48 48 48 48 00 48 48 48 00 48 00 45 46 00 48 48 48 48 44 00 48 45 45 00 48 48 48 48 44 48 48 44 45 45 48 44 48 48 48 45 48 48 48 00 00 48 48 00 00 00 48 45 00 48 48 48 00 48 00 44 45 00 48 48 48 00 45 00 48 44 46 48 48 44 00 00 00 00 48 48 48 48 48 00 00 48 00 45 48 48 48 48 48 00 45 00 48 48 48 48 48 48 48 48 00 44 45 48 00 00 48 48 48 48 48 48 44 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 45 48 00 45 48 48 48 00 48 48 48 00 46 00 48 48 48 48 48 44 00 00 48 48 00 46 48 48 00 48 44 00 48 00 46 48 48 48 44 48 46 48 45 45 48 44 44 00 48 00 48 48 48 00 48 00 00 48 44 48 48 48 48 48 48 48 48 00 48 00 00 00 00 00 46 44 48 48 48 00 48 48 48 48 45 00 48 00 45 00 48 48 48 48 48 48 48 00 48 48 48 48 48 00 44 44 46 48 48 00 00 00 48 48 48 48 48 48 45 48 48 00 48 48 00 48 48 48 44 48 48 00 45 00 48 48 48 44 44 00 00 00 45 48 44 48 44 00 00 00 48 44 48 48 48 48 48 00 48 48 44 48 48 48 44 48 48 48 00 44 48 48 48 00 00 48 00 44 48 48 48 48 00 45 45 48 00 48 00 48 48 48 48 48 44 00 48 44 00 00 48 48 48 48 45 45 45 00 48 00 48 48 44 00 48 48 48 44 00 48 48 48 48 45 48 48 00 45 48 00 48 48 48 48 00 00 45 48 48 48 48 48 48 00 00 00 48 48 48 48 48 44 48 48 44 48 48 00 00 45 48 48 44 00 00 48 00 00 00 00 45 00 46 00 48 00 48 00 45 00 48 00 45 48 48 48 48 45 48 48 00 45 45 00 48 00 00 00 44 48 48 48 00 48 48 48 48 00 00 45 45 00 48 44 00 44 00 48 00 48 48 44 48 44 48 00 46 00 48 48 44 48 48 44 00 45 48 48 48 48 48 48 44
*/
