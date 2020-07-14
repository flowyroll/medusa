.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19e92, %rbp
nop
nop
nop
nop
xor $21689, %rdx
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
dec %r8
lea addresses_UC_ht+0x51f2, %r8
xor $18028, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x13bf2, %rdx
nop
nop
nop
nop
and %r13, %r13
mov (%rdx), %ebp
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1d2f2, %rsi
lea addresses_normal_ht+0xc740, %rdi
nop
nop
nop
nop
sub $32699, %rdx
mov $39, %rcx
rep movsq
nop
nop
nop
inc %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdx

// Load
lea addresses_D+0xb5f2, %r13
nop
cmp $59651, %r12
mov (%r13), %r11
nop
nop
xor $34292, %r13

// Faulty Load
lea addresses_WC+0x187f2, %rcx
cmp %r12, %r12
movaps (%rcx), %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'00': 18870, '99': 1, '44': 2958}
00 44 44 00 00 44 00 00 00 44 00 00 00 00 00 44 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 44 00 00 44 00 00 00 00 44 00 00 44 00 44 44 00 44 44 00 44 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 44 00 00 44 44 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 00 00 44 00 44 00 44 00 00 00 00 00 44 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 00 44 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 00 44 44 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 44 44 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 44 44 00 44 44 00 44 00 00 00 00 00 00 00 44 44 44 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 44 00 44 44 00 44 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 44 44 44 00 00 44 00 00 00 44 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 44 00 44 00 00 44
*/
