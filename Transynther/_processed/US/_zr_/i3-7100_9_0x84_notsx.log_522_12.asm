.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e375, %rsi
dec %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
inc %r9
lea addresses_D_ht+0xb465, %rsi
lea addresses_A_ht+0x1def5, %rdi
nop
sub %rax, %rax
mov $116, %rcx
rep movsq
inc %rsi
lea addresses_A_ht+0x7535, %rsi
lea addresses_normal_ht+0x8935, %rdi
nop
sub $50955, %r12
mov $102, %rcx
rep movsw
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x1ee35, %rsi
add $18544, %rdi
mov (%rsi), %r10w
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x8a1d, %r12
nop
nop
nop
dec %rdi
movw $0x6162, (%r12)
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x17663, %rsi
lea addresses_WC_ht+0xe935, %rdi
nop
sub $16514, %r10
mov $48, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_normal_ht+0x1d235, %rcx
nop
nop
add $17762, %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub $25898, %rdi
lea addresses_normal_ht+0x12d35, %rax
nop
nop
nop
nop
nop
dec %rdi
movups (%rax), %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x16535, %r12
nop
nop
nop
nop
nop
xor $62020, %rax
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x5191, %rcx
nop
nop
nop
nop
nop
inc %r10
mov (%rcx), %r9d
nop
add %r13, %r13
lea addresses_UC_ht+0x535e, %r12
nop
xor $32078, %r10
movb (%r12), %r9b
dec %r13
lea addresses_D_ht+0x1e4d5, %r12
nop
nop
nop
nop
and $31976, %r10
mov (%r12), %r9w
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x1549f, %rsi
lea addresses_UC_ht+0x171b3, %rdi
nop
nop
nop
nop
nop
add $28839, %r10
mov $33, %rcx
rep movsq
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x5d35, %rsi
nop
nop
xor $61097, %r12
mov (%rsi), %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rcx
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'00': 522}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
