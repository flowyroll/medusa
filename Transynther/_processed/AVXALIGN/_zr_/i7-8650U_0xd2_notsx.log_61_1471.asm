.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ded2, %rsi
lea addresses_WC_ht+0x1cd2, %rdi
nop
xor %r13, %r13
mov $76, %rcx
rep movsq
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x66d2, %rbp
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rbp)
nop
and $7023, %rbp
lea addresses_WC_ht+0x2ed2, %rsi
lea addresses_normal_ht+0x1a892, %rdi
nop
nop
sub %rdx, %rdx
mov $57, %rcx
rep movsb
nop
nop
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WT+0x96d2, %r12
nop
nop
nop
add $3843, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r12)
nop
xor $7438, %rsi

// Store
lea addresses_WC+0x9512, %rbp
nop
nop
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WT+0x17626, %r13
nop
nop
nop
nop
nop
dec %rcx
movl $0x51525354, (%r13)
nop
nop
add $59698, %rsi

// Store
lea addresses_UC+0x40d2, %rcx
nop
nop
add %rbp, %rbp
movl $0x51525354, (%rcx)
nop
nop
cmp %r13, %r13

// Store
lea addresses_UC+0x146d2, %r12
nop
cmp %r13, %r13
movb $0x51, (%r12)
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_A+0x11ce2, %r13
nop
nop
nop
nop
sub $25304, %r8
movl $0x51525354, (%r13)
nop
nop
and $50740, %rcx

// Faulty Load
lea addresses_WT+0x96d2, %r12
nop
inc %rsi
vmovntdqa (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'00': 61}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
