.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x16390, %rsi
lea addresses_WT_ht+0x13f30, %rdi
nop
nop
nop
and $20296, %r12
mov $45, %rcx
rep movsq
nop
nop
nop
and $18995, %rdx
lea addresses_normal_ht+0x103b0, %rbp
cmp %rdi, %rdi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x133b0, %rdi
nop
nop
nop
nop
and %r9, %r9
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
xor $16284, %rsi
lea addresses_normal_ht+0x13b0, %rsi
lea addresses_UC_ht+0x1501e, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $4178, %rax
mov $102, %rcx
rep movsw
nop
nop
nop
nop
xor $22297, %r12
lea addresses_UC_ht+0x5bb0, %rsi
nop
nop
dec %rax
movb (%rsi), %r9b
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x720, %rdx
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
nop
xor $44781, %r12
lea addresses_normal_ht+0x30b0, %rdx
nop
nop
inc %rax
mov (%rdx), %esi
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x11f90, %r9
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r9), %esi
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x1929c, %rsi
nop
cmp $49206, %rdx
movb (%rsi), %r9b
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x11b30, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rsi)
nop
cmp %r9, %r9
lea addresses_normal_ht+0x10778, %rdi
nop
xor $51133, %r12
movl $0x61626364, (%rdi)
nop
nop
dec %rcx
lea addresses_normal_ht+0x18190, %r12
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%r12)
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x46dc, %rsi
lea addresses_A_ht+0x1abb0, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $22102, %r9
mov $13, %rcx
rep movsq
cmp %rcx, %rcx
lea addresses_normal_ht+0x12400, %rcx
nop
cmp $46729, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm3
and $0xffffffffffffffc0, %rcx
movaps %xmm3, (%rcx)
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x171b0, %rsi
lea addresses_WT+0x14bb0, %rdi
nop
cmp $18014, %rbp
mov $68, %rcx
rep movsw
nop
xor %rdx, %rdx

// Store
lea addresses_normal+0x1a3b0, %rcx
nop
nop
nop
and $46328, %r10
movb $0x51, (%rcx)
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_A+0x163f0, %rdx
nop
nop
sub %r10, %r10
movl $0x51525354, (%rdx)
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_PSE+0x11fc0, %rdi
nop
nop
nop
nop
cmp $58787, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
add $20862, %rdi

// Store
lea addresses_normal+0x17dd4, %rdx
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
cmp $7554, %rbx

// Store
lea addresses_US+0x15b0, %rsi
clflush (%rsi)
nop
nop
nop
cmp $46830, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_PSE+0x56d0, %rdx
nop
nop
nop
add %rbp, %rbp
vmovntdqa (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_PSE+0x7fb0, %rbp
sub $65456, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
nop
sub $36052, %rbx

// Store
mov $0x280, %rsi
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_WT+0x14bb0, %rbx
clflush (%rbx)
xor $65184, %rbp
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}}
{'32': 71}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
