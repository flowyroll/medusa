.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1038, %r15
nop
nop
nop
and $22406, %rax
movups (%r15), %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
dec %r12
lea addresses_D_ht+0xe538, %rsi
lea addresses_normal_ht+0x11d38, %rdi
nop
nop
nop
nop
add $44197, %r10
mov $9, %rcx
rep movsq
nop
and $38763, %rbp
lea addresses_D_ht+0xb538, %r10
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbp
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x1b138, %rcx
nop
cmp %rbp, %rbp
mov (%rcx), %dx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'00': 5}
00 00 00 00 00
*/
