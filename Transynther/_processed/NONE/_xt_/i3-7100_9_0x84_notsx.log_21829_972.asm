.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb279, %rbx
nop
nop
nop
cmp $3863, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
cmp $20333, %r10
lea addresses_A_ht+0x1e445, %r15
nop
nop
and $22820, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r15)
add %rax, %rax
lea addresses_WT_ht+0xc141, %r15
and $24042, %r9
movb (%r15), %bl
nop
nop
add %r10, %r10
lea addresses_A_ht+0x15f21, %rsi
lea addresses_normal_ht+0x137c1, %rdi
nop
nop
add %r13, %r13
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $32718, %rbx
lea addresses_UC_ht+0x7d21, %rbx
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
and $3354, %rax
lea addresses_normal_ht+0x121, %rsi
lea addresses_WT_ht+0x2521, %rdi
clflush (%rsi)
cmp $61867, %r10
mov $20, %rcx
rep movsl
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1ce21, %rsi
lea addresses_UC_ht+0x1af1a, %rdi
nop
cmp $52090, %r15
mov $27, %rcx
rep movsw
xor $24595, %rbx
lea addresses_WC_ht+0x8e9, %r13
nop
nop
and %rsi, %rsi
movups (%r13), %xmm7
vpextrq $0, %xmm7, %rbx
xor $47998, %rdi
lea addresses_WT_ht+0x6c91, %rsi
lea addresses_D_ht+0x1bd21, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $37, %rcx
rep movsb
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x15810, %r9
nop
nop
nop
nop
nop
and $23136, %rdi
movl $0x61626364, (%r9)
nop
nop
nop
nop
sub $52485, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rdx

// Store
lea addresses_UC+0x99e1, %r11
nop
nop
nop
nop
nop
sub $54595, %rdx
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_A+0x10521, %rbp
nop
nop
nop
xor %r13, %r13
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
add %r11, %r11

// Store
lea addresses_normal+0x54c5, %rdx
and $14843, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_A+0x1c121, %rbp
nop
nop
cmp %r11, %r11
movl $0x51525354, (%rbp)
nop
nop
inc %r15

// Load
lea addresses_A+0x10521, %rdx
nop
dec %r13
movb (%rdx), %r8b
nop
and $36983, %r13

// Store
lea addresses_A+0x4721, %rdx
nop
lfence
movb $0x51, (%rdx)
nop
cmp $55105, %r8

// Load
lea addresses_WC+0x2d21, %r8
nop
nop
nop
add $9847, %rbp
movups (%r8), %xmm6
vpextrq $0, %xmm6, %r13
dec %r15

// Load
lea addresses_US+0x1c521, %rdx
cmp %r11, %r11
mov (%rdx), %r13w
cmp $30619, %r12

// Store
lea addresses_D+0xa6a1, %rbp
nop
inc %r15
movw $0x5152, (%rbp)

// Exception!!!
mov (0), %r11
nop
xor %r15, %r15

// Load
lea addresses_D+0x11127, %r13
nop
nop
nop
xor %r11, %r11
mov (%r13), %dx
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0xf921, %r11
nop
cmp %rbp, %rbp
movb $0x51, (%r11)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_A+0x68a1, %r15
nop
nop
nop
cmp $25539, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
add $18141, %r13

// Store
mov $0x3f5a4b0000000705, %rdx
nop
nop
sub $28007, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rdx)
xor $64064, %r11

// Load
lea addresses_A+0x10521, %r8
xor $18474, %rbp
movb (%r8), %r13b
nop
nop
nop
and $31535, %rbp

// Faulty Load
lea addresses_A+0x10521, %r8
nop
nop
nop
nop
and $21565, %r11
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
