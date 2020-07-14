.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19299, %r14
and $31258, %r8
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x1eb19, %rsi
lea addresses_UC_ht+0x8b19, %rdi
cmp $17004, %r14
mov $56, %rcx
rep movsl
add $61430, %rdi
lea addresses_WT_ht+0x15319, %rsi
nop
nop
nop
nop
nop
add $44301, %rdx
movl $0x61626364, (%rsi)
sub %rdx, %rdx
lea addresses_UC_ht+0x379, %rdi
and %r8, %r8
movb (%rdi), %dl
nop
nop
nop
add $19176, %rdx
lea addresses_normal_ht+0x1a259, %r14
clflush (%r14)
nop
nop
nop
nop
dec %r8
movb $0x61, (%r14)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x189b9, %rdi
nop
nop
xor $52045, %rdx
movb (%rdi), %r14b
nop
nop
cmp $57787, %r14
lea addresses_UC_ht+0x189b9, %rcx
nop
nop
nop
nop
and %r10, %r10
mov (%rcx), %r8d
cmp %rdx, %rdx
lea addresses_D_ht+0x59d9, %rsi
nop
dec %r8
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
add $60037, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0xcb19, %r13
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r13)
dec %r10

// Store
lea addresses_WC+0x9319, %rdi
and $40604, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
inc %r13

// Store
lea addresses_RW+0x17e99, %r14
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
xor %rdi, %rdi

// Load
mov $0xa89, %rbp
nop
nop
nop
nop
sub $30862, %r13
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %rdi
xor %rbp, %rbp

// Store
lea addresses_RW+0x1fa99, %rcx
clflush (%rcx)
nop
nop
nop
nop
dec %r14
movl $0x51525354, (%rcx)
and $32734, %r13

// Store
lea addresses_US+0x159b9, %r13
nop
nop
nop
cmp $18077, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r13)
nop
and %r10, %r10

// Faulty Load
lea addresses_A+0xbb19, %rsi
dec %rbp
movb (%rsi), %r10b
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}}
{'00': 897, '52': 155}
00 00 52 52 52 52 00 52 52 52 52 00 00 52 52 52 52 00 00 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 52 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 52 00 00 52 00 00 52 00 52 52 52 52 52 00 00 52 52 52 52 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 52 00 00 00 00 00 52 52 00 52 52 52 52 52 52 52 52 00 52 00 52 52 52 00 00 00 00 52 52 52 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 52 52 52 00 00 00 00 00 00 00 52 00 00 52 52 52 00 00 00 00 52 52 52 00 52 52 52 00 00 00 52 00 52 52 52 52 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 52 00 00 52 52 52 52 52 00 00 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
