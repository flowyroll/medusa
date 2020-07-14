.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x15b6d, %rdi
clflush (%rdi)
nop
nop
nop
inc %rbp
movb $0x61, (%rdi)
dec %rdi
lea addresses_normal_ht+0xaa25, %r14
nop
nop
inc %rdx
mov (%r14), %r13w
nop
nop
and %r13, %r13
lea addresses_A_ht+0x1c615, %r13
nop
nop
nop
nop
cmp $28349, %r12
movb (%r13), %al
cmp $53946, %rax
lea addresses_WT_ht+0x4b55, %rbp
and $27722, %r12
movw $0x6162, (%rbp)
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x1d8a0, %rax
nop
nop
nop
cmp $20895, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm4
and $0xffffffffffffffc0, %rax
movaps %xmm4, (%rax)
nop
nop
nop
nop
xor $37692, %r13
lea addresses_normal_ht+0x43f5, %r13
nop
nop
and %rdx, %rdx
movw $0x6162, (%r13)
and $48069, %r12
lea addresses_normal_ht+0xa1a5, %r12
nop
nop
nop
nop
nop
and %r14, %r14
movb (%r12), %al
nop
and $64161, %r14
lea addresses_WC_ht+0xae15, %rsi
lea addresses_WC_ht+0x12dc9, %rdi
nop
cmp %rdx, %rdx
mov $30, %rcx
rep movsl
nop
and %rsi, %rsi
lea addresses_WC_ht+0x14735, %r12
nop
nop
nop
nop
nop
add $52497, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xb4fd, %rdi
nop
nop
sub $16962, %rax
mov (%rdi), %cx
sub %rbp, %rbp
lea addresses_UC_ht+0x2d55, %rsi
lea addresses_WT_ht+0xb2e5, %rdi
nop
nop
nop
cmp $64643, %rbp
mov $15, %rcx
rep movsq
nop
nop
nop
sub $21996, %rdx
lea addresses_WT_ht+0x7a5, %rsi
lea addresses_A_ht+0x7b75, %rdi
xor %r13, %r13
mov $1, %rcx
rep movsl
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x8805, %rcx
nop
add $47695, %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and $19391, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rdi
push %rsi

// Store
lea addresses_PSE+0x115, %r12
nop
nop
nop
nop
add $2390, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0x15877, %rdi
nop
nop
nop
xor $17889, %rbp
movb $0x51, (%rdi)
dec %r10

// Faulty Load
mov $0x515, %r10
nop
nop
nop
nop
nop
sub $13016, %rsi
movb (%r10), %r8b
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
