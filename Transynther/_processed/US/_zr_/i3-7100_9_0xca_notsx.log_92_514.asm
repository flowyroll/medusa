.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10217, %r8
nop
nop
nop
nop
cmp $10896, %rdx
movl $0x61626364, (%r8)
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x15f3, %r8
cmp %r15, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r8)
nop
nop
cmp $39415, %rbp
lea addresses_UC_ht+0x1b477, %r12
nop
cmp $8342, %rsi
movb $0x61, (%r12)
nop
inc %r15
lea addresses_A_ht+0xbc57, %rsi
lea addresses_WT_ht+0x1cf17, %rdi
nop
sub %r12, %r12
mov $5, %rcx
rep movsq
nop
cmp %r8, %r8
lea addresses_A_ht+0x40d9, %rsi
lea addresses_D_ht+0x6017, %rdi
nop
nop
xor $21691, %r12
mov $27, %rcx
rep movsl
nop
sub %rbp, %rbp
lea addresses_A_ht+0xca17, %rdi
nop
nop
nop
nop
dec %rcx
movb $0x61, (%rdi)
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x7884, %r15
nop
nop
nop
nop
nop
cmp $6577, %r12
mov (%r15), %r8d
nop
nop
xor %r15, %r15
lea addresses_D_ht+0xa317, %rdi
nop
nop
add $61768, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm5, (%rdi)
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x1fa17, %rbx
nop
nop
nop
nop
nop
sub %r10, %r10
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'00': 92}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
