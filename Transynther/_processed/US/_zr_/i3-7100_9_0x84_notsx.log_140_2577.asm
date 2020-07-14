.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x5f3, %rdx
clflush (%rdx)
xor %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdx)
sub %r12, %r12
lea addresses_A_ht+0x12863, %rdx
nop
nop
add %r10, %r10
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
lfence
lea addresses_D_ht+0xe463, %rsi
lea addresses_WC_ht+0x13ffb, %rdi
nop
nop
sub %r12, %r12
mov $102, %rcx
rep movsl
nop
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x1cc63, %rcx
nop
nop
nop
nop
sub %r14, %r14
mov (%rcx), %rdx
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xa63, %r12
nop
nop
nop
nop
nop
xor $5365, %rcx
movb $0x61, (%r12)
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1be63, %r10
clflush (%r10)
cmp %r14, %r14
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
and $35101, %rdi
lea addresses_D_ht+0x600f, %rsi
lea addresses_A_ht+0x1cfe3, %rdi
nop
sub $7696, %rdx
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $16262, %rdx
lea addresses_UC_ht+0x15063, %rsi
lea addresses_WC_ht+0x24e3, %rdi
nop
dec %rdx
mov $19, %rcx
rep movsw
nop
nop
xor $4573, %rsi
lea addresses_D_ht+0xe9, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
add $39825, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rsi

// Load
lea addresses_D+0x13a01, %rax
nop
add %r10, %r10
movb (%rax), %r13b
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_US+0x17263, %r10
add %rsi, %rsi
mov (%r10), %ax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 140}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
