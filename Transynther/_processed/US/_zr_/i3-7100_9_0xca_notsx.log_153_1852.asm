.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ba99, %rsi
lea addresses_WC_ht+0x16183, %rdi
nop
cmp %rbx, %rbx
mov $0, %rcx
rep movsl
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x12afb, %r10
nop
nop
nop
dec %rax
mov (%r10), %r14
nop
nop
nop
nop
nop
and $46631, %rcx
lea addresses_normal_ht+0x1ccb, %rcx
and $41379, %rsi
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
inc %rdi
lea addresses_WT_ht+0x146e7, %r10
nop
nop
and $18844, %rax
movl $0x61626364, (%r10)
nop
nop
nop
nop
add $58581, %rdi
lea addresses_UC_ht+0x50fb, %rdi
nop
nop
nop
add $40425, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
sub $14085, %r10
lea addresses_WC_ht+0xb183, %r10
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb (%r10), %al
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x912b, %r14
nop
nop
nop
and %rdi, %rdi
movups (%r14), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x1183, %rdi
nop
and $5526, %r10
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
inc %rax
lea addresses_UC_ht+0xe983, %r10
nop
nop
nop
nop
inc %rbx
mov (%r10), %edi
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x172c3, %rsi
lea addresses_UC_ht+0x1234b, %rdi
nop
inc %rax
mov $25, %rcx
rep movsl
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1d183, %rcx
nop
nop
lfence
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp $52376, %r10
lea addresses_A_ht+0x2983, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x7568, %r14
nop
nop
nop
nop
xor %rcx, %rcx
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x1bd03, %rsi
nop
nop
sub $62219, %rbx
movb (%rsi), %r14b
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0x16583, %rdi
nop
nop
cmp %r10, %r10
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rdi
pop %rbx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 153}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
