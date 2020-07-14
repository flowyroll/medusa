.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7085, %rsi
lea addresses_WC_ht+0xe395, %rdi
nop
nop
nop
nop
add $65066, %rbx
mov $80, %rcx
rep movsb
cmp $47837, %rbx
lea addresses_D_ht+0x7695, %r9
nop
nop
nop
nop
sub $8629, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1a115, %rcx
nop
nop
and $38299, %rax
mov (%rcx), %r9w
nop
and $60001, %r9
lea addresses_A_ht+0x3595, %rsi
cmp %r11, %r11
mov (%rsi), %rax
inc %rbx
lea addresses_UC_ht+0x12795, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%rcx)
nop
nop
add %rax, %rax
lea addresses_normal_ht+0xe9d5, %rsi
nop
nop
dec %rbx
movl $0x61626364, (%rsi)
nop
nop
dec %rsi
lea addresses_UC_ht+0x8d75, %rsi
lea addresses_UC_ht+0x18795, %rdi
nop
nop
nop
add %rbp, %rbp
mov $34, %rcx
rep movsw
nop
nop
sub $35171, %rcx
lea addresses_D_ht+0xb395, %rsi
lea addresses_D_ht+0x9695, %rdi
clflush (%rsi)
nop
nop
nop
nop
mfence
mov $17, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0xc995, %rsi
lea addresses_WT_ht+0x5bf5, %rdi
nop
nop
nop
nop
nop
xor $16148, %r9
mov $54, %rcx
rep movsw
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x8afb, %rbx
clflush (%rbx)
cmp %rdi, %rdi
mov (%rbx), %rsi
xor %rbx, %rbx
lea addresses_WT_ht+0x7955, %rsi
lea addresses_UC_ht+0x13d35, %rdi
cmp $28612, %rbx
mov $35, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $23146, %r11
lea addresses_WT_ht+0x5915, %rsi
lea addresses_WC_ht+0x19115, %rdi
nop
nop
add $8314, %rax
mov $77, %rcx
rep movsl
nop
nop
nop
and $48862, %rsi
lea addresses_D_ht+0xb8d5, %rsi
lea addresses_A_ht+0x13755, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $109, %rcx
rep movsw
add $37259, %rcx
lea addresses_WT_ht+0x12a75, %rdi
nop
nop
nop
nop
dec %r9
movb $0x61, (%rdi)
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rsi

// Store
lea addresses_RW+0x1a395, %r15
and %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r15)
nop
add %r14, %r14

// Store
mov $0x495, %r12
clflush (%r12)
nop
cmp $3413, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
dec %rbp

// Store
lea addresses_WT+0x4b59, %r9
nop
nop
nop
nop
cmp %r13, %r13
movw $0x5152, (%r9)
nop
nop
nop
inc %r9

// Store
lea addresses_US+0x3515, %r9
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
sub $7485, %r12

// Store
lea addresses_RW+0xef95, %rbp
nop
nop
nop
nop
add %r15, %r15
movw $0x5152, (%rbp)
nop
sub %r14, %r14

// Store
lea addresses_A+0x1c195, %rbp
nop
cmp %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rbp)
nop
nop
inc %rbp

// Load
lea addresses_WT+0x7f95, %r15
nop
nop
nop
dec %rsi
mov (%r15), %r13w
sub %rbp, %rbp

// Store
lea addresses_WT+0x11b95, %r13
inc %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
and %r14, %r14

// Store
lea addresses_normal+0x16095, %r12
nop
nop
nop
sub %r13, %r13
movb $0x51, (%r12)
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_RW+0x1a395, %r14
nop
inc %rbp
movb (%r14), %r13b
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 5}
58 58 58 58 58
*/
