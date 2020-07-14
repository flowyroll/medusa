.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rdi
push %rsi
lea addresses_D_ht+0x594f, %r8
nop
nop
nop
nop
sub $4967, %r14
movb $0x61, (%r8)
nop
nop
nop
nop
add $26627, %r13
lea addresses_WC_ht+0x179cf, %r8
inc %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
and %r13, %r13
lea addresses_D_ht+0xfae7, %rbp
clflush (%rbp)
nop
inc %r14
mov (%rbp), %rdi
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x170cf, %rbp
nop
mfence
mov (%rbp), %rsi
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x12bcf, %r14
nop
nop
nop
nop
nop
sub %r13, %r13
movw $0x6162, (%r14)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xb347, %r13
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x133af, %rbp
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rbp), %ax
nop
nop
and $51059, %rsi
lea addresses_A_ht+0xe6cf, %rdi
add %r13, %r13
movb (%rdi), %r14b
nop
dec %rsi
lea addresses_UC_ht+0x19133, %rdi
nop
nop
nop
xor $58307, %rbp
mov (%rdi), %r14w
nop
nop
nop
nop
add $55922, %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx

// Store
lea addresses_A+0x192cf, %r8
clflush (%r8)
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x7def, %rcx
nop
inc %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
nop
inc %rax

// Load
mov $0x9cf, %rax
xor $55485, %rcx
movups (%rax), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
xor $34833, %r12

// Store
lea addresses_WC+0x17bb3, %rcx
nop
nop
nop
nop
nop
add $10458, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
add %rbp, %rbp

// Store
lea addresses_A+0x1f2ef, %r8
nop
nop
nop
nop
cmp $20214, %r15
movl $0x51525354, (%r8)
xor $12497, %r13

// Store
lea addresses_RW+0x1281f, %r13
nop
nop
nop
and $33538, %rax
movb $0x51, (%r13)
nop
nop
nop
xor $7627, %r12

// Store
lea addresses_normal+0x490f, %rbp
nop
nop
nop
nop
nop
add %r15, %r15
movl $0x51525354, (%rbp)
add %rcx, %rcx

// Store
lea addresses_RW+0x53cf, %r8
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
nop
dec %r13

// Store
lea addresses_PSE+0x76cf, %r8
nop
xor %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r8)
and %r12, %r12

// Store
lea addresses_normal+0x1d0ab, %r15
clflush (%r15)
add $4414, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r15)
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_WT+0x161cf, %r12
nop
nop
sub $38452, %rbp
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 295}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
