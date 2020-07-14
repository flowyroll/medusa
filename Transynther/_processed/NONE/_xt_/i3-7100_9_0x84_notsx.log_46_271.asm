.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xbd6d, %rsi
lea addresses_A_ht+0x556d, %rdi
nop
nop
nop
nop
add $10110, %rax
mov $119, %rcx
rep movsl
nop
inc %r10
lea addresses_D_ht+0x41ed, %rdi
nop
nop
nop
nop
cmp $6991, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rdi)
add %rdi, %rdi
lea addresses_A_ht+0x1d92d, %r10
nop
nop
nop
dec %rbp
mov (%r10), %eax
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1722d, %rsi
nop
nop
sub %rdx, %rdx
movb $0x61, (%rsi)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xf06d, %rbp
nop
nop
nop
xor $13110, %rdi
movb (%rbp), %r10b
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x6d6d, %rdx
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
add $18047, %rdi
lea addresses_UC_ht+0x8d6d, %rdx
inc %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x11d6d, %rax
nop
cmp %rbp, %rbp
movw $0x6162, (%rax)
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x153ed, %rsi
lea addresses_WC_ht+0x1366d, %rdi
nop
sub %r13, %r13
mov $119, %rcx
rep movsq
inc %rdi
lea addresses_D_ht+0xa56d, %rbp
clflush (%rbp)
xor $18979, %rdi
movb (%rbp), %dl
cmp $62107, %rax
lea addresses_D_ht+0x118d, %rcx
clflush (%rcx)
add %r13, %r13
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
nop
cmp $60525, %rbp
lea addresses_D_ht+0xe9ad, %rsi
lea addresses_D_ht+0x5d6d, %rdi
and $50121, %r13
mov $122, %rcx
rep movsb
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x156d, %rsi
lea addresses_D_ht+0x28ed, %rdi
nop
nop
and $64578, %r10
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
and $64791, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rsi

// Load
mov $0x35a72b00000002ed, %r15
nop
nop
add %rbx, %rbx
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
nop
xor $26690, %rsi

// Load
lea addresses_US+0x7d6d, %r15
clflush (%r15)
nop
nop
nop
add $54415, %r10
movb (%r15), %r9b
nop
nop
nop
nop
nop
sub $61975, %r10

// Load
lea addresses_WC+0x189e9, %rsi
xor %r10, %r10
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
and $34594, %r9

// Faulty Load
lea addresses_PSE+0x1dd6d, %r15
clflush (%r15)
sub %r10, %r10
mov (%r15), %bx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'33': 46}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
