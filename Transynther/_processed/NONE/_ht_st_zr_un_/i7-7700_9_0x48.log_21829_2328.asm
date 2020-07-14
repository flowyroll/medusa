.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7fd0, %rdi
nop
nop
and %r12, %r12
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x1913f, %rax
clflush (%rax)
nop
nop
nop
cmp %r15, %r15
movups (%rax), %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
sub $3664, %r12
lea addresses_WC_ht+0x1b7bf, %rsi
lea addresses_WT_ht+0xa5bf, %rdi
nop
nop
inc %rax
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $1463, %rax
lea addresses_WC_ht+0x21bf, %rsi
lea addresses_A_ht+0x4d37, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $20, %rcx
rep movsb
nop
xor $48893, %r13
lea addresses_normal_ht+0x65bf, %r12
nop
nop
nop
cmp $40636, %r15
mov (%r12), %ecx
nop
nop
inc %r14
lea addresses_WC_ht+0x2abe, %rsi
lea addresses_A_ht+0x1364f, %rdi
clflush (%rdi)
nop
nop
dec %r13
mov $2, %rcx
rep movsb
nop
xor $5549, %rcx
lea addresses_D_ht+0xa5bf, %rcx
nop
nop
nop
sub $22010, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rcx)
sub $28791, %rsi
lea addresses_D_ht+0x49e0, %rdi
nop
nop
nop
nop
inc %rax
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
xor %rax, %rax
lea addresses_normal_ht+0xaebf, %rsi
lea addresses_WT_ht+0xa5bf, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $27077, %r14
mov $90, %rcx
rep movsw
nop
nop
xor $2559, %r15
lea addresses_WC_ht+0x5c3b, %rsi
lea addresses_UC_ht+0x16dbf, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $27229, %r13
mov $30, %rcx
rep movsl
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rbx

