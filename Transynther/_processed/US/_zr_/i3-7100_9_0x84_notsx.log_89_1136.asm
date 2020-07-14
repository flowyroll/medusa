.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1743c, %rsi
lea addresses_UC_ht+0xd18c, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $57, %rcx
rep movsl
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x3d3c, %r9
clflush (%r9)
xor %rdi, %rdi
movb $0x61, (%r9)
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rdi
push %rsi

// Store
lea addresses_WT+0xf3f7, %r12
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r12)
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_RW+0x100bc, %r8
nop
nop
nop
nop
xor $14001, %r12
movw $0x5152, (%r8)
nop
nop
nop
add $43634, %r14

// Store
mov $0x55d9980000000c3c, %r10
nop
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%r10)
nop
nop
nop
and $13241, %r14

// Load
lea addresses_WT+0x12dc, %r14
nop
nop
add %rsi, %rsi
mov (%r14), %r12
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_PSE+0x1a23c, %r10
nop
nop
nop
nop
cmp $51896, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
and $57341, %r8

// Store
lea addresses_WT+0xda72, %rdi
cmp $65261, %rbx
movb $0x51, (%rdi)
nop
nop
nop
nop
xor $6362, %rsi

// Store
lea addresses_A+0x1813c, %rsi
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rsi)
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WT+0x18f3c, %r10
nop
inc %r8
movb $0x51, (%r10)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_WT+0x843c, %r12
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_PSE+0x48dc, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovaps %ymm5, (%rdi)
nop
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_US+0x103c, %rdi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rdi), %bl
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 89}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
