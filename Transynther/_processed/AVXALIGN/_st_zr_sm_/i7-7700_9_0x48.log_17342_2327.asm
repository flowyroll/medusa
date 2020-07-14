.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x12a5a, %rsi
lea addresses_WC_ht+0xa9ea, %rdi
nop
nop
and %rbx, %rbx
mov $27, %rcx
rep movsq
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0xdbda, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub %r12, %r12
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x621a, %rsi
lea addresses_normal_ht+0x1dc8a, %rdi
nop
nop
nop
nop
dec %r8
mov $90, %rcx
rep movsb
and %rsi, %rsi
lea addresses_WT_ht+0x190da, %r8
nop
sub $59756, %rdx
movb (%r8), %cl
nop
nop
inc %rsi
lea addresses_WT_ht+0x1e1da, %rbx
nop
nop
nop
nop
nop
and $44475, %rdi
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xc9ce, %rdx
nop
add $35041, %rbx
movl $0x61626364, (%rdx)
add $792, %rbx
lea addresses_WC_ht+0x1dda, %rsi
lea addresses_WT_ht+0xc7ae, %rdi
nop
cmp $56256, %r8
mov $4, %rcx
rep movsb
xor $65412, %r8
lea addresses_WT_ht+0x1e4ea, %rdx
nop
nop
sub $44027, %rdi
movl $0x61626364, (%rdx)
add $37549, %rcx
lea addresses_WC_ht+0x1c182, %rcx
clflush (%rcx)
nop
add %r12, %r12
mov (%rcx), %r8d
nop
nop
cmp $51073, %rdx
lea addresses_D_ht+0x19d7a, %rbx
nop
nop
and %r12, %r12
movb $0x61, (%rbx)
nop
cmp $13671, %r12
lea addresses_WC_ht+0x31da, %rcx
sub $24592, %rdx
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
and $53367, %rsi
lea addresses_UC_ht+0x1061a, %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
sub $15848, %r12
lea addresses_D_ht+0x5016, %rsi
lea addresses_WT_ht+0x1bdda, %rdi
nop
nop
nop
nop
lfence
mov $111, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Store
mov $0xc12, %r13
nop
nop
nop
add $43441, %rbp
movw $0x5152, (%r13)
nop
nop
nop
dec %r10

// Store
lea addresses_RW+0xc4da, %rdx
nop
add $33678, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rdx)
xor $24831, %rdx

// Store
lea addresses_US+0x50de, %rdx
clflush (%rdx)
xor %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
nop
xor $33517, %r13

// Store
lea addresses_UC+0x18c4a, %rbp
nop
add %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
and $17058, %rbp

// Store
mov $0x5a9cd200000009da, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %r10, %r10
movb $0x51, (%r13)
nop
nop
nop
add $40865, %r8

// Store
lea addresses_D+0x1c2da, %rbp
nop
nop
nop
nop
nop
dec %r10
movl $0x51525354, (%rbp)
nop
cmp %r14, %r14

// Load
lea addresses_normal+0xdfda, %r8
add %r10, %r10
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rdx

// Exception!!!
nop
mov (0), %r13
nop
nop
nop
add $20677, %rbx

// Store
mov $0x67278700000005da, %r8
nop
nop
cmp %r10, %r10
movl $0x51525354, (%r8)
nop
nop
nop
nop
cmp $52657, %rbx

// Store
lea addresses_normal+0x14b8a, %rbx
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
inc %r13

// Faulty Load
mov $0x5a9cd200000009da, %r14
nop
nop
nop
nop
nop
add $52585, %rdx
mov (%r14), %ebx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'00': 287, '51': 17055}
51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51
*/
