.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xeb3d, %r12
nop
and $11973, %rdi
movb $0x61, (%r12)
nop
dec %rbp
lea addresses_WC_ht+0x1901f, %rsi
lea addresses_normal_ht+0x18dab, %rdi
nop
nop
add $64510, %r14
mov $99, %rcx
rep movsw
nop
nop
nop
nop
nop
and $46657, %r14
lea addresses_WT_ht+0x121dd, %rsi
lea addresses_normal_ht+0x51dd, %rdi
nop
cmp %r8, %r8
mov $22, %rcx
rep movsb
sub %r12, %r12
lea addresses_UC_ht+0x105dd, %rsi
lea addresses_normal_ht+0x14cad, %rdi
clflush (%rdi)
and $27142, %r9
mov $86, %rcx
rep movsb
nop
sub $11762, %r9
lea addresses_WC_ht+0x7e5d, %rsi
lea addresses_WT_ht+0x15711, %rdi
nop
nop
nop
nop
add $56714, %r9
mov $78, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x36cd, %r8
nop
nop
xor %r12, %r12
movl $0x61626364, (%r8)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1a5d, %r14
nop
nop
nop
nop
nop
sub $46464, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x1a5dd, %rcx
nop
add $49513, %r14
mov (%rcx), %r8d
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xddd, %r8
nop
nop
nop
nop
and %r9, %r9
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r14
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1608d, %r12
nop
nop
inc %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
and $0xffffffffffffffc0, %r12
vmovntdq %ymm0, (%r12)
cmp $48920, %r8
lea addresses_D_ht+0xddd, %rdi
nop
add $33449, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x155dd, %rax
nop
nop
nop
nop
nop
inc %r8
movb (%rax), %r15b
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'00': 68}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
