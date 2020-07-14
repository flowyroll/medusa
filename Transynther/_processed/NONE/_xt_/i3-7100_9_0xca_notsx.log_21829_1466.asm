.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc566, %rsi
lea addresses_WC_ht+0x215e, %rdi
clflush (%rsi)
nop
add %rbp, %rbp
mov $59, %rcx
rep movsl
add %rbx, %rbx
lea addresses_WC_ht+0x16d84, %rsi
lea addresses_WT_ht+0xba86, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $111, %rcx
rep movsq
nop
nop
nop
nop
and $38049, %rbp
lea addresses_A_ht+0x1b0c8, %rbx
nop
nop
nop
nop
nop
add $57795, %rdx
mov (%rbx), %di
nop
nop
nop
nop
and $46490, %rcx
lea addresses_A_ht+0x6fe5, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
dec %rbp
lea addresses_D_ht+0x10a1e, %rsi
lea addresses_A_ht+0x1899e, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $119, %rcx
rep movsl
nop
sub $62771, %rdi
lea addresses_WT_ht+0x177de, %rbx
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x14bee, %r8
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r8), %rdx
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x1e39e, %rbp
nop
mfence
movb (%rbp), %bl
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x1a19e, %rsi
nop
nop
sub $61115, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rsi)
nop
xor %r8, %r8
lea addresses_WC_ht+0x915e, %rsi
lea addresses_normal_ht+0x1b79e, %rdi
nop
nop
nop
nop
nop
xor $55969, %r8
mov $113, %rcx
rep movsb
nop
nop
sub $10311, %rdx
lea addresses_UC_ht+0x1c11e, %rsi
lea addresses_WC_ht+0x1eb9e, %rdi
nop
and %r12, %r12
mov $3, %rcx
rep movsw
nop
add $15093, %rdi
lea addresses_WT_ht+0x12b9e, %rdi
and %rbx, %rbx
movb $0x61, (%rdi)
nop
nop
xor $26935, %rbx
lea addresses_A_ht+0x1e59e, %rsi
lea addresses_normal_ht+0x1961e, %rdi
and $49265, %r8
mov $54, %rcx
rep movsl
nop
nop
add $56748, %rbx
lea addresses_normal_ht+0x699e, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0xd99e, %r12
nop
nop
nop
cmp $57779, %r13
movl $0x51525354, (%r12)
add $58123, %r9

// Store
lea addresses_UC+0x19bbe, %r12
xor $19540, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r12)
nop
nop
sub %r9, %r9

// Load
lea addresses_UC+0x1507e, %rdi
nop
inc %r8
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_A+0x1bbca, %r8
cmp %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r8)
nop
and $33696, %rsi

// Load
lea addresses_normal+0x17786, %r12
nop
nop
nop
nop
xor $31805, %r8
mov (%r12), %rsi
nop
nop
dec %r12

// Store
mov $0x13919b00000000da, %rcx
nop
nop
xor $48515, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
xor %rsi, %rsi

// Store
lea addresses_normal+0x1319e, %r13
nop
nop
cmp $3297, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movaps %xmm5, (%r13)
nop
inc %r8

// Load
lea addresses_US+0x1509e, %r9
nop
nop
sub $42687, %rdi
movups (%r9), %xmm7
vpextrq $0, %xmm7, %rcx
nop
sub %rcx, %rcx

// Store
lea addresses_WT+0x13e2f, %r8
cmp %r9, %r9
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
sub $4971, %r8

// Faulty Load
lea addresses_RW+0xc99e, %r13
nop
add %r12, %r12
movb (%r13), %cl
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
