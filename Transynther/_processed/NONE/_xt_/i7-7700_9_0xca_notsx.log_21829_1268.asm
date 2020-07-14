.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1e275, %rsi
lea addresses_A_ht+0x182f5, %rdi
clflush (%rdi)
nop
inc %r14
mov $58, %rcx
rep movsb
nop
xor $31792, %rcx
lea addresses_normal_ht+0x5075, %r14
nop
sub %rdi, %rdi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x16a75, %rsi
lea addresses_UC_ht+0x155c9, %rdi
nop
nop
nop
sub %r10, %r10
mov $14, %rcx
rep movsq
add $19745, %rcx
lea addresses_WT_ht+0xd3c5, %rsi
lea addresses_A_ht+0xd257, %rdi
xor %r8, %r8
mov $18, %rcx
rep movsq
nop
nop
nop
nop
sub $18045, %rcx
lea addresses_WC_ht+0x2d15, %r14
sub %rdi, %rdi
movb $0x61, (%r14)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1da75, %r14
nop
and %rdi, %rdi
mov (%r14), %r10
nop
nop
dec %rax
lea addresses_normal_ht+0x128f5, %rdi
nop
nop
nop
nop
nop
add $13051, %rsi
mov (%rdi), %r14d
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x18475, %rsi
lea addresses_WC_ht+0x2f2d, %rdi
nop
nop
dec %r13
mov $122, %rcx
rep movsb
nop
add %r13, %r13
lea addresses_D_ht+0x12f52, %r13
nop
add $7331, %rcx
movb (%r13), %al
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x8911, %rsi
lea addresses_UC_ht+0xdaf5, %rdi
nop
nop
add %r8, %r8
mov $16, %rcx
rep movsb
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xf6a5, %rsi
nop
nop
dec %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
sub $50715, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0x6f95, %r15
clflush (%r15)
inc %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r15
vmovaps %ymm7, (%r15)
nop
nop
add $60505, %r9

// Store
lea addresses_PSE+0xfb05, %r9
nop
nop
nop
and $53513, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
cmp $11623, %rdi

// Store
lea addresses_D+0x2675, %r15
nop
nop
nop
nop
nop
xor $63283, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_D+0xa75, %r15
clflush (%r15)
sub %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r15)
nop
cmp $25930, %rbx

// Load
lea addresses_normal+0xa98d, %r9
sub $6715, %r13
mov (%r9), %rbx
nop
nop
nop
nop
nop
add $10307, %r9

// Store
lea addresses_A+0xa385, %rdx
nop
mfence
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm7, (%rdx)
and $47601, %rax

// Store
lea addresses_A+0x18b95, %rbx
nop
nop
nop
nop
nop
inc %r13
movb $0x51, (%rbx)
nop
nop
nop
nop
sub $1810, %r9

// Store
lea addresses_WC+0x140bd, %r9
nop
nop
nop
and %r13, %r13
movw $0x5152, (%r9)
nop
nop
xor $45606, %rax

// Faulty Load
lea addresses_UC+0x8a75, %rdx
nop
nop
dec %rax
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
