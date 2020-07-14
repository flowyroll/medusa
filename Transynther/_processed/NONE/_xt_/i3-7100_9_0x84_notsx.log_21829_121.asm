.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xabe9, %r13
nop
and $24338, %r11
movups (%r13), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x39b1, %rbx
cmp $31972, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%rbx)
xor %r11, %r11
lea addresses_WC_ht+0xaba2, %rbx
nop
and %r14, %r14
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
sub %r11, %r11
lea addresses_D_ht+0x13681, %rax
nop
nop
nop
and %r13, %r13
mov (%rax), %rbx
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1c6b1, %rax
add %rdx, %rdx
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x191b1, %r11
nop
nop
nop
nop
sub $8620, %r14
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
nop
and $7905, %r9
lea addresses_WC_ht+0xc1b1, %rsi
lea addresses_normal_ht+0x12211, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $122, %rcx
rep movsw
nop
nop
and %r14, %r14
lea addresses_A_ht+0xb5b1, %rcx
nop
nop
nop
nop
sub %r11, %r11
movb $0x61, (%rcx)
nop
nop
dec %r14
lea addresses_normal_ht+0x2db1, %r11
nop
nop
nop
nop
and $62673, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
nop
xor %r9, %r9
lea addresses_A_ht+0xddb1, %rdx
nop
nop
nop
nop
nop
add %rcx, %rcx
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0xcb0d, %rsi
lea addresses_WT_ht+0x143b1, %rdi
nop
nop
nop
cmp $62385, %r13
mov $95, %rcx
rep movsl
and $62904, %r11
lea addresses_WT_ht+0x57e9, %rsi
lea addresses_UC_ht+0x11b1, %rdi
sub $60497, %r13
mov $57, %rcx
rep movsq
sub $10132, %r13
lea addresses_WC_ht+0x15fb1, %rsi
lea addresses_WC_ht+0x1d9b1, %rdi
nop
nop
nop
inc %rbx
mov $61, %rcx
rep movsl
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1eee1, %rcx
nop
nop
nop
nop
nop
xor $42171, %r13
movw $0x6162, (%rcx)
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x39b1, %r14
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
nop
cmp $36642, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x1874f, %rsi
lea addresses_D+0x65ec, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $38, %rcx
rep movsw
nop
cmp $3264, %rsi

// Store
lea addresses_UC+0x15b1, %rcx
nop
nop
nop
nop
sub $23854, %r8
movb $0x51, (%rcx)
nop
nop
nop
xor $37983, %r12

// Store
lea addresses_normal+0x141b1, %rcx
nop
nop
add %r12, %r12
movl $0x51525354, (%rcx)
nop
sub $25533, %r12

// Load
lea addresses_WT+0x69b1, %rsi
nop
nop
nop
nop
nop
add %r12, %r12
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
dec %rdx

// Store
lea addresses_WT+0x13641, %r8
nop
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
cmp $4437, %rcx

// Load
mov $0x81, %rdi
cmp %r8, %r8
mov (%rdi), %cx
nop
nop
nop
nop
nop
add $56545, %r14

// Faulty Load
lea addresses_WT+0x69b1, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r12, %r12
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
