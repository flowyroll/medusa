.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x65a, %rsi
lea addresses_D_ht+0x19288, %rdi
nop
nop
inc %r14
mov $29, %rcx
rep movsq
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1b712, %rdi
nop
nop
add $12161, %rbx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
xor $62600, %r15
lea addresses_WC_ht+0x1e512, %rsi
dec %rdi
movb $0x61, (%rsi)
dec %r15
lea addresses_WC_ht+0x1a8d2, %rsi
lea addresses_WC_ht+0x1e412, %rdi
nop
nop
add $30037, %rdx
mov $32, %rcx
rep movsw
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0xde52, %rdx
sub %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
and $14027, %rdx
lea addresses_WC_ht+0x1e7ea, %rdi
nop
nop
nop
nop
nop
cmp $21378, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
xor $19368, %r15
lea addresses_A_ht+0x10054, %rdi
xor $16650, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x3a7, %rsi
lea addresses_UC_ht+0x10a12, %rdi
nop
nop
nop
inc %r13
mov $111, %rcx
rep movsb
nop
nop
nop
nop
add $13166, %rcx
lea addresses_WT_ht+0xe112, %rdi
nop
nop
nop
sub $58635, %r14
movb $0x61, (%rdi)
nop
nop
xor $11910, %rcx
lea addresses_WC_ht+0x1e692, %r13
nop
xor $37221, %rdi
mov (%r13), %r14w
nop
nop
nop
sub $41920, %rdi
lea addresses_WT_ht+0xd7b2, %rsi
and %r14, %r14
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0xd512, %r13
xor %rsi, %rsi
mov (%r13), %r15w
nop
nop
nop
nop
nop
cmp $30586, %r15
lea addresses_WC_ht+0x14d12, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $46760, %r15
mov (%rsi), %rdi
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0xdc74, %rsi
lea addresses_A_ht+0x4690, %rdi
and %r15, %r15
mov $99, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1334a, %rdi
nop
nop
nop
xor $64227, %rdx
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r13
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rdx

// Faulty Load
lea addresses_US+0x1d12, %r15
nop
nop
nop
nop
sub %r13, %r13
mov (%r15), %dx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
