.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x166fb, %rdx
clflush (%rdx)
nop
nop
nop
nop
and $38201, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0xd97b, %r13
clflush (%r13)
nop
nop
and $5463, %rdi
mov (%r13), %ebx
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x979b, %r13
nop
nop
sub %r15, %r15
mov (%r13), %edi
cmp %r13, %r13
lea addresses_WC_ht+0x3cfb, %rsi
lea addresses_WC_ht+0x1b3e7, %rdi
clflush (%rsi)
nop
nop
sub $31578, %r10
mov $83, %rcx
rep movsw
nop
nop
nop
nop
sub $39373, %rdx
lea addresses_UC_ht+0x1249b, %rsi
lea addresses_D_ht+0x1b4fb, %rdi
nop
nop
xor $21266, %rbx
mov $51, %rcx
rep movsl
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x18167, %rdx
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rdx)
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x18b, %rsi
lea addresses_WT_ht+0x1c16f, %rdi
add $46272, %r10
mov $110, %rcx
rep movsw
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x6b9b, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x3c7f, %rdi
nop
nop
nop
nop
nop
sub $58418, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
add $19963, %r15
lea addresses_WT_ht+0x17ffb, %rsi
lea addresses_normal_ht+0x140fb, %rdi
nop
nop
xor %rbx, %rbx
mov $78, %rcx
rep movsb
nop
sub $41233, %r13
lea addresses_normal_ht+0x14aeb, %rsi
lea addresses_A_ht+0x166b, %rdi
nop
nop
inc %r13
mov $70, %rcx
rep movsq
nop
nop
nop
and $55892, %rbx
lea addresses_normal_ht+0x10f60, %rsi
lea addresses_UC_ht+0x367b, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $52, %rcx
rep movsq
nop
nop
nop
and $59322, %rdi
lea addresses_UC_ht+0x1380b, %rcx
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rcx)
xor $51633, %rsi
lea addresses_normal_ht+0x1d0fb, %rsi
lea addresses_UC_ht+0x1a4fb, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rbx
mov $26, %rcx
rep movsw
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xe4fb, %rdi
nop
nop
nop
nop
nop
dec %rbx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
cmp $48530, %rdi

// Store
lea addresses_WT+0x15ebb, %rbx
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rbx)
nop
nop
add %rbx, %rbx

// Store
lea addresses_UC+0x164b, %rbx
nop
nop
nop
and $24508, %rcx
movw $0x5152, (%rbx)
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_UC+0x1c141, %rsi
nop
nop
add $33060, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
add $18252, %rcx

// Store
lea addresses_UC+0x1046f, %rbx
nop
nop
nop
nop
nop
add $16339, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rbx)
nop
add %rdx, %rdx

// Store
lea addresses_PSE+0x187b, %rcx
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_UC+0xe4fb, %rdi
nop
nop
nop
xor %rbx, %rbx
mov (%rdi), %r8w
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
