.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11c63, %rsi
lea addresses_UC_ht+0xf163, %rdi
clflush (%rdi)
nop
nop
and $52400, %rbp
mov $116, %rcx
rep movsl
dec %rbp
lea addresses_normal_ht+0x8ce3, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0xf7e3, %rsi
lea addresses_UC_ht+0x18044, %rdi
nop
nop
nop
add %r13, %r13
mov $58, %rcx
rep movsw
nop
nop
inc %r14
lea addresses_WC_ht+0x74db, %r14
nop
and $39110, %rdi
movb (%r14), %cl
nop
nop
nop
nop
nop
sub $31780, %rcx
lea addresses_D_ht+0x178e3, %rcx
clflush (%rcx)
nop
dec %rbx
movw $0x6162, (%rcx)
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x1abe3, %r14
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r14)
nop
nop
nop
cmp $35299, %rcx
lea addresses_D_ht+0x1a283, %rbp
nop
inc %rbx
movb (%rbp), %cl
and %rsi, %rsi
lea addresses_D_ht+0xf899, %r13
nop
nop
nop
nop
add %rbx, %rbx
mov (%r13), %r14w
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x110e3, %rsi
lea addresses_WC_ht+0xb913, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $42, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0xa423, %rcx
nop
nop
and $45777, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
sub $44598, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WC+0x123, %r13
nop
nop
inc %rsi
mov (%r13), %bp
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_D+0x30e3, %r15
nop
nop
xor $12259, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_WC+0x1ed53, %rdx
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
inc %r9

// Store
lea addresses_PSE+0x14603, %rbp
add $31917, %r13
movw $0x5152, (%rbp)
nop
nop
dec %rbp

// Store
lea addresses_PSE+0x2a4b, %rdx
nop
nop
nop
add $9875, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
add $60171, %r9

// Store
lea addresses_normal+0x12027, %r9
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x51525354, (%r9)
nop
inc %r9

// REPMOV
lea addresses_RW+0x14623, %rsi
lea addresses_WT+0xc4e3, %rdi
nop
nop
nop
nop
nop
sub $45680, %rdx
mov $5, %rcx
rep movsl
nop
nop
nop
nop
xor %r9, %r9

// Load
lea addresses_A+0x10e35, %r9
nop
nop
nop
nop
cmp %r14, %r14
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
and $37528, %rbp

// REPMOV
mov $0x41b, %rsi
mov $0x6703fe0000000ff3, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $67, %rcx
rep movsb

// Exception!!!
nop
nop
nop
mov (0), %rcx
nop
nop
nop
nop
xor $22118, %r9

// Store
mov $0x663, %r15
nop
nop
cmp %r9, %r9
movw $0x5152, (%r15)
nop
and $45625, %r9

// Faulty Load
lea addresses_D+0x30e3, %r13
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r13), %esi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
