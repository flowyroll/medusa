.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e3bf, %r12
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%r12)
cmp %r8, %r8
lea addresses_WT_ht+0x10cdf, %rsi
lea addresses_A_ht+0x8f7f, %rdi
clflush (%rdi)
sub $41525, %r12
mov $122, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $16085, %rsi
lea addresses_UC_ht+0x1edbf, %r9
nop
nop
nop
nop
sub %r8, %r8
mov (%r9), %r12w
nop
and %rdi, %rdi
lea addresses_A_ht+0x1a7bf, %rdi
nop
sub %r10, %r10
movb (%rdi), %r12b
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0xb32f, %r8
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0xcb3f, %rsi
lea addresses_normal_ht+0x693f, %rdi
nop
xor $41487, %r13
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
add $26204, %rdi
lea addresses_WC_ht+0xbbf, %r8
nop
nop
nop
xor %r13, %r13
mov (%r8), %r12
nop
nop
nop
nop
and $35190, %rcx
lea addresses_normal_ht+0x12d1f, %rdi
nop
nop
dec %r8
mov (%rdi), %rsi
nop
inc %rcx
lea addresses_D_ht+0x44ef, %r12
nop
nop
dec %rsi
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x144bf, %r8
clflush (%r8)
nop
sub %rdx, %rdx
movl $0x51525354, (%r8)
nop
nop
nop
xor $45751, %rbp

// Load
lea addresses_D+0x18af7, %rax
nop
nop
nop
nop
inc %rdi
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
nop
dec %rdi

// REPMOV
lea addresses_RW+0xdbf, %rsi
mov $0x11a7d30000000bbf, %rdi
nop
xor %rdx, %rdx
mov $28, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_US+0x193bf, %rdi
nop
nop
nop
sub %rcx, %rcx
mov (%rdi), %ebp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'60': 10, '28': 55, '3c': 1, '48': 2, '32': 124, '49': 8, '00': 1184, '45': 1, '36': 2}
00 32 32 00 00 32 32 32 32 32 32 32 32 00 00 32 00 00 32 32 00 32 32 00 00 00 32 32 32 00 32 00 00 00 00 00 32 00 32 60 00 00 00 00 32 32 00 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 00 00 00 32 32 00 32 32 32 32 32 32 32 32 32 32 00 32 60 60 32 00 32 00 32 32 00 32 00 32 00 28 00 00 00 00 49 00 28 00 32 32 32 00 60 00 00 45 00 60 32 00 28 00 00 28 00 00 49 32 28 00 00 00 00 00 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 28 00 00 00 28 00 00 00 28 00 00 00 00 00 60 00 00 00 00 00 00 28 32 32 32 00 28 32 00 28 00 00 28 32 28 32 32 00 28 00 00 32 28 00 32 00 28 00 28 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 28 28 00 32 00 00 00 28 28 00 32 00 32 00 00 32 32 49 00 32 00 28 28 00 00 32 32 00 00 00 32 00 60 32 00 32 28 32 32 00 00 32 00 32 32 32 32 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 00 32 32 00 00 00 32 00 00 00 00 00 00 28 00 00 00 00 00 00 00 28 00 00 00 28 28 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 32 28 48 00 36 60 00 32 32 3c 32 28 00 00 00 00 00 00
*/
