.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x57e9, %rbx
nop
nop
nop
nop
add %r12, %r12
movl $0x61626364, (%rbx)
xor %r9, %r9
lea addresses_D_ht+0xbb43, %r13
nop
nop
add $45319, %r15
movw $0x6162, (%r13)
nop
nop
cmp $61206, %r15
lea addresses_WT_ht+0x1e367, %rsi
lea addresses_UC_ht+0x767, %rdi
cmp $12933, %r15
mov $103, %rcx
rep movsb
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x6367, %rsi
lea addresses_D_ht+0x16b67, %rdi
nop
nop
nop
add $36457, %r12
mov $48, %rcx
rep movsw
add $44144, %rbx
lea addresses_D_ht+0xa867, %rdi
nop
nop
nop
add $17571, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
sub $30278, %rsi
lea addresses_D_ht+0x8767, %r13
nop
nop
nop
nop
nop
inc %r15
mov (%r13), %edi
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x17c67, %r9
nop
nop
nop
dec %rbx
movb (%r9), %r13b
cmp $14050, %r9
lea addresses_A_ht+0x12d67, %r9
nop
dec %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x6167, %rsi
lea addresses_normal_ht+0x16567, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $28, %rcx
rep movsw
nop
cmp $11741, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1cf67, %rbx
nop
nop
inc %r8
movl $0x51525354, (%rbx)
nop
nop
nop
nop
inc %rdi

// Store
mov $0x257fae0000000c2f, %rbx
add $19373, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
dec %r10

// Store
lea addresses_normal+0x7b67, %rcx
nop
nop
nop
nop
xor $48105, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rcx)
add $42543, %rbx

// Faulty Load
lea addresses_normal+0x7b67, %r9
nop
nop
nop
nop
nop
cmp $15618, %rsi
movups (%r9), %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'00': 210}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
