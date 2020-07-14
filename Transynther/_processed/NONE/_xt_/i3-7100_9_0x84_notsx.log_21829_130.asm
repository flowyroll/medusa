.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xea99, %rsi
lea addresses_WC_ht+0x1d4a9, %rdi
nop
nop
nop
nop
nop
add $2167, %rax
mov $101, %rcx
rep movsl
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x2699, %rsi
lea addresses_WT_ht+0xce4d, %rdi
clflush (%rdi)
nop
nop
xor $47687, %r8
mov $44, %rcx
rep movsb
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x6699, %rax
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %rax
movaps %xmm6, (%rax)
nop
nop
sub $56193, %r12
lea addresses_A_ht+0x1b659, %rsi
lea addresses_UC_ht+0x28b7, %rdi
clflush (%rsi)
nop
xor $63532, %rbx
mov $11, %rcx
rep movsb
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x15e99, %rsi
lea addresses_WT_ht+0x1a329, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $112, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x56e9, %r12
nop
nop
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%r12)
xor $13064, %rsi
lea addresses_D_ht+0xe299, %rsi
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
xor %rbx, %rbx
lea addresses_D_ht+0x5e99, %rsi
lea addresses_WT_ht+0x10099, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $37, %rcx
rep movsl
nop
nop
nop
cmp $4356, %rsi
lea addresses_D_ht+0xcf59, %r12
clflush (%r12)
nop
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x6162, (%r12)
nop
nop
nop
cmp $50158, %rdi
lea addresses_WC_ht+0x10559, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
cmp $50692, %rbx
lea addresses_D_ht+0x10f99, %r8
nop
nop
and %rsi, %rsi
movw $0x6162, (%r8)
nop
nop
cmp $1975, %rsi
lea addresses_A_ht+0x1a899, %rcx
nop
dec %r12
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rdx
nop
xor $21217, %rax
lea addresses_D_ht+0xbac5, %rcx
nop
nop
nop
nop
mfence
mov (%rcx), %rsi
add %rcx, %rcx
lea addresses_normal_ht+0xc9d9, %rsi
lea addresses_WT_ht+0x2039, %rdi
nop
nop
sub %rax, %rax
mov $109, %rcx
rep movsw
nop
xor $58820, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x11155, %rsi
lea addresses_UC+0x1065e, %rdi
nop
nop
nop
nop
sub $3384, %r13
mov $9, %rcx
rep movsl
nop
nop
cmp %r13, %r13

// Store
lea addresses_WC+0xea5, %rsi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%rsi)
xor %r9, %r9

// Store
lea addresses_WT+0xcf25, %r11
nop
nop
inc %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r11)
sub %r13, %r13

// Store
lea addresses_normal+0x17841, %rcx
and $51510, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
add $31848, %r13

// Store
lea addresses_D+0x1b699, %rcx
nop
nop
nop
nop
add %r9, %r9
movl $0x51525354, (%rcx)
sub %rcx, %rcx

// REPMOV
lea addresses_PSE+0xd119, %rsi
lea addresses_WT+0x1a299, %rdi
nop
nop
nop
nop
and $50252, %rbp
mov $38, %rcx
rep movsq
nop
and $57844, %rbp

// Store
lea addresses_normal+0x1a299, %r13
sub %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r13)
nop
nop
and $37314, %rsi

// Store
mov $0x12, %rbp
nop
nop
nop
nop
inc %r9
movw $0x5152, (%rbp)
nop
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0x5819, %rbp
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_normal+0x4c99, %rdi
nop
add $12471, %rbp
movw $0x5152, (%rdi)
sub $8026, %r9

// Store
lea addresses_WC+0x2ef1, %r9
nop
cmp %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
cmp $38639, %r11

// Store
lea addresses_UC+0x13d99, %rbp
dec %rcx
movw $0x5152, (%rbp)
nop
nop
nop
inc %r13

// Store
lea addresses_A+0x9c59, %r9
nop
nop
sub $60054, %rcx
movb $0x51, (%r9)
nop
cmp $20123, %r13

// Faulty Load
lea addresses_RW+0xae99, %rsi
nop
nop
nop
nop
xor $31608, %r11
mov (%rsi), %cx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
