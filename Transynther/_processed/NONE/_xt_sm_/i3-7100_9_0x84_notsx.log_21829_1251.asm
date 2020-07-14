.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x574d, %rax
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x1754d, %rsi
lea addresses_WT_ht+0x1194d, %rdi
nop
nop
nop
nop
nop
xor $3342, %r14
mov $45, %rcx
rep movsl
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0xadcd, %r14
nop
nop
nop
cmp $2595, %rax
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
and $57761, %rbx
lea addresses_WT_ht+0x514d, %rsi
lea addresses_A_ht+0x700d, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
and $26173, %r11
mov $73, %rcx
rep movsl
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1794d, %r11
nop
nop
nop
nop
nop
xor $28387, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x1841, %r14
nop
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
xor $33082, %r11
lea addresses_normal_ht+0xad4d, %rsi
lea addresses_normal_ht+0xd84d, %rdi
clflush (%rsi)
clflush (%rdi)
nop
add %r9, %r9
mov $111, %rcx
rep movsl
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x5ccd, %r14
nop
nop
nop
nop
nop
xor $13486, %rsi
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x810f, %rdi
nop
nop
nop
cmp $46163, %rbx
movb $0x61, (%rdi)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x18cdd, %rsi
lea addresses_WC_ht+0x10f51, %rdi
nop
nop
nop
nop
inc %r14
mov $69, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1a54d, %rcx
nop
nop
nop
nop
add %rbx, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and $45000, %r9
lea addresses_UC_ht+0x1e0bd, %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r14), %bx
nop
nop
nop
nop
nop
cmp $12134, %rbx
lea addresses_normal_ht+0x92cd, %r9
nop
nop
nop
nop
nop
add $58188, %rsi
mov (%r9), %rbx
nop
nop
nop
nop
nop
xor $48116, %rax
lea addresses_WT_ht+0x1124d, %rdi
nop
nop
nop
add $27566, %rsi
movb (%rdi), %r14b
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0xb959, %rsi
nop
sub $1139, %rbx
movb (%rsi), %r14b
sub $6046, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0xf14d, %rsi
lea addresses_A+0x188cd, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
cmp %r10, %r10
mov $69, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_normal+0xb54d, %r15
nop
nop
and %rbp, %rbp
movw $0x5152, (%r15)
nop
nop
add $59053, %rdi

// Store
lea addresses_normal+0x1354d, %r9
nop
nop
nop
nop
nop
cmp $39532, %rcx
movl $0x51525354, (%r9)
dec %r15

// Store
lea addresses_WT+0x2653, %r15
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
nop
sub $57886, %rdi

// Store
lea addresses_UC+0x1f25d, %rcx
nop
nop
and %rsi, %rsi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and $7325, %rsi

// Store
lea addresses_WT+0x874d, %r9
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r9)
xor %rbp, %rbp

// Store
lea addresses_UC+0x15ced, %r10
clflush (%r10)
dec %rcx
movl $0x51525354, (%r10)
nop
nop
nop
dec %rbp

// REPMOV
lea addresses_A+0x1194d, %rsi
lea addresses_A+0x1714d, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $38, %rcx
rep movsw
and %r10, %r10

// Store
lea addresses_A+0x1374d, %r10
clflush (%r10)
nop
nop
and %r9, %r9
movl $0x51525354, (%r10)
nop
and $22498, %r15

// Store
lea addresses_UC+0x11aad, %r15
xor %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_A+0x1714d, %rbp
nop
sub %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
and $40773, %r15

// Store
lea addresses_A+0x154d, %r15
xor $4948, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
and $15673, %r9

// Faulty Load
lea addresses_A+0x1714d, %r10
nop
nop
nop
cmp %rbp, %rbp
mov (%r10), %edi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
