.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18c5d, %rsi
lea addresses_WC_ht+0x5e5d, %rdi
clflush (%rdi)
nop
nop
nop
and %r9, %r9
mov $76, %rcx
rep movsq
cmp $21098, %rdi
lea addresses_A_ht+0x16ccd, %r9
nop
nop
nop
and $51205, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x10c5d, %r9
nop
inc %rdx
movups (%r9), %xmm6
vpextrq $1, %xmm6, %rcx
nop
cmp $18924, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0xf65d, %r8
dec %r12
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 42}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
