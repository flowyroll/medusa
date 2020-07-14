.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c9d8, %rsi
lea addresses_normal_ht+0xa1d8, %rdi
nop
nop
nop
sub %rax, %rax
mov $45, %rcx
rep movsb
nop
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x11290, %r8
add $42426, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%r8)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0xb1d8, %rsi
lea addresses_WT_ht+0x151d8, %rdi
sub %rbx, %rbx
mov $22, %rcx
rep movsw
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x1a078, %rsi
lea addresses_A_ht+0x7ae, %rdi
nop
nop
nop
and $3775, %rax
mov $9, %rcx
rep movsl
and $21676, %rbx
lea addresses_WT_ht+0x25d8, %r8
nop
nop
nop
nop
dec %rdi
movb $0x61, (%r8)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x5f58, %rsi
lea addresses_WC_ht+0x161d8, %rdi
nop
add $11870, %r13
mov $94, %rcx
rep movsl
nop
dec %r13
lea addresses_D_ht+0x10ab8, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rcx), %di
and $50224, %r8
lea addresses_D_ht+0x1c258, %r10
nop
nop
nop
nop
xor %rbx, %rbx
vmovups (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
add $26030, %r10
lea addresses_WC_ht+0x1e818, %r10
sub $36500, %rdi
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x10918, %r10
nop
nop
nop
nop
nop
and $20911, %r13
movb $0x61, (%r10)
cmp $45295, %rcx
lea addresses_WC_ht+0x12878, %rcx
dec %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rcx)
add $1003, %rax
lea addresses_A_ht+0x11c58, %rsi
lea addresses_UC_ht+0x14ef, %rdi
nop
sub $59554, %r13
mov $85, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0x6d68, %r8
nop
nop
nop
cmp $46244, %rdi
mov (%r8), %r13w
nop
add %r13, %r13
lea addresses_D_ht+0x173d8, %rbx
nop
and $33000, %rdi
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
add $56879, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x19be4, %rbx
nop
nop
nop
nop
nop
add $30679, %rcx
movw $0x5152, (%rbx)
nop
sub %rdi, %rdi

// Load
lea addresses_A+0xc1d8, %rsi
nop
xor $11438, %rdi
mov (%rsi), %ebx
nop
nop
nop
nop
nop
inc %rsi

// Load
lea addresses_UC+0x19f34, %rsi
nop
nop
nop
and %r13, %r13
mov (%rsi), %r10w
nop
xor %rdi, %rdi

// Load
lea addresses_PSE+0x1f3a9, %rdi
nop
nop
nop
nop
inc %r14
mov (%rdi), %bx
inc %r14

// Load
lea addresses_UC+0x15c34, %rcx
cmp %r10, %r10
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r13
nop
add $15398, %r13

// REPMOV
lea addresses_A+0x1b848, %rsi
lea addresses_WT+0x1e558, %rdi
clflush (%rsi)
nop
and $39042, %r12
mov $79, %rcx
rep movsw
xor $59801, %rsi

// REPMOV
lea addresses_RW+0xdef7, %rsi
lea addresses_UC+0xf1d8, %rdi
nop
nop
cmp $40413, %r13
mov $46, %rcx
rep movsb
nop
xor %r12, %r12

// Store
lea addresses_normal+0x17008, %r13
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_A+0xc1d8, %r13
xor %r10, %r10
movb $0x51, (%r13)
nop
nop
add $12896, %r14

// Store
lea addresses_A+0xdad8, %rcx
nop
nop
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%rcx)
nop
nop
nop
nop
add $1861, %r13

// Store
lea addresses_WT+0xe9d8, %r13
nop
nop
nop
cmp $5447, %r12
movb $0x51, (%r13)
inc %rcx

// Faulty Load
lea addresses_A+0xc1d8, %rcx
xor $37456, %r13
mov (%rcx), %r14d
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 1, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
