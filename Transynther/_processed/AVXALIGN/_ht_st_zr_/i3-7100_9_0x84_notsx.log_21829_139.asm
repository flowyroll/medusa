.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xfc02, %rsi
lea addresses_WT_ht+0xfe3a, %rdi
nop
nop
nop
nop
dec %r8
mov $5, %rcx
rep movsb
add $1783, %r14
lea addresses_UC_ht+0xf34a, %rsi
lea addresses_D_ht+0x19e1d, %rdi
nop
xor %rbp, %rbp
mov $103, %rcx
rep movsb
nop
xor %r14, %r14
lea addresses_WT_ht+0x1c15a, %rcx
nop
and %rax, %rax
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xce5a, %rsi
lea addresses_WT_ht+0x973a, %rdi
nop
sub %rax, %rax
mov $114, %rcx
rep movsw
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x1753a, %rsi
lea addresses_normal_ht+0x15aba, %rdi
clflush (%rdi)
nop
inc %rdx
mov $123, %rcx
rep movsw
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xafca, %rsi
lea addresses_D_ht+0xe73a, %rdi
add $53741, %rax
mov $103, %rcx
rep movsq
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1faba, %rsi
lea addresses_D+0x66a, %rdi
nop
xor %rax, %rax
mov $89, %rcx
rep movsq
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
mov $0x2e5ccc000000073a, %rbx
cmp %r8, %r8
mov (%rbx), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'46': 4, '00': 19065, '34': 2759, '49': 1}
00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 34 00 00 00 00 00 34 34 00 00 00 00 00 00 00 34 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 34 34 00 00 00 00 00 00 00 00 00 00 34 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 34 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 34 34 00 00 00 00 00 34 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 34 00 00 00 34 00 34 00 00 00 00 00 00 00 34 34 00 00 34 34 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 34 34 00 00 00 00 00 00 00 00 34 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 34 34 00 00 00 00 34 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 34 00 34 00 00 00 00 00 34 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 34 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 34 34 00 00 00 00 34 34 00 00 00 00 34 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 34 34 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 34 00 00 00 00 00 34 34 00 00 00 00 00 00 00 00 34 00 00 00 00 34 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 34 00 00 00 00 00 00 00 00 00 00 00 34 34 00 00 00 00 00 00 34 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 34 00 00 00 00 00 34 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 34 34 34 00 00 34 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 34 00 00 00 00 34 00 00 00 00 00 00 34 00 34 00 00 00 00 00 00 00 00 00 34 00
*/
