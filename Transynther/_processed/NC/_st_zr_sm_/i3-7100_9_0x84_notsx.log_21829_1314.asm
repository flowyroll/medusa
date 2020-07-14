.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16a3, %r13
cmp $42105, %rdi
movw $0x6162, (%r13)
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x174a3, %r9
clflush (%r9)
nop
nop
nop
nop
nop
xor $20949, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x12e6f, %r15
clflush (%r15)
nop
nop
nop
nop
nop
xor $57158, %r9
movb $0x61, (%r15)
nop
add $50838, %r9
lea addresses_D_ht+0x50a3, %rsi
lea addresses_UC_ht+0x150a3, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $27588, %r14
mov $79, %rcx
rep movsq
nop
nop
nop
nop
add $40385, %r15
lea addresses_WC_ht+0x43a3, %rdi
nop
nop
nop
and $34411, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1c483, %rsi
lea addresses_D_ht+0x1b583, %rdi
nop
nop
nop
dec %r15
mov $31, %rcx
rep movsq
nop
nop
and $44629, %rcx
lea addresses_WT_ht+0x1cfa9, %rsi
lea addresses_A_ht+0x13f23, %rdi
and %r9, %r9
mov $127, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $18210, %rcx
lea addresses_WC_ht+0x166ab, %rcx
nop
dec %rdi
mov (%rcx), %r13w
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x185a3, %rcx
nop
nop
cmp $1046, %rbx
mov (%rcx), %r9
nop
nop
nop
nop
cmp $2408, %rdi
lea addresses_normal_ht+0x12c91, %rdi
nop
nop
nop
nop
xor $12345, %r14
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
dec %r15
lea addresses_D_ht+0x2b4b, %rsi
nop
nop
nop
sub %rbx, %rbx
mov (%rsi), %r13d
nop
nop
xor $45013, %rsi
lea addresses_D_ht+0x2923, %rsi
lea addresses_WC_ht+0x18fc3, %rdi
nop
nop
nop
xor %r9, %r9
mov $86, %rcx
rep movsb
nop
nop
nop
nop
nop
and $31968, %rsi
lea addresses_UC_ht+0x5ca3, %rsi
lea addresses_UC_ht+0xc4a3, %rdi
clflush (%rdi)
nop
nop
inc %r14
mov $96, %rcx
rep movsb
nop
dec %r15
lea addresses_WT_ht+0x13ba3, %rsi
lea addresses_A_ht+0x15a3, %rdi
nop
nop
nop
nop
sub $65375, %r13
mov $111, %rcx
rep movsb
nop
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rdi
push %rdx

// Load
lea addresses_PSE+0x9fd3, %rdi
nop
nop
add $53708, %r10
movb (%rdi), %r12b
nop
nop
xor %r11, %r11

// Store
lea addresses_normal+0x18363, %r9
clflush (%r9)
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%r9)
nop
nop
and $62025, %r10

// Store
lea addresses_normal+0x1c0a3, %r15
nop
nop
nop
nop
add $17829, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
and $20048, %r9

// Store
lea addresses_normal+0x88f1, %r10
nop
nop
nop
nop
add $32929, %r9
movb $0x51, (%r10)
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_WC+0x57b3, %r11
sub $37780, %r9
movl $0x51525354, (%r11)
nop
nop
add $53643, %rdx

// Store
lea addresses_normal+0x15f43, %rdi
nop
nop
add $53170, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rdi)
cmp %r9, %r9

// Store
lea addresses_PSE+0x1f8a3, %rdx
dec %r10
movw $0x5152, (%rdx)
sub %rdx, %rdx

// Store
mov $0x156c8800000004a3, %rdi
nop
and %r10, %r10
movl $0x51525354, (%rdi)
nop
xor %r9, %r9

// Faulty Load
mov $0x156c8800000004a3, %rdi
nop
nop
nop
nop
nop
dec %r15
mov (%rdi), %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'54': 1579, '00': 20250}
00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 54 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 54 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
