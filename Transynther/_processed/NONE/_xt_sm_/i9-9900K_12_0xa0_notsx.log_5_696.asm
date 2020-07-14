.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1bb3e, %rsi
lea addresses_WT_ht+0x1ebde, %rdi
nop
cmp $14120, %rbp
mov $33, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x15898, %rsi
clflush (%rsi)
nop
nop
xor $14797, %rcx
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x1adde, %r9
nop
nop
nop
nop
nop
add %r11, %r11
mov (%r9), %ebp
nop
nop
nop
xor $17204, %r11
lea addresses_WC_ht+0xfde, %rsi
xor $5446, %r12
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
mfence
lea addresses_UC_ht+0xacbe, %rsi
lea addresses_UC_ht+0x1055e, %rdi
clflush (%rdi)
inc %r15
mov $58, %rcx
rep movsb
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1542e, %r9
nop
nop
nop
add %r11, %r11
mov (%r9), %esi
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x53e4, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x12282, %rbp
xor %rcx, %rcx
mov (%rbp), %r12
nop
add $60855, %rsi
lea addresses_WT_ht+0xa186, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov (%rdi), %r9w
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xfdde, %rsi
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
add $23948, %r9
lea addresses_UC_ht+0x18bde, %rsi
lea addresses_normal_ht+0x15d2e, %rdi
nop
nop
cmp %r11, %r11
mov $19, %rcx
rep movsb
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
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
push %rdi

// Store
lea addresses_WC+0x934a, %rdi
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
add %r12, %r12

// Store
lea addresses_RW+0x1ca5e, %r14
clflush (%r14)
xor $43861, %r15
movb $0x51, (%r14)
nop
nop
nop
sub $61720, %r15

// Store
lea addresses_RW+0x1e3de, %r12
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r12)
nop
nop
and %r15, %r15

// Store
lea addresses_UC+0x7d0e, %r14
clflush (%r14)
nop
nop
cmp %r13, %r13
movl $0x51525354, (%r14)
nop
nop
nop
xor $31991, %r13

// Store
lea addresses_A+0x129de, %r15
nop
nop
nop
nop
nop
sub $25400, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movaps %xmm2, (%r15)
nop
nop
nop
cmp $8025, %r15

// Store
lea addresses_normal+0x1f31e, %rbp
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
xor $19723, %r15

// Store
lea addresses_A+0x15fde, %r12
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r12)
sub %r12, %r12

// Store
lea addresses_A+0x15fde, %rbp
nop
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rbp)
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_A+0x15fde, %r9
nop
nop
sub $45146, %r15
movb (%r9), %r13b
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdi
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
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'58': 5}
58 58 58 58 58
*/
