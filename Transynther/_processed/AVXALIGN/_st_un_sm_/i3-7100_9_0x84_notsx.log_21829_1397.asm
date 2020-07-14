.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1398b, %r15
nop
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x23b7, %r14
xor $54586, %r13
mov (%r14), %r15w
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x107e7, %r9
nop
nop
nop
and $41074, %rbp
mov (%r9), %ecx
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x15bb7, %r15
nop
xor %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, (%r15)
inc %r10
lea addresses_D_ht+0x93b7, %r10
nop
nop
nop
nop
and $51132, %r14
movw $0x6162, (%r10)
nop
nop
nop
and $4328, %r15
lea addresses_UC_ht+0x79b7, %r9
sub %r14, %r14
movb $0x61, (%r9)
nop
cmp $3562, %r15
lea addresses_UC_ht+0x106b7, %rsi
lea addresses_UC_ht+0x2bb7, %rdi
nop
nop
dec %r13
mov $53, %rcx
rep movsq
cmp %r9, %r9
lea addresses_A_ht+0x9b7, %rsi
lea addresses_WC_ht+0xca3e, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r10
mov $117, %rcx
rep movsl
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x155b7, %rsi
lea addresses_A_ht+0x1b2ed, %rdi
nop
nop
nop
inc %r9
mov $22, %rcx
rep movsq
nop
nop
cmp $43922, %r15
lea addresses_normal_ht+0x115b7, %rsi
lea addresses_WT_ht+0xe25f, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $6, %rcx
rep movsl
nop
cmp %r10, %r10
lea addresses_D_ht+0x1b7, %rcx
xor $50410, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
sub $11484, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Load
mov $0xf57, %rdi
xor %r8, %r8
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
nop
add $18559, %r11

// Store
lea addresses_RW+0x3bb7, %r11
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r11)
sub %r15, %r15

// Store
lea addresses_D+0x83b7, %r15
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r15)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_WT+0x49a7, %rdi
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%rdi)
dec %rdi

// Store
lea addresses_US+0x1fdb7, %rbp
nop
nop
nop
nop
nop
xor $65176, %rbx
movb $0x51, (%rbp)
nop
nop
xor $7300, %r8

// Store
mov $0x51179500000009b7, %r15
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_US+0x55b7, %r11
nop
add $33434, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovaps %ymm6, (%r11)
nop
add %r8, %r8

// Store
mov $0x950, %rbp
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rbp)
nop
cmp %rbx, %rbx

// Store
lea addresses_PSE+0x9a7, %rsi
nop
nop
nop
cmp %r11, %r11
movl $0x51525354, (%rsi)
sub %r11, %r11

// Faulty Load
lea addresses_US+0x55b7, %rdi
nop
nop
nop
nop
sub $5352, %r8
movb (%rdi), %r11b
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21826, '90': 3}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
