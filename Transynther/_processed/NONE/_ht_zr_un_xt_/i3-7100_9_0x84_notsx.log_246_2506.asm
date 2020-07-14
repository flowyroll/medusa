.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5f87, %r8
nop
nop
nop
nop
nop
sub $5187, %r10
mov $0x6162636465666768, %r12
movq %r12, (%r8)
nop
and %r13, %r13
lea addresses_WC_ht+0x573f, %r12
add %r14, %r14
mov (%r12), %rsi
nop
sub $10262, %r14
lea addresses_D_ht+0x188d7, %r14
nop
nop
nop
cmp %r12, %r12
mov (%r14), %esi
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0xdcd7, %rsi
lea addresses_UC_ht+0x11997, %rdi
nop
sub %r14, %r14
mov $125, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x61e9, %rsi
lea addresses_D_ht+0x26d7, %rdi
sub %r13, %r13
mov $127, %rcx
rep movsl
nop
dec %r10
lea addresses_D_ht+0x34af, %r8
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%r8)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x96d7, %rsi
lea addresses_UC_ht+0x60c7, %rdi
clflush (%rsi)
clflush (%rdi)
nop
cmp %r13, %r13
mov $22, %rcx
rep movsq
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x1cc56, %r10
nop
nop
nop
cmp $49920, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
sub $569, %rsi
lea addresses_A_ht+0x16127, %r10
nop
nop
nop
and $53435, %rsi
movups (%r10), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x86d7, %rsi
lea addresses_D_ht+0x69a7, %rdi
nop
nop
nop
nop
nop
lfence
mov $46, %rcx
rep movsw
nop
nop
nop
and $35739, %r12
lea addresses_WC_ht+0x42d7, %rsi
xor $28657, %r14
mov (%rsi), %r8w
sub $5826, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xa7d7, %rsi
lea addresses_UC+0x190d7, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rbp, %rbp
mov $45, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $46160, %r8

// Store
lea addresses_RW+0x6ed7, %rcx
nop
nop
cmp %r10, %r10
movb $0x51, (%rcx)
dec %rcx

// Faulty Load
lea addresses_A+0x6ed7, %rsi
nop
nop
nop
and $43595, %rbp
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'80': 3, '35': 1, '49': 2, '00': 232, '45': 7, '07': 1}
00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 07 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00
*/
