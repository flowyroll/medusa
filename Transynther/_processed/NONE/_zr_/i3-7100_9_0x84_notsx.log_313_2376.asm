.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14c7, %r10
nop
cmp %r13, %r13
mov (%r10), %rbp
nop
sub %rbp, %rbp
lea addresses_D_ht+0xf927, %rsi
lea addresses_UC_ht+0x1cfad, %rdi
nop
nop
nop
nop
dec %r11
mov $111, %rcx
rep movsq
nop
nop
nop
nop
nop
add $12855, %rbp
lea addresses_WC_ht+0xb347, %rsi
lea addresses_D_ht+0x1eb47, %rdi
nop
and %r9, %r9
mov $62, %rcx
rep movsl
nop
nop
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x1693, %rsi
lea addresses_D_ht+0x12467, %rdi
nop
nop
nop
nop
and $54422, %rbp
mov $16, %rcx
rep movsb
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x805a, %rbp
nop
nop
nop
sub $17501, %r11
mov (%rbp), %r13d
nop
nop
and $35407, %r13
lea addresses_WT_ht+0x1e97f, %rsi
lea addresses_normal_ht+0x150b7, %rdi
nop
nop
nop
sub %r9, %r9
mov $120, %rcx
rep movsw
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x182e1, %rsi
lea addresses_normal_ht+0x1a747, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $36672, %r13
mov $62, %rcx
rep movsl
nop
nop
nop
xor $50295, %r11
lea addresses_WC_ht+0x2b47, %r9
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r9), %cx
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x12347, %r12
inc %r11
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
nop
sub $33925, %rdi

// Store
lea addresses_D+0xec67, %rdi
nop
xor $61425, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
cmp $53598, %r8

// Load
mov $0x524bfa0000000b47, %rdi
nop
nop
cmp $64632, %rsi
movb (%rdi), %r11b
nop
nop
nop
nop
nop
and $37040, %r11

// Faulty Load
lea addresses_A+0x8347, %r12
nop
nop
and %rsi, %rsi
mov (%r12), %edi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 313}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
