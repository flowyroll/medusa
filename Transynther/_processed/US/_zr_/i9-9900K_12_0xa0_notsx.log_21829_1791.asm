.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x95a2, %rcx
clflush (%rcx)
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
nop
add $35847, %r14
lea addresses_WC_ht+0x1cfa2, %rsi
lea addresses_UC_ht+0x63a2, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1d372, %rsi
lea addresses_D_ht+0x2ba2, %rdi
sub %r15, %r15
mov $22, %rcx
rep movsw
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xa5a2, %rsi
lea addresses_normal_ht+0x15da2, %rdi
nop
nop
sub $59819, %r15
mov $47, %rcx
rep movsw
cmp %r15, %r15
lea addresses_WC_ht+0x14fa2, %rbp
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
add $20470, %rbp
lea addresses_WC_ht+0x135a2, %rdi
xor %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp $26237, %rdx
lea addresses_normal_ht+0x9ced, %r15
nop
nop
nop
nop
nop
add $51951, %rdx
mov (%r15), %cx
sub $13523, %r15
lea addresses_WT_ht+0x1d9e2, %rsi
nop
nop
nop
nop
nop
add $32286, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x165a2, %rsi
lea addresses_A_ht+0x39c2, %rdi
nop
cmp %rbp, %rbp
mov $34, %rcx
rep movsq
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0xe522, %rcx
nop
nop
nop
nop
nop
and $18973, %rbp
movb $0x61, (%rcx)
nop
nop
add $41652, %rdi
lea addresses_WT_ht+0x2dd4, %rdi
nop
nop
nop
xor $54810, %r14
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1b1a2, %r14
nop
nop
nop
nop
nop
and $44236, %rsi
movb $0x61, (%r14)
nop
sub $45185, %r14
lea addresses_D_ht+0x77a2, %rsi
lea addresses_WT_ht+0x97a2, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $97, %rcx
rep movsb
nop
add %rcx, %rcx
lea addresses_UC_ht+0x187a2, %r14
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
nop
nop
add $6905, %rcx
lea addresses_normal_ht+0x62ae, %rcx
nop
add $1275, %rdx
movb $0x61, (%rcx)
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Store
mov $0xe7c, %rbp
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%rbp)

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
add $46160, %rsi

// Store
lea addresses_UC+0x470a, %rbp
nop
nop
nop
xor %r8, %r8
movl $0x51525354, (%rbp)
xor $20619, %rbp

// Load
lea addresses_US+0x18922, %rbx
nop
nop
sub %r8, %r8
mov (%rbx), %rsi
nop
xor $60113, %r13

// Faulty Load
lea addresses_US+0x167a2, %rbp
nop
sub %rbx, %rbx
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 9}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
