.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1c0da, %rbx
nop
and $20051, %rax
mov (%rbx), %r9
nop
nop
sub $43039, %rdx
lea addresses_WC_ht+0x16b5a, %r13
xor %rdi, %rdi
movb $0x61, (%r13)
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x1a176, %rsi
lea addresses_D_ht+0x195da, %rdi
sub $47523, %r13
mov $0, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0xf3da, %rcx
nop
nop
sub $10202, %rdi
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rax
xor %rax, %rax
lea addresses_A_ht+0x15f1, %r13
nop
nop
nop
inc %rsi
movw $0x6162, (%r13)
nop
dec %r13
lea addresses_WC_ht+0x1b166, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x7da, %rdx
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdx)
nop
dec %rsi
lea addresses_A_ht+0x1c9da, %r9
nop
nop
sub $14432, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r9)
nop
dec %rdi
lea addresses_WT_ht+0x15fda, %rax
nop
nop
sub %r13, %r13
mov (%rax), %rdx
nop
nop
nop
nop
nop
and $8175, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx

// Store
lea addresses_A+0x1587a, %rbx
nop
dec %rcx
movb $0x51, (%rbx)
nop
nop
nop
nop
and $53323, %rbx

// Faulty Load
lea addresses_US+0x17fda, %r15
nop
nop
nop
nop
nop
and %rax, %rax
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 260}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
