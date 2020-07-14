.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1d16c, %rsi
lea addresses_D_ht+0x110ec, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $62, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0xd9e4, %rsi
lea addresses_D_ht+0x1cdec, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $52, %rcx
rep movsq
nop
nop
nop
cmp $1535, %r8
lea addresses_A_ht+0x1a92c, %rsi
lea addresses_D_ht+0x15fda, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $124, %rcx
rep movsl
nop
xor %r10, %r10
lea addresses_A_ht+0x1ddc, %rsi
lea addresses_D_ht+0x9a7c, %rdi
xor $14577, %rax
mov $113, %rcx
rep movsw
and %rsi, %rsi
lea addresses_WT_ht+0x1c9c4, %rdx
nop
nop
nop
nop
add $53422, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x1d66c, %rsi
xor $57920, %rax
movb $0x61, (%rsi)
inc %rax
lea addresses_WT_ht+0x3cec, %rcx
nop
cmp %rax, %rax
mov (%rcx), %r8w
nop
nop
nop
xor $45179, %r10
lea addresses_WT_ht+0x65a4, %rsi
lea addresses_WC_ht+0x19a9c, %rdi
nop
cmp %rax, %rax
mov $97, %rcx
rep movsb
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x1bfec, %rsi
lea addresses_WC_ht+0x5cec, %rdi
nop
nop
nop
nop
nop
cmp $46431, %r13
mov $28, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xcbec, %rsi
nop
nop
nop
nop
xor $41876, %r10
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
xor $28091, %rdx
lea addresses_UC_ht+0x1dac, %rsi
lea addresses_WT_ht+0x4ec, %rdi
nop
cmp $62476, %r13
mov $64, %rcx
rep movsq
nop
dec %r13
lea addresses_normal_ht+0xd044, %rcx
nop
nop
nop
and %rdi, %rdi
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Store
mov $0x88c, %r9
nop
nop
nop
and %rax, %rax
movw $0x5152, (%r9)
nop
nop
sub %rax, %rax

// Store
lea addresses_US+0x158ec, %r13
nop
dec %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r13)
cmp %r9, %r9

// Faulty Load
lea addresses_A+0xa8ec, %rax
nop
nop
nop
nop
and $38073, %r15
mov (%rax), %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
