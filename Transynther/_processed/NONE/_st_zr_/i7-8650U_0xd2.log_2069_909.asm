.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xa204, %r13
nop
nop
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%r13)
nop
nop
nop
and $14380, %rcx
lea addresses_D_ht+0x3084, %rsi
lea addresses_normal_ht+0x509c, %rdi
nop
xor $13985, %rdx
mov $87, %rcx
rep movsq
nop
nop
nop
sub $16162, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_UC+0x12af4, %r15
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r15)
nop
nop
inc %rbp

// Store
lea addresses_US+0xdb30, %r8
sub $50889, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r8)
nop
nop
add %r15, %r15

// Store
lea addresses_UC+0x2784, %rbp
nop
nop
nop
nop
xor %r12, %r12
movw $0x5152, (%rbp)
nop
nop
add $58149, %rdx

// Faulty Load
lea addresses_WC+0x5784, %r14
clflush (%r14)
nop
nop
nop
and $13360, %r12
mov (%r14), %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}}
{'00': 1380, '52': 689}
00 00 00 52 52 00 00 00 00 52 52 00 00 52 52 52 00 00 00 00 00 00 00 00 00 00 00 52 00 52 52 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 52 52 00 00 00 00 52 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 52 00 52 00 52 52 00 52 52 00 00 52 00 00 00 00 52 00 00 00 52 52 00 52 52 00 00 00 00 52 52 52 00 00 52 00 00 52 52 00 00 00 52 00 00 52 00 00 52 52 52 52 52 00 52 00 52 52 00 52 00 00 00 00 52 00 00 00 00 52 52 00 00 00 52 00 00 00 00 52 00 00 00 00 52 00 00 00 00 00 52 52 00 00 00 52 52 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 52 00 52 00 52 00 00 52 00 00 00 00 00 52 00 00 52 00 00 52 52 00 00 00 52 52 00 00 52 00 00 00 00 52 00 52 52 00 52 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 52 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 52 00 52 00 00 00 52 00 00 52 00 00 00 00 00 00 52 00 00 52 00 00 52 52 00 00 52 52 00 00 00 52 00 52 00 52 00 00 00 52 00 00 00 52 00 00 00 52 00 00 52 00 52 00 00 52 00 52 52 00 00 00 00 00 00 52 00 00 00 00 52 00 00 00 52 52 00 00 52 00 00 52 00 00 00 00 00 52 52 52 52 52 52 00 00 00 00 00 00 52 00 00 52 00 52 52 00 52 00 00 00 00 00 52 52 52 52 00 00 52 52 00 00 00 52 52 00 52 00 52 00 52 00 00 52 00 52 00 00 00 00 00 00 52 00 00 00 00 52 00 00 00 52 00 00 52 52 00 00 00 00 00 52 52 00 00 52 00 52 52 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 52 00 52 00 00 00 52 52 00 52 52 00 52 52 00 52 00 00 00 52 00 00 00 52 00 52 00 00 52 52 00 52 00 52 00 52 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 00 52 52 52 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 52 52 00 52 00 00 52 00 52 52 00 00 52 00 00 00 00 00 00 00 52 00 00 52 00 00 52 00 00 00 00 52 00 52 00 00 52 00 52 00 00 00 00 00 00 00 00 00 52 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 52 52 00 00 00 00 00 00 52 00 52 52 00 00 00 52 00 52 00 00 52 00 00 00 00 00 52 52 52 00 00 52 00 52 52 00 00 52 00 00 52 52 00 52 00 00 00 52 00 52 00 00 00 00 52 00 00 00 00 00 00 00 52 52 00 52 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 52 52 00 52 52 00 00 00 52 00 00 52 00 52 52 52 52 52 00 52 52 52 00 00 52 00 00 00 52 00 52 52 00 00 00 52 00 00 52 00 00 00 00 00 52 52 52 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 52 00 00 52 00 52 00 00 00 52 52 52 00 52 00 00 00 00 00 00 52 52 52 00 00 52 00 52 00 52 00 52 52 52 52 52 00 00 00 52 00 00 52 00 00 00 00 52 00 00 52 00 52 00 00 00 52 00 00 52 52 00 00 00 52 52 00 00 00 00 00 00 00 52 00 52 00 52 52 00 00 52 00 52 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 52 52 52 00 52 00 52 52 52 52 52 52 00 52 00 52 00 00 52 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 52 00 52 00 00 00 00 00 52 00 00 00 52 52 00 52 52 00 00 00 52 52 00 00 00 52 00 00 00 52 52 52 52 00 00 00 00 00 52 52 00 00 00 52 00 52 00 00 00 00 52 00 52 00 00 00 00 00 52 52 00 52 00 52 52 00 52 52 52 52 00 00 52 52 00 00 00 00 52 52 00 00 00 00 00 00 00 00 52 52 00 00 00 52 52 00 00 00 00 00 52 52 00 52 00 00 52 00 00 00 00
*/
