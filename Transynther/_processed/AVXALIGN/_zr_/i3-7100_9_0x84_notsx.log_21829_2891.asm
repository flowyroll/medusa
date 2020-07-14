.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xea6a, %rsi
lea addresses_A_ht+0xe02a, %rdi
nop
nop
nop
add $6316, %r10
mov $19, %rcx
rep movsl
nop
nop
nop
nop
and $45760, %r8
lea addresses_WC_ht+0x11c2a, %r8
clflush (%r8)
nop
nop
nop
inc %rsi
movw $0x6162, (%r8)
nop
dec %r8
lea addresses_A_ht+0x602a, %rsi
lea addresses_D_ht+0x1f7a, %rdi
nop
nop
nop
inc %r12
mov $103, %rcx
rep movsb
dec %r8
lea addresses_D_ht+0x11e2a, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rsi), %r8w
sub $33790, %r12
lea addresses_WC_ht+0x15dca, %rcx
nop
nop
add $17556, %rsi
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
nop
xor $7733, %rcx
lea addresses_normal_ht+0x1022a, %rdi
nop
dec %rdx
movw $0x6162, (%rdi)
nop
xor $15335, %rcx
lea addresses_WC_ht+0x1182a, %rsi
dec %rdx
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x184d2, %rsi
lea addresses_UC_ht+0x1a42a, %rdi
and $34509, %rdx
mov $15, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $41240, %rsi
lea addresses_D_ht+0x2cc2, %rsi
clflush (%rsi)
nop
and $61611, %rdx
mov (%rsi), %r8d
add %rdx, %rdx
lea addresses_WC_ht+0xd42a, %rsi
clflush (%rsi)
inc %r8
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
xor $40655, %r12
lea addresses_UC_ht+0x16c2a, %rdx
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%rdx), %r10b
nop
nop
nop
nop
nop
xor $46341, %rdx
lea addresses_WC_ht+0x18b84, %r10
nop
nop
nop
sub %rdi, %rdi
mov (%r10), %cx
nop
nop
xor $27879, %r12
lea addresses_normal_ht+0x10597, %rdx
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x13c5a, %rsi
lea addresses_WC_ht+0x1e02a, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $93, %rcx
rep movsq
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Load
lea addresses_WT+0x1ec8a, %rsi
nop
xor $652, %r9
mov (%rsi), %ebp
nop
nop
add %rax, %rax

// Load
lea addresses_WT+0x1442a, %rbp
nop
nop
nop
nop
sub %rbx, %rbx
mov (%rbp), %esi
nop
nop
nop
cmp $58018, %rbx

// Store
lea addresses_D+0x1b82a, %r14
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%r14)
nop
nop
cmp %rax, %rax

// Store
lea addresses_WC+0x9d2a, %rbx
nop
add $45420, %r9
movw $0x5152, (%rbx)
nop
add $36062, %r9

// Store
lea addresses_A+0x1242a, %rbp
nop
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%rbp)
nop
nop
add %rsi, %rsi

// Load
lea addresses_UC+0x1262a, %rsi
add $9573, %r12
mov (%rsi), %r14w
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WT+0x1ae2a, %rbx
nop
nop
cmp %r9, %r9
movw $0x5152, (%rbx)
nop
nop
nop
nop
sub %r14, %r14

// Store
mov $0x43caee000000090a, %rbx
xor $53719, %r14
movl $0x51525354, (%rbx)
nop
nop
nop
and $47045, %rbx

// Faulty Load
lea addresses_RW+0xc02a, %rsi
nop
nop
and %r12, %r12
movaps (%rsi), %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
