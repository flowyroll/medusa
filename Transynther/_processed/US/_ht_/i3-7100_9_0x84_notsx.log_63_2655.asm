.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a3ad, %r14
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x1ac1f, %rsi
lea addresses_D_ht+0x11eed, %rdi
and $1603, %rbp
mov $83, %rcx
rep movsq
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x35ad, %rcx
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
xor $46691, %rcx
lea addresses_WT_ht+0x116ad, %rcx
nop
nop
nop
nop
sub $52050, %rsi
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xccad, %r14
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x114ad, %r14
clflush (%r14)
nop
add $27487, %r8
movw $0x6162, (%r14)
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1eabd, %rsi
lea addresses_WC_ht+0x1c78d, %rdi
nop
nop
nop
nop
nop
add $9969, %r12
mov $17, %rcx
rep movsq
nop
nop
xor $20624, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0x88ad, %r13
nop
nop
nop
nop
nop
add %rbx, %rbx
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'49': 34, '45': 29}
49 45 45 49 45 45 49 49 45 45 49 45 49 49 49 45 49 49 49 45 45 49 49 49 45 49 45 49 49 45 45 45 49 45 45 45 45 45 49 49 49 49 49 49 45 45 49 45 45 49 49 49 49 45 45 45 45 49 49 49 49 49 45
*/
