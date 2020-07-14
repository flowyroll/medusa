.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x2934, %rsi
lea addresses_WT_ht+0x5c84, %rdi
nop
nop
add %rdx, %rdx
mov $127, %rcx
rep movsl
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_normal+0xd0c2, %rbp
nop
nop
nop
inc %rax
movl $0x51525354, (%rbp)
nop
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_US+0xeb84, %r14
nop
nop
nop
nop
cmp $50197, %rax
movups (%r14), %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'00': 28}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
