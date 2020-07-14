.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c86d, %rsi
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
cmp $56141, %rbp
lea addresses_WC_ht+0x505d, %rax
nop
nop
nop
cmp $13977, %r9
mov (%rax), %r13
dec %r13
lea addresses_UC_ht+0x7015, %rsi
lea addresses_D_ht+0x7b5d, %rdi
clflush (%rsi)
nop
nop
sub %r10, %r10
mov $61, %rcx
rep movsw
nop
nop
nop
nop
xor $29298, %rcx
lea addresses_WC_ht+0x5c05, %rsi
lea addresses_WC_ht+0x1475d, %rdi
add $60012, %rbp
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x11e5d, %r10
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
nop
cmp $96, %r13
lea addresses_WC_ht+0x1a1bd, %r13
nop
nop
add $29806, %rdi
movb (%r13), %r10b
add %rcx, %rcx
lea addresses_A_ht+0x156dd, %r13
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r13)
sub %r9, %r9
lea addresses_WC_ht+0xfedd, %r13
nop
nop
nop
nop
and $32505, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xe55d, %r13
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r13
movaps %xmm4, (%r13)
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0xb9b1, %r10
nop
nop
nop
dec %r13
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
xor $3398, %rdi
lea addresses_D_ht+0x1695d, %r10
nop
nop
nop
nop
nop
xor $24346, %rax
mov (%r10), %rdi
dec %r9
lea addresses_UC_ht+0x1d0b5, %rsi
lea addresses_WT_ht+0x1ee5d, %rdi
nop
nop
add %rax, %rax
mov $11, %rcx
rep movsq
nop
sub %r10, %r10
lea addresses_WT_ht+0xc95d, %rax
nop
nop
nop
nop
nop
xor $45204, %r13
movw $0x6162, (%rax)
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x6e71d000000003d1, %r9
sub $35892, %rax
movl $0x51525354, (%r9)
nop
nop
sub $27382, %r11

// Faulty Load
lea addresses_PSE+0x1195d, %r13
and %rsi, %rsi
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'33': 137}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
