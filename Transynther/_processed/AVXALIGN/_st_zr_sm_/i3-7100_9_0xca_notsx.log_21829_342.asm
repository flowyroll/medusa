.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x529b, %rdi
nop
nop
cmp $119, %rdx
movb (%rdi), %r15b
nop
and $13346, %rcx
lea addresses_normal_ht+0x3933, %rsi
nop
nop
nop
nop
inc %rdx
movw $0x6162, (%rsi)
nop
dec %rcx
lea addresses_D_ht+0x1aa73, %rsi
lea addresses_D_ht+0x15a9b, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $92, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_WT_ht+0x129b, %rsi
lea addresses_normal_ht+0x1775b, %rdi
nop
inc %r12
mov $39, %rcx
rep movsb
add $20069, %rcx
lea addresses_UC_ht+0xd68b, %rsi
lea addresses_WT_ht+0xc583, %rdi
nop
nop
nop
nop
sub $8685, %rbx
mov $43, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0xca1b, %rbx
nop
inc %r14
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
xor $24573, %r12
lea addresses_WC_ht+0x668b, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x12c9b, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
nop
nop
add $46305, %rdx
lea addresses_UC_ht+0x629b, %rsi
lea addresses_A_ht+0x1b09b, %rdi
nop
cmp %rdx, %rdx
mov $117, %rcx
rep movsw
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x1789b, %rsi
lea addresses_normal_ht+0x1a4ab, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $1, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x1c65b, %rsi
lea addresses_normal_ht+0x1606c, %rdi
sub %r15, %r15
mov $30, %rcx
rep movsw
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x15c9b, %rsi
lea addresses_WT_ht+0x14e9b, %rdi
nop
nop
nop
add $25562, %r15
mov $104, %rcx
rep movsl
cmp $32585, %rbx
lea addresses_D_ht+0x1449b, %r12
nop
sub $45457, %rbx
movl $0x61626364, (%r12)
nop
nop
nop
and $51753, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x12963, %rcx
and $11772, %r12
movb $0x51, (%rcx)
nop
nop
nop
nop
and $32148, %rdi

// Store
lea addresses_D+0x189b, %r8
lfence
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_D+0x189b, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rsi)
nop
inc %rsi

// Store
lea addresses_PSE+0x6c5b, %rdi
nop
xor %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_RW+0x1e58b, %rdx
clflush (%rdx)
nop
nop
xor $42674, %rbp
mov (%rdx), %r12
nop
nop
cmp $51874, %rsi

// Store
lea addresses_WC+0x12c5f, %rcx
sub %rdx, %rdx
movb $0x51, (%rcx)
nop
and $11587, %r12

// Load
lea addresses_US+0x150e7, %rdi
nop
xor %rbp, %rbp
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rcx
nop
and %rbp, %rbp

// Load
lea addresses_UC+0x1a39b, %rdx
nop
nop
nop
nop
nop
cmp $40952, %r12
mov (%rdx), %cx
nop
nop
nop
nop
nop
inc %r8

// Load
lea addresses_WC+0x1ef39, %r12
nop
nop
nop
nop
add %rbp, %rbp
mov (%r12), %cx
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_A+0x1e89b, %rdx
nop
nop
nop
nop
nop
inc %r12
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
sub $31857, %r8

// Faulty Load
lea addresses_D+0x189b, %r8
nop
nop
and $10843, %rcx
vmovaps (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'00': 634, '52': 21195}
52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52
*/
