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
lea addresses_WC_ht+0xc938, %r10
nop
nop
xor $54036, %r12
vmovups (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
add $13157, %rax
lea addresses_D_ht+0xcb58, %rsi
lea addresses_A_ht+0xc104, %rdi
clflush (%rsi)
dec %r13
mov $40, %rcx
rep movsb
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x1ce5f, %rsi
lea addresses_D_ht+0x1cb58, %rdi
nop
and %r9, %r9
mov $110, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x3f58, %rsi
lea addresses_WT_ht+0xc58, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $43, %rcx
rep movsb
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0x14598, %r10
nop
nop
nop
inc %rcx
movw $0x6162, (%r10)
nop
nop
nop
nop
xor $41868, %r12
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
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rdx

// Faulty Load
lea addresses_US+0x17f58, %r12
nop
nop
add $31635, %rdx
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'00': 116}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
