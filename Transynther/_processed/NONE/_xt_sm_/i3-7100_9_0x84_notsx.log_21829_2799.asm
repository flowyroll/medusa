.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rcx
push %rsi
lea addresses_WT_ht+0x17116, %r11
nop
xor $55050, %r8
movw $0x6162, (%r11)
nop
nop
nop
inc %rcx
pop %rsi
pop %rcx
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x1b816, %rsi
lea addresses_PSE+0x5bbe, %rdi
nop
nop
nop
mfence
mov $29, %rcx
rep movsq
nop
nop
nop
nop
sub $55982, %rcx

// Store
lea addresses_D+0xa186, %rsi
nop
xor %rdx, %rdx
movb $0x51, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx

// REPMOV
lea addresses_RW+0x5e16, %rsi
lea addresses_WT+0x6016, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $46, %rcx
rep movsw
nop
nop
nop
sub $11602, %rdx

// Store
lea addresses_WC+0x151c9, %rdi
nop
nop
nop
nop
nop
cmp $6722, %rsi
movw $0x5152, (%rdi)
nop
sub %rdi, %rdi

// Load
lea addresses_normal+0x80a6, %r15
nop
nop
nop
nop
nop
xor $10721, %rdi
mov (%r15), %rdx
nop
add $63011, %rdx

// Store
lea addresses_D+0x185ae, %rdx
clflush (%rdx)
and $62314, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rdx)
nop
inc %rbx

// Store
lea addresses_UC+0x7d96, %r14
nop
cmp %rsi, %rsi
movl $0x51525354, (%r14)
inc %rdi

// Store
lea addresses_A+0x1fbe6, %r15
nop
xor $5335, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
add %rdx, %rdx

// Load
lea addresses_PSE+0x9016, %rdi
nop
nop
add $12353, %r15
movb (%rdi), %r14b

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rcx
nop
cmp $59855, %r15

// Store
lea addresses_normal+0xb816, %r15
clflush (%r15)
nop
sub $34297, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovaps %ymm3, (%r15)
nop
nop
add %rcx, %rcx

// Store
lea addresses_PSE+0x12816, %rdx
nop
nop
and $36318, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rdx)
nop
and $20388, %r12

// Store
mov $0x22e64600000003e2, %rbx
nop
nop
nop
nop
nop
cmp $31739, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovntdq %ymm4, (%rbx)
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0x1b816, %r12
nop
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r12)
nop
nop
add %rdx, %rdx

// Store
lea addresses_A+0x6016, %r14
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r14)
nop
nop
add $15466, %r14

// Faulty Load
lea addresses_normal+0x1b816, %rdx
nop
nop
nop
nop
nop
sub $22786, %r12
movb (%rdx), %r15b
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
