.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a0b2, %rsi
nop
nop
nop
and %r12, %r12
movl $0x61626364, (%rsi)
sub $58187, %rbx
lea addresses_A_ht+0x197e8, %rax
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rax)
add %r12, %r12
lea addresses_D_ht+0x18768, %rbx
nop
nop
sub $60379, %r8
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
xor $53293, %r8
lea addresses_D_ht+0x11b28, %rsi
lea addresses_D_ht+0x12b8c, %rdi
and %r15, %r15
mov $49, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x4ba8, %rsi
lea addresses_WT_ht+0x17bb4, %rdi
nop
nop
dec %r15
mov $30, %rcx
rep movsb
nop
xor %r12, %r12
lea addresses_A_ht+0x17494, %rsi
lea addresses_D_ht+0x1e463, %rdi
add %r15, %r15
mov $61, %rcx
rep movsq
nop
sub %r15, %r15
lea addresses_normal_ht+0x31ec, %rsi
lea addresses_UC_ht+0x3ce8, %rdi
nop
nop
nop
nop
nop
add $31456, %rbx
mov $26, %rcx
rep movsw
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x1eb68, %rsi
lea addresses_A_ht+0x1e918, %rdi
clflush (%rdi)
nop
nop
dec %r15
mov $75, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x15868, %r15
nop
nop
dec %rcx
movw $0x6162, (%r15)
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x17968, %rsi
lea addresses_A_ht+0x174e8, %rdi
nop
nop
inc %r8
mov $124, %rcx
rep movsl
nop
inc %r8
lea addresses_WT_ht+0x6350, %rsi
lea addresses_WT_ht+0xdfe8, %rdi
nop
nop
nop
nop
nop
and $39266, %rbx
mov $120, %rcx
rep movsl
nop
nop
nop
nop
and $2108, %rdi
lea addresses_WC_ht+0x11168, %r15
cmp %rsi, %rsi
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x16688, %rcx
nop
nop
xor $9761, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x1e098, %r13
nop
nop
dec %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_normal+0x15768, %rcx
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
sub %rcx, %rcx

// Store
mov $0x2a1ecd0000000968, %rdx
nop
nop
nop
nop
nop
add $10797, %r12
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
mov $0x2a1ecd0000000968, %r13
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r13), %edi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 236, '51': 21017, '80': 576}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 80 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 80 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 80 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 80 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 80 51 51 51 51 51 51 51 51 51 51 51 51
*/
