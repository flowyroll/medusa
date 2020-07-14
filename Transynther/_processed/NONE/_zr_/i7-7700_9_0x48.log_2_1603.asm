.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x6301, %rsi
xor %rdx, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
and $30406, %rax
lea addresses_WT_ht+0x17a99, %rsi
lea addresses_D_ht+0x4c69, %rdi
inc %r9
mov $114, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $18178, %rbp
lea addresses_A_ht+0xca9, %rdx
xor %rcx, %rcx
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
add $45544, %rbp
lea addresses_WT_ht+0x1a9e9, %rsi
lea addresses_normal_ht+0x140e9, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $19266, %r12
mov $116, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x112e9, %rsi
lea addresses_normal_ht+0x133e9, %rdi
nop
inc %rdx
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x8be9, %rsi
lea addresses_normal_ht+0x142e9, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $50162, %rbp
mov $6, %rcx
rep movsw
nop
dec %rdi
lea addresses_normal_ht+0x1dee9, %rsi
lea addresses_WC_ht+0x145d9, %rdi
nop
nop
nop
sub $37946, %r12
mov $74, %rcx
rep movsl
inc %rax
lea addresses_WC_ht+0xd799, %rsi
lea addresses_normal_ht+0x10e9, %rdi
nop
nop
nop
nop
inc %rax
mov $2, %rcx
rep movsb
nop
nop
nop
xor $50420, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x48e9, %rsi
lea addresses_normal+0x3de9, %rdi
dec %rbx
mov $44, %rcx
rep movsb
nop
nop
nop
nop
cmp $34662, %rcx

// Load
lea addresses_A+0x126e9, %r10
nop
nop
nop
nop
sub %rbp, %rbp
movntdqa (%r10), %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_WC+0x9ee9, %rbx
nop
nop
nop
nop
sub $61635, %r9
mov (%rbx), %r10d
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'00': 2}
00 00
*/
