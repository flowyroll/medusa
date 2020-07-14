.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xafc9, %rsi
lea addresses_normal_ht+0x1984d, %rdi
nop
nop
and $55937, %r15
mov $30, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x14989, %r14
nop
nop
nop
nop
and %r8, %r8
mov (%r14), %r9
nop
xor %r9, %r9
lea addresses_normal_ht+0x13be9, %rsi
clflush (%rsi)
nop
add $14049, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x75b3, %rsi
clflush (%rsi)
nop
nop
nop
cmp $11673, %r9
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xf9d9, %rdi
nop
cmp $27755, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rdi)
nop
cmp $46785, %rcx
lea addresses_WC_ht+0x15b89, %rsi
nop
nop
and %r9, %r9
movw $0x6162, (%rsi)
nop
and $29359, %rcx
lea addresses_WC_ht+0xad89, %r8
cmp %rcx, %rcx
movups (%r8), %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0xa13a, %r15
inc %rdi
mov (%r15), %r14
nop
nop
nop
cmp $298, %rsi
lea addresses_WC_ht+0x12b89, %rsi
lea addresses_D_ht+0x12b09, %rdi
and $10568, %r15
mov $44, %rcx
rep movsw
cmp %r14, %r14
lea addresses_WC_ht+0x14489, %rcx
nop
xor $45424, %r15
mov (%rcx), %r8
inc %r8
lea addresses_D_ht+0x16959, %rsi
lea addresses_normal_ht+0x18c31, %rdi
nop
nop
nop
nop
nop
and $28484, %r15
mov $99, %rcx
rep movsb
nop
nop
and $5756, %r15
lea addresses_WT_ht+0x15337, %rcx
nop
nop
add $42374, %rdi
mov (%rcx), %r14d
nop
nop
sub $28160, %r15
lea addresses_WT_ht+0x16407, %rdi
nop
nop
nop
nop
nop
add $14683, %r8
mov (%rdi), %r14d
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x15719, %rsi
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xb5d9, %rsi
lea addresses_normal_ht+0x64fd, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $54, %rcx
rep movsl
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x5977, %r12
nop
dec %r8
movl $0x51525354, (%r12)
xor $20652, %r12

// Load
lea addresses_D+0x1e189, %rcx
nop
nop
nop
xor $45512, %rdi
mov (%rcx), %r10d
nop
nop
nop
add %r8, %r8

// Store
lea addresses_PSE+0xc989, %rbx
nop
nop
nop
nop
add $42214, %r11
movb $0x51, (%rbx)
nop
nop
inc %rcx

// Store
lea addresses_WT+0x5889, %r8
nop
nop
xor $13682, %rbx
movw $0x5152, (%r8)
nop
sub %rdi, %rdi

// Load
lea addresses_WC+0x1d189, %rcx
nop
nop
add %rbx, %rbx
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r12
inc %rbx

// Load
lea addresses_D+0x1a089, %r11
add $5060, %r10
movups (%r11), %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
add $27575, %rdi

// REPMOV
lea addresses_A+0x1a409, %rsi
lea addresses_D+0x2589, %rdi
inc %r12
mov $100, %rcx
rep movsw
nop
nop
add %r8, %r8

// Store
lea addresses_A+0xce29, %rbx
clflush (%rbx)
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
add %rdi, %rdi

// Store
lea addresses_WC+0x11f89, %rcx
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_WC+0x1d189, %rdi
nop
add $9802, %r8
movaps (%rdi), %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
