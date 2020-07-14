.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x17d2f, %rsi
lea addresses_D_ht+0xb8f, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $1292, %rbx
mov $54, %rcx
rep movsl
dec %r8
lea addresses_UC_ht+0x4537, %r15
nop
nop
sub $23819, %r10
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm1
vpextrq $1, %xmm1, %r8
nop
add %rcx, %rcx
lea addresses_WC_ht+0x4a17, %r8
nop
nop
add $14487, %rdi
mov (%r8), %rsi
nop
and %r10, %r10
lea addresses_WT_ht+0x1734f, %rsi
lea addresses_A_ht+0x1e9ac, %rdi
xor %rdx, %rdx
mov $61, %rcx
rep movsq
nop
nop
nop
nop
and $52506, %r10
lea addresses_UC_ht+0x111ff, %rdi
inc %rdx
mov (%rdi), %r15d
nop
inc %r8
lea addresses_UC_ht+0x108ef, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
and $21174, %r10
lea addresses_WC_ht+0x1a113, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r10), %r8d
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1efcf, %rsi
nop
nop
nop
nop
nop
add $62716, %r8
mov (%rsi), %edx
nop
nop
nop
sub $35839, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rsi

// Faulty Load
mov $0x42a3eb0000000f4f, %rsi
nop
nop
dec %r10
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'49': 5880, '00': 7521, '48': 8366, '47': 62}
00 49 00 49 00 48 48 48 49 49 48 48 00 48 00 49 48 00 00 48 00 48 48 00 48 00 49 00 49 49 00 00 48 48 00 00 48 48 48 48 48 00 48 48 48 49 00 49 48 00 49 48 00 48 48 49 00 00 49 00 49 00 00 00 00 49 49 00 49 48 48 49 48 00 48 48 49 00 49 00 48 49 00 00 48 48 49 00 48 00 48 48 49 48 48 48 48 00 00 48 48 49 49 48 49 48 48 49 49 00 00 49 48 49 48 48 48 00 00 48 00 48 48 00 48 00 49 48 00 49 00 48 49 00 00 49 00 49 00 00 00 49 49 00 49 48 48 49 48 48 48 48 48 48 00 48 49 49 00 49 48 48 49 48 48 49 48 00 00 00 48 49 48 00 00 48 49 49 48 48 49 48 49 48 48 49 48 48 00 00 48 00 00 00 48 49 48 48 49 48 48 48 48 48 48 48 00 00 00 49 48 00 48 49 00 49 00 00 48 49 48 48 49 00 48 49 48 48 49 48 49 49 49 00 48 48 49 48 48 49 48 00 49 00 48 48 00 00 48 48 48 49 48 48 47 00 49 48 48 48 48 49 48 48 00 48 00 48 49 48 49 48 49 48 48 00 49 00 49 00 00 48 48 49 48 48 49 49 48 00 00 48 48 49 00 00 49 48 00 49 00 49 00 00 48 49 00 49 00 00 49 48 48 00 49 00 00 48 49 48 48 00 49 48 00 49 48 48 00 48 48 00 48 48 00 00 48 00 00 00 49 49 00 00 48 48 49 49 48 48 00 49 00 00 48 48 48 49 00 00 00 00 00 49 48 49 00 49 00 00 48 49 00 49 48 48 48 00 00 48 00 49 00 49 00 00 49 00 49 48 48 49 49 48 00 00 48 49 49 48 49 48 00 00 00 48 49 48 48 49 49 49 48 48 00 00 48 49 00 48 00 48 48 49 48 48 49 00 00 49 00 48 00 00 00 49 48 00 49 00 49 49 48 48 49 48 00 49 00 00 00 49 00 00 00 00 48 49 49 00 00 48 00 48 48 49 00 48 48 48 48 48 00 00 48 00 49 48 49 49 48 48 49 49 48 00 49 00 00 00 49 48 48 48 00 00 48 00 49 48 48 48 48 00 48 48 49 49 48 00 49 00 48 00 49 48 00 00 48 00 00 00 00 00 48 48 48 48 49 49 48 00 49 48 00 00 00 00 48 48 00 48 00 49 49 49 48 00 48 48 49 48 48 49 48 48 47 00 00 00 49 00 49 00 00 49 49 48 48 00 00 48 49 00 00 49 48 00 49 49 48 48 49 48 00 49 48 00 48 48 49 49 48 48 49 48 48 48 49 48 48 49 49 00 00 48 00 00 48 49 48 00 49 00 00 48 49 49 48 48 00 49 48 48 00 00 48 48 49 48 48 00 00 00 48 00 48 00 49 48 48 48 00 49 00 49 48 48 00 48 00 48 49 49 49 48 48 49 00 49 48 00 00 49 48 00 49 00 49 00 00 49 00 48 49 48 00 49 48 00 49 48 00 48 48 49 00 00 49 48 49 00 49 00 00 49 00 48 00 48 48 49 00 48 49 49 00 00 00 49 00 49 00 00 48 48 49 00 48 48 48 48 00 00 48 48 48 49 00 00 49 48 49 48 48 48 48 49 48 49 48 48 49 48 48 00 00 48 48 48 00 00 48 49 49 48 00 00 00 48 00 48 48 00 49 49 48 49 48 48 48 48 48 00 48 00 00 00 49 00 49 00 48 48 49 48 48 49 48 48 49 48 48 49 48 00 49 48 49 48 48 00 00 00 49 00 48 49 00 48 49 48 48 49 00 48 49 00 00 49 00 00 49 00 00 49 48 48 00 49 47 00 49 49 00 00 48 48 48 48 00 48 48 49 00 00 48 48 49 00 00 49 48 00 00 00 48 48 00 00 48 49 48 00 49 00 49 00 00 49 48 48 00 00 00 49 00 00 47 00 00 00 49 49 48 48 48 48 48 00 48 48 49 48 48 48 48 49 49 48 00 49 48 48 48 48 00 48 00 00 48 48 49 48 00 00 49 49 00 00 49 00 00 49 48 00 49 48 48 48 48 48 48 49 00 00 48 00 49 48 49 00 00 49 48 48 48 48 00 00 00 49 00 00 49 00 48 48 48 00 49 48 48 49 00 00 48 48 49 49 48 00 48 48 49 48 48 00 48 00 49 48 00 48 00 49 48 00 00 48 49 48 00 49 48 00 49 49 48 00
*/
