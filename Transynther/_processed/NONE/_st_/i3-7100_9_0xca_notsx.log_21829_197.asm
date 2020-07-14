.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xac68, %r9
clflush (%r9)
cmp $28707, %r15
movb (%r9), %cl
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x14f68, %rsi
lea addresses_normal_ht+0x1c250, %rdi
nop
nop
nop
nop
dec %r13
mov $65, %rcx
rep movsl
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x31e8, %rbp
nop
nop
nop
nop
nop
sub $4676, %rsi
mov (%rbp), %r13d
nop
add %r13, %r13
lea addresses_UC_ht+0x1d878, %rsi
lea addresses_WT_ht+0x15e68, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $45, %rcx
rep movsw
nop
nop
nop
nop
cmp $61942, %rsi
lea addresses_WC_ht+0xcf68, %r13
and %rbp, %rbp
mov (%r13), %rdi
nop
and %r9, %r9
lea addresses_normal_ht+0x15468, %rsi
lea addresses_D_ht+0x12a68, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $4, %rcx
rep movsq
nop
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x5bb8, %rdx
nop
nop
nop
nop
nop
and $29110, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rdx)
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x9048, %rdx
nop
nop
nop
add $33109, %rbp
movb (%rdx), %cl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x8268, %rdi
nop
nop
nop
nop
xor $60097, %r13
movb (%rdi), %r15b
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x18a68, %rsi
lea addresses_WC_ht+0x1c668, %rdi
nop
nop
add %r13, %r13
mov $67, %rcx
rep movsb
nop
dec %rdx
lea addresses_WT_ht+0x3ba8, %rdi
nop
nop
xor $3225, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
and $0xffffffffffffffc0, %rdi
movntdq %xmm1, (%rdi)
nop
nop
nop
nop
xor $5767, %rsi
lea addresses_WC_ht+0x15168, %rcx
nop
inc %r9
movb $0x61, (%rcx)
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x19e68, %rsi
nop
nop
add %r10, %r10
mov (%rsi), %r9w
nop
and $9473, %rsi

// Load
lea addresses_A+0xa3c8, %rbp
nop
nop
nop
nop
dec %rdx
mov (%rbp), %rbx
add $335, %r9

// Load
lea addresses_WT+0x6a28, %rbx
nop
nop
nop
inc %rbp
mov (%rbx), %r9
nop
nop
inc %rbp

// REPMOV
lea addresses_normal+0x36ee, %rsi
lea addresses_normal+0x19f50, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $100, %rcx
rep movsb
nop
nop
nop
nop
nop
and $59992, %rdi

// Store
lea addresses_WC+0x11d68, %rcx
nop
nop
nop
nop
xor $63136, %r10
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
inc %r10

// Store
lea addresses_UC+0x7f68, %rdx
nop
nop
nop
nop
nop
dec %r10
movl $0x51525354, (%rdx)
add $12882, %r9

// REPMOV
lea addresses_A+0x3a68, %rsi
lea addresses_normal+0x19e68, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $32, %rcx
rep movsw
nop
nop
cmp $2878, %r9

// REPMOV
lea addresses_UC+0x18668, %rsi
lea addresses_normal+0xc868, %rdi
clflush (%rdi)
nop
nop
nop
add $19322, %r9
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r9

// Store
mov $0x37d8ab0000000d68, %r9
nop
nop
add $11235, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
nop
nop
nop
nop
add $19111, %rdi

// Load
mov $0x68, %rsi
nop
nop
nop
nop
nop
add $27488, %rbx
movb (%rsi), %cl
nop
nop
nop
nop
xor $45003, %rsi

// Faulty Load
lea addresses_normal+0x19e68, %r10
clflush (%r10)
nop
nop
nop
nop
and %rcx, %rcx
mov (%r10), %r9w
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
