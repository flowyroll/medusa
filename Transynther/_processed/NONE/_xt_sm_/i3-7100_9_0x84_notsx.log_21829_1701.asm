.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6a5f, %rax
nop
nop
nop
nop
nop
dec %rcx
mov (%rax), %r10d
nop
cmp $45806, %r12
lea addresses_D_ht+0x9a5, %rbx
nop
nop
nop
nop
nop
xor %r12, %r12
movw $0x6162, (%rbx)
nop
inc %r12
lea addresses_WT_ht+0x1e7a5, %r13
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x12929, %rsi
lea addresses_UC_ht+0x1190d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rbp
mov $42, %rcx
rep movsw
nop
nop
nop
add $6961, %rax
lea addresses_normal_ht+0x1a305, %r13
sub %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
sub $4384, %rcx
lea addresses_UC_ht+0x41a5, %rsi
lea addresses_A_ht+0xd065, %rdi
nop
nop
sub %rax, %rax
mov $74, %rcx
rep movsl
nop
and $45056, %rsi
lea addresses_A_ht+0xb2d5, %r10
nop
nop
nop
sub %rdi, %rdi
mov (%r10), %rsi
xor %r13, %r13
lea addresses_UC_ht+0xaa25, %r13
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%r13)
nop
nop
lfence
lea addresses_WC_ht+0x1efa5, %r13
nop
nop
nop
nop
sub $32099, %r10
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0xce25, %r12
clflush (%r12)
inc %r10
mov (%r12), %eax
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1a65, %rsi
lea addresses_A_ht+0x3f47, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $123, %rcx
rep movsb
sub $12290, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1c9a5, %rsi
lea addresses_A+0x1e8a5, %rdi
nop
nop
sub $37361, %r10
mov $85, %rcx
rep movsl
xor $62532, %rsi

// Load
lea addresses_WC+0x6565, %r15
sub %r12, %r12
mov (%r15), %r9
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_WC+0x1a1a5, %rdi
nop
nop
nop
mfence
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
sub %r9, %r9

// Store
lea addresses_WT+0x101a5, %rdi
nop
nop
nop
xor $41388, %r9
movb $0x51, (%rdi)
nop
nop
nop
nop
xor $47457, %rsi

// Store
lea addresses_RW+0x1c9a5, %rcx
nop
nop
add %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
dec %rdi

// Store
mov $0xbc5, %r10
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movntdq %xmm5, (%r10)
inc %rsi

// Load
lea addresses_WT+0x13deb, %rcx
cmp %rsi, %rsi
mov (%rcx), %r10d
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_RW+0x1c9a5, %r9
nop
nop
nop
nop
nop
and %r15, %r15
mov (%r9), %di
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
