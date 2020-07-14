.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ed08, %rsi
lea addresses_normal_ht+0xd968, %rdi
nop
nop
nop
xor %r12, %r12
mov $76, %rcx
rep movsq
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0xc868, %r13
nop
nop
nop
nop
nop
sub $12568, %rbp
movb $0x61, (%r13)
nop
nop
nop
nop
nop
xor $58269, %rbp
lea addresses_D_ht+0x16728, %rsi
lea addresses_D_ht+0xf968, %rdi
nop
inc %rdx
mov $115, %rcx
rep movsw
nop
and $33470, %rdx
lea addresses_D_ht+0x9268, %rbx
nop
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rbx)
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x7768, %rdi
nop
nop
dec %rdx
mov (%rdi), %r13d
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0xcf80, %rdi
nop
nop
nop
nop
nop
sub $17797, %r13
movb (%rdi), %dl
nop
mfence
lea addresses_D_ht+0x1dd68, %rbx
and $19856, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rbx)
nop
nop
add $12124, %rdi
lea addresses_UC_ht+0x8968, %r12
nop
nop
nop
nop
nop
add $2424, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %r12
movaps %xmm3, (%r12)
nop
nop
nop
nop
cmp $54889, %rsi
lea addresses_WT_ht+0x104b8, %rsi
lea addresses_D_ht+0x9f68, %rdi
clflush (%rdi)
nop
nop
add %rbx, %rbx
mov $71, %rcx
rep movsw
nop
nop
nop
nop
inc %r12
lea addresses_WC_ht+0x56de, %rsi
lea addresses_A_ht+0x1459f, %rdi
nop
inc %rdx
mov $41, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $18558, %r13
lea addresses_D_ht+0x17bb8, %rdx
clflush (%rdx)
xor $57322, %rdi
movb $0x61, (%rdx)
xor $13450, %rbx
lea addresses_UC_ht+0x1b965, %rsi
lea addresses_UC_ht+0x16468, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r13, %r13
mov $22, %rcx
rep movsl
nop
xor %rbp, %rbp
lea addresses_A_ht+0xdf68, %rbx
nop
dec %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
mfence
lea addresses_WT_ht+0x5d68, %rsi
lea addresses_A_ht+0x1cda8, %rdi
clflush (%rdi)
nop
nop
nop
xor $14571, %rdx
mov $14, %rcx
rep movsq
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x15894, %rsi
lea addresses_WC_ht+0x5bca, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $64, %rcx
rep movsb
nop
nop
nop
and $50747, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_D+0x959c, %rdx
nop
nop
nop
nop
cmp $13833, %r9
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
nop
nop
nop
nop
dec %r10

// Store
lea addresses_normal+0x1236a, %r8
nop
nop
sub %rbp, %rbp
movb $0x51, (%r8)
nop
nop
cmp %r9, %r9

// Store
lea addresses_US+0x2e28, %rsi
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movaps %xmm5, (%rsi)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_D+0x10668, %r9
nop
nop
xor $35014, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r9)
sub %r8, %r8

// Store
lea addresses_D+0x9568, %rsi
nop
nop
nop
nop
nop
add $12783, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
xor $63708, %r15

// Store
lea addresses_WT+0xbf68, %r9
nop
nop
nop
nop
cmp $43496, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
nop
inc %r15

// Load
lea addresses_WT+0xe068, %r9
nop
cmp %r10, %r10
movb (%r9), %dl
nop
nop
add $34820, %rsi

// Faulty Load
lea addresses_WC+0x16568, %rbp
sub %rdx, %rdx
mov (%rbp), %r8w
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_US', 'AVXalign': True, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'58': 15420}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
