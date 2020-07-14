.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1aa4e, %r9
nop
nop
nop
xor %rdx, %rdx
mov (%r9), %rcx
nop
nop
nop
nop
xor $21174, %r9
lea addresses_WT_ht+0x1cc06, %rsi
lea addresses_A_ht+0x407b, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rax, %rax
mov $116, %rcx
rep movsl
nop
add %rsi, %rsi
lea addresses_A_ht+0x132fb, %rsi
lea addresses_WT_ht+0xcc7b, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $83, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x177b, %rdx
nop
and $43707, %r12
movl $0x61626364, (%rdx)
nop
add %rdi, %rdi
lea addresses_A_ht+0x1de7b, %rsi
lea addresses_UC_ht+0x1d3fb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r15, %r15
mov $40, %rcx
rep movsw
nop
sub $16513, %rdx
lea addresses_WC_ht+0x67b, %rdi
nop
cmp %r15, %r15
mov (%rdi), %r12
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x14645, %rsi
lea addresses_WC_ht+0xd67b, %rdi
nop
nop
xor %r12, %r12
mov $74, %rcx
rep movsw
add %rdi, %rdi
lea addresses_WT_ht+0x385b, %rdi
nop
nop
nop
nop
nop
inc %rsi
mov (%rdi), %r9w
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x17568, %rdx
nop
sub $58325, %rax
movb (%rdx), %r15b
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x1dcb3, %rsi
lea addresses_WC_ht+0x4339, %rdi
clflush (%rsi)
nop
and %r9, %r9
mov $26, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0xc67b, %rsi
lea addresses_normal_ht+0x2ab, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r12
mov $45, %rcx
rep movsq
inc %r12
lea addresses_UC_ht+0x1967b, %r15
clflush (%r15)
xor $52885, %rsi
movl $0x61626364, (%r15)
nop
nop
add $1486, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0x1ee7b, %r15
nop
nop
nop
nop
nop
and $62199, %r10
vmovups (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 8, '45': 4, '49': 1}
00 45 00 00 45 00 49 45 00 00 45 00 00
*/