// Faulty Load
lea addresses_A+0x1d9bf, %r9
nop
nop
nop
nop
nop
and $38714, %rbp
mov (%r9), %ebx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'79': 1175, '32': 1, '12': 1, 'a8': 155, '7a': 1, '44': 1018, '2b': 1, '52': 1, 'f6': 1, 'bc': 1, '00': 5905, '40': 1, '18': 2, '53': 1502, '47': 35, '30': 5, '01': 311, '48': 1346, 'c0': 14, 'ff': 10342, '72': 1, 'ec': 1, '5e': 1, '75': 7, '5a': 1}
00 00 ff 48 ff 00 ff c0 00 ff 00 ff ff 12 ff ff 48 47 ff ff 53 00 00 53 53 ff ff ff ff ff 01 ff ff 48 48 ff ff ff 00 48 ff ff ff 00 ff 00 53 00 53 44 ff ff 53 00 ff ff 53 53 00 ff 53 ff 00 53 ff 53 ff 00 ff 79 ff ff ff ff 00 00 ff 79 ff ff ff 00 ff 00 ff 00 44 ff 48 00 ff ff 79 00 ff 00 00 00 ff ff ff 53 ff ff 79 ff ff ff 53 ff 00 ff 53 00 53 44 ff 48 ff 79 ff 79 53 ff 00 ff 53 53 00 ff 00 44 ff 00 ff ff 00 ff ff ff ff 44 00 00 ff 00 ff 53 ff ff ff ff 53 ff 00 00 48 ff 53 ff 53 ff 48 00 ff 00 ff ff ff ff 00 ff ff 00 ff 01 53 ff 00 00 48 ff 48 ff 79 48 ff 00 ff ff 53 ff 53 ff 79 ff 79 00 53 44 00 ff ff 44 ff 00 00 ff ff ff 79 ff 00 ff ff 53 ff 79 ff ff ff 00 ff 01 53 ff ff 00 ff 01 ff 00 ff ff 01 ff 00 00 a8 00 00 48 ff ff ff 79 ff 00 ff 00 ff ff ff ff 79 00 ff 44 00 00 53 00 44 00 00 ff ff ff 00 53 53 ff ff 01 79 44 ff ff 48 ff 00 ff ff 53 ff ff 48 47 ff 53 ff ff ff ff 00 ff 01 79 00 00 00 ff ff ff 00 79 44 ff ff 00 ff 48 ff 53 ff 53 ff 48 ff ff 44 44 00 ff 00 44 53 ff 48 ff ff ff ff ff 00 00 ff 18 ff 53 53 44 ff ff 44 ff ff 00 ff 00 ff a8 ff ff 00 ff 00 ff 01 53 ff 53 ff 48 ff ff ff 00 79 ff 53 00 00 ff ff ff ff 00 00 79 ff 53 ff ff ff 00 53 79 ff 79 ff 00 ff 44 00 ff 48 48 00 ff 00 ff ff ff 79 00 ff 79 ff 00 00 00 ff 00 00 ff 79 ff 00 ff ff 79 ff 00 00 ff 00 ff ff ff 00 ff ff ff 00 ff 48 00 ff ff 48 ff ff ff 01 ff 79 ff ff 01 00 00 ff ff 53 ff 00 ff 00 ff 01 79 ff ff 00 00 ff ff 01 ff 44 48 00 ff 79 ff 53 ff 44 53 00 ff a8 ff 79 ff 44 ff ff 53 ff 48 00 00 ff 79 ff 48 44 ff ff 00 ff 79 00 48 53 ff ff ff 48 ff ff 44 ff ff 00 ff 00 53 ff 00 ff ff 00 ff 00 ff ff 00 ff 01 00 ff 01 ff 00 ff 00 53 ff ff 00 00 00 00 ff ff 00 00 ff ff ff ff 00 ff 01 00 00 ff 48 ff 00 ff 79 00 ff ff 48 ff ff 00 00 79 ff 44 ff 00 ff ff 00 ff 48 44 00 00 ff ff 00 ff 00 00 ff 00 48 ff 44 48 48 ff ff 00 00 00 ff ff 00 00 ff 00 00 00 00 ff ff 00 ff a8 48 ff 00 ff 00 ff ff 53 00 ff 44 ff ff 79 a8 ff ff ff 48 ff ff 00 48 48 ff ff ff ff 00 ff 01 ff ff 00 ff 00 53 ff ff 00 ff ff 00 00 ff 79 00 ff 48 00 ff 48 ff ff 79 ff ff ff 01 ff 00 ff 44 ff 79 00 00 ff 53 ff ff 44 ff ff 44 ff 00 00 00 44 ff 00 48 00 ff 53 48 ff 00 ff 00 ff 44 ff ff ff ff ff 00 79 53 53 48 ff 44 48 ff ff 44 00 ff 00 53 00 48 00 ff ff ff ff 53 ff 00 ff 44 00 ff 53 00 ff 00 ff 48 ff 00 53 ff 79 ff 79 ff ff 00 7a 79 00 00 ff 44 ff ff 00 18 00 ff ff ff 79 ff 44 ff 79 ff ff ff ff 00 ff 00 00 00 44 ff 00 ff 53 ff 79 ff 48 79 ff 53 53 ff 79 ff ff ff ff 48 ff 44 ff ff 00 ff 00 79 48 48 ff ff ff ff ff 00 00 ff ff 00 00 ff 44 00 00 ff ff 53 00 48 53 ff 79 48 ff ff 00 ff 00 ff ff 00 00 ff 79 ff 53 ff ff ff ff ff 01 00 00 79 00 00 00 ff 00 00 ff 48 ff ff ff ff ff 00 79 ff 00 ff 44 53 00 ff 00 ff 48 ff 44 48 ff 00 ff 44 ff ff 79 44 ff 48 ff ff ff 00 ff ff ff ff 44 00 ff ff 00 00 ff 79 00 00 00 00 ff 79 ff ff 79 ff ff ff ff 44 ff ff ff 01 ff 00 ff 00 ff 00 00 79 44 00 47 00 00 00 ff 48 ff ff ff 53 00 ff ff 79 00 00 ff 00 ff 79 ff ff 79 00 44 ff 53 00 ff ff ff 00 ff ff 48 ff ff 01 00 ff a8 00 00 ff 48 53 ff ff 79 ff 00 00 ff
*/
