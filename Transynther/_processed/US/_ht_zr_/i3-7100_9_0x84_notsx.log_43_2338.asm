.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x577f, %r12
nop
add %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%r12)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x6d7f, %rsi
lea addresses_normal_ht+0x2aff, %rdi
nop
nop
nop
nop
dec %r12
mov $109, %rcx
rep movsq
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1479f, %rsi
lea addresses_A_ht+0xec7f, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $63, %rcx
rep movsw
nop
nop
xor %r13, %r13
lea addresses_A_ht+0xdfc7, %r9
xor $12870, %rdx
movl $0x61626364, (%r9)
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x4f37, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
sub $54746, %rdx
lea addresses_WT_ht+0x47fb, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $35649, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
mfence
lea addresses_WC_ht+0xa07f, %rsi
lea addresses_UC_ht+0x1e20d, %rdi
nop
nop
nop
and $48972, %r10
mov $57, %rcx
rep movsw
nop
nop
xor $9752, %r12
lea addresses_WC_ht+0xf47f, %r9
nop
add %r10, %r10
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x77ff, %r13
nop
nop
nop
sub %rdx, %rdx
movb $0x61, (%r13)
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x27f, %rdx
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rdx
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'49': 9, '00': 5, '45': 1, '44': 28}
00 44 49 44 49 44 00 44 44 44 44 45 44 44 44 44 49 44 49 44 44 44 44 44 44 00 00 44 44 44 49 44 44 44 00 44 44 49 49 44 44 49 49
*/
