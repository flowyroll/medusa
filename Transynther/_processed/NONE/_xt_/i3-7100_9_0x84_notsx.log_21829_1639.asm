.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1b84d, %rdx
nop
nop
nop
dec %r13
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm7
vpextrq $0, %xmm7, %rbp
nop
add %rax, %rax
lea addresses_normal_ht+0x1c54d, %rcx
nop
nop
nop
nop
add $20642, %rbx
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
nop
nop
xor $41648, %rcx
lea addresses_WC_ht+0x954d, %rsi
lea addresses_normal_ht+0x1095f, %rdi
xor %rbp, %rbp
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x6947, %r15
nop
nop
nop
nop
inc %rdx
movl $0x61626364, (%r15)
nop
inc %rcx
lea addresses_A_ht+0xa44d, %rsi
lea addresses_WC_ht+0xd24d, %rdi
nop
inc %rbx
mov $113, %rcx
rep movsq
nop
nop
nop
nop
cmp $18143, %rdx
lea addresses_WT_ht+0x113b5, %rsi
lea addresses_WC_ht+0xe805, %rdi
nop
nop
nop
xor $58671, %rax
mov $21, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x1e091, %rax
clflush (%rax)
nop
nop
nop
mfence
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rax)
nop
nop
nop
xor $14354, %rbp
lea addresses_WC_ht+0x32dd, %rcx
nop
nop
nop
nop
nop
and $21693, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x6c4d, %rbp
nop
nop
nop
nop
xor %r15, %r15
movb (%rbp), %cl
nop
nop
add $11662, %rbx
lea addresses_A_ht+0x13a4d, %rcx
nop
xor $50375, %rbx
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
xor $6915, %rdi
lea addresses_WC_ht+0x1124d, %rbx
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rbx), %cx
nop
nop
nop
nop
nop
sub $56201, %rax
lea addresses_D_ht+0x52cd, %rbp
nop
nop
nop
nop
cmp $16449, %rax
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
and $14240, %r15
lea addresses_D_ht+0x12a4d, %rax
nop
and %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rax
vmovaps %ymm5, (%rax)
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rdx

// Faulty Load
lea addresses_RW+0x1ea4d, %r13
nop
nop
nop
nop
nop
cmp $45645, %rax
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
