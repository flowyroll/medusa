.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x17dd8, %r8
nop
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x1a1d8, %r8
nop
nop
nop
nop
xor %rbp, %rbp
movb $0x61, (%r8)
nop
nop
nop
nop
and $46385, %rbx
lea addresses_A_ht+0xfdd8, %rsi
lea addresses_WC_ht+0xa458, %rdi
nop
nop
nop
nop
xor $17931, %rbp
mov $37, %rcx
rep movsw
nop
nop
nop
sub $53061, %rsi
lea addresses_WT_ht+0x1df18, %rsi
lea addresses_WT_ht+0x199d8, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $17, %rcx
rep movsq
nop
nop
cmp $5387, %r12
lea addresses_UC_ht+0x9ad0, %rsi
lea addresses_WT_ht+0x12c68, %rdi
nop
nop
nop
nop
nop
add $42021, %r8
mov $98, %rcx
rep movsw
nop
and $16537, %rcx
lea addresses_normal_ht+0xf663, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x6d96, %rbp
nop
nop
nop
sub $32819, %rcx
movb (%rbp), %r8b
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x10dd8, %rsi
mov $0x70, %rdi
clflush (%rdi)
nop
and %r14, %r14
mov $37, %rcx
rep movsw
sub $30427, %rdi

// Faulty Load
mov $0x2e143d0000000dd8, %rax
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_US'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'49': 3, '7d': 1}
49 49 7d 49
*/
