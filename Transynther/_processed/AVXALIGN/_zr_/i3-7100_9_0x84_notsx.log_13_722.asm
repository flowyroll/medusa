.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1e496, %r10
add %rdx, %rdx
movb $0x61, (%r10)
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0xef1a, %rsi
lea addresses_A_ht+0xbed2, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $3, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x11aaa, %r15
nop
nop
nop
add $54349, %r8
movb (%r15), %cl
xor %r10, %r10
lea addresses_A_ht+0xd8da, %rsi
lea addresses_WT_ht+0x50ba, %rdi
nop
nop
nop
dec %r10
mov $29, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x184f4, %rdx
add $19040, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %rdx
movaps %xmm6, (%rdx)
nop
nop
cmp $33003, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x13b1a, %r10
and $4723, %rcx
movw $0x5152, (%r10)
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WC+0x971a, %r10
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%r10)
cmp %rbx, %rbx

// REPMOV
lea addresses_PSE+0x1c31a, %rsi
lea addresses_RW+0x1959a, %rdi
cmp $4502, %r12
mov $62, %rcx
rep movsl
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_WC+0x1331a, %rax
nop
nop
nop
xor %r10, %r10
vmovntdqa (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
