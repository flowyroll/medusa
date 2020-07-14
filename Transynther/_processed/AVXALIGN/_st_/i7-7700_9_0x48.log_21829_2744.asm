.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x168c6, %rsi
lea addresses_WT_ht+0xf04e, %rdi
nop
nop
nop
cmp %r15, %r15
mov $51, %rcx
rep movsq
cmp %r11, %r11
lea addresses_D_ht+0x1900e, %r13
xor %rbp, %rbp
movb (%r13), %r15b
nop
nop
sub $30030, %r15
lea addresses_UC_ht+0xe44e, %r11
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xe34e, %rsi
inc %rbp
mov (%rsi), %edi
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xd50e, %rcx
nop
nop
inc %r11
movb $0x61, (%rcx)
xor $41424, %rsi
lea addresses_D_ht+0x1004e, %rbp
nop
nop
add %rcx, %rcx
movb $0x61, (%rbp)
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x1ba26, %r15
xor %rbp, %rbp
movw $0x6162, (%r15)
nop
nop
inc %r11
lea addresses_normal_ht+0xf92e, %rsi
lea addresses_WC_ht+0x338e, %rdi
clflush (%rsi)
nop
cmp %r9, %r9
mov $27, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x8dfe, %rbp
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x3cce, %rsi
lea addresses_A_ht+0x1604e, %rdi
sub $21217, %r13
mov $4, %rcx
rep movsw
nop
dec %rsi
lea addresses_D_ht+0x14c4e, %rbp
nop
nop
nop
nop
sub $30312, %rsi
movl $0x61626364, (%rbp)
nop
nop
and $14757, %rbp
lea addresses_A_ht+0xa4e, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xe34e, %rcx
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm0, (%rcx)
nop
xor $37459, %rcx
lea addresses_D_ht+0x244e, %r11
nop
cmp %r9, %r9
mov (%r11), %rcx
nop
nop
nop
cmp $311, %rbp
lea addresses_WC_ht+0x14fa8, %rsi
lea addresses_WC_ht+0x544e, %rdi
nop
nop
nop
nop
and $48575, %r11
mov $85, %rcx
rep movsq
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_US+0x15b2f, %rdx
nop
add %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
sub %r14, %r14

// Load
lea addresses_US+0x1297a, %r13
nop
nop
cmp $19827, %rax
mov (%r13), %r14
inc %rax

// Store
lea addresses_A+0xa50e, %rax
nop
nop
nop
add $13321, %r13
movb $0x51, (%rax)
cmp $61056, %rax

// Store
lea addresses_WT+0x284e, %r12
xor %rbp, %rbp
movb $0x51, (%r12)
nop
add $6989, %r13

// Load
lea addresses_WC+0xf48e, %rdx
nop
sub %rcx, %rcx
mov (%rdx), %r13w
nop
nop
dec %rbp

// Load
lea addresses_WC+0xb00e, %rcx
nop
and $45410, %rax
mov (%rcx), %r12
nop
nop
nop
inc %rbp

// Store
mov $0x3bb5bf00000004ae, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
dec %r13
movw $0x5152, (%rbp)
nop
nop
nop
nop
dec %r14

// Store
mov $0x9153b0000000c4e, %r12
nop
nop
nop
nop
xor $36280, %rax
movl $0x51525354, (%r12)
nop
nop
nop
nop
cmp $20928, %r13

// Faulty Load
lea addresses_normal+0x1204e, %r13
nop
nop
nop
add %rax, %rax
mov (%r13), %r14d
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
