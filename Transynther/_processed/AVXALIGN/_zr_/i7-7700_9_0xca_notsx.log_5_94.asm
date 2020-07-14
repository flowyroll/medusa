.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5de8, %r12
nop
nop
nop
nop
nop
add $10212, %rsi
movw $0x6162, (%r12)
nop
nop
nop
cmp $28722, %r13
lea addresses_WT_ht+0xfb46, %rdi
nop
nop
cmp $14952, %r15
mov (%rdi), %ebx
add $45134, %rsi
lea addresses_UC_ht+0x64e4, %rsi
nop
nop
nop
nop
nop
and $9457, %r10
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x14008, %r13
nop
nop
nop
cmp $44635, %r15
mov $0x6162636465666768, %r10
movq %r10, (%r13)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x3684, %r13
nop
nop
nop
nop
cmp $41046, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r13)
cmp %r15, %r15
lea addresses_normal_ht+0x2de4, %rsi
nop
nop
nop
nop
nop
xor %r15, %r15
movw $0x6162, (%rsi)
xor $46372, %r13
lea addresses_D_ht+0x4e0c, %r12
inc %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
add $18373, %r13
lea addresses_A_ht+0x165e1, %r15
nop
nop
dec %r13
movb $0x61, (%r15)
sub $25742, %rsi
lea addresses_WC_ht+0x8ee4, %rdi
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
and %r15, %r15
lea addresses_WT_ht+0x3298, %rsi
nop
nop
nop
cmp $19623, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rsi)
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x12f64, %r13
xor $49473, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r13)
nop
add %r10, %r10
lea addresses_A_ht+0x1c484, %rsi
lea addresses_WT_ht+0xba44, %rdi
nop
nop
nop
and $14991, %r15
mov $104, %rcx
rep movsw
nop
nop
nop
dec %r13
lea addresses_WC_ht+0xf604, %rsi
lea addresses_WT_ht+0x19be4, %rdi
clflush (%rdi)
nop
and %r15, %r15
mov $88, %rcx
rep movsl
nop
nop
nop
sub $10246, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rdx

// Store
lea addresses_RW+0x2d18, %rbp
and $16802, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movaps %xmm7, (%rbp)
nop
nop
xor $31238, %rdx

// Store
lea addresses_PSE+0x6ce4, %r8
nop
sub %rdx, %rdx
movw $0x5152, (%r8)
xor $5822, %rdx

// Store
lea addresses_PSE+0x19de4, %r12
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
and $52082, %rdx

// Store
lea addresses_PSE+0x2ce4, %rdx
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%rdx)
nop
nop
nop
nop
and $63798, %r12

// Load
mov $0x1c77280000000ee4, %rax
nop
add %rdx, %rdx
mov (%rax), %r13w
nop
sub %r15, %r15

// Store
lea addresses_UC+0x1b784, %r15
nop
nop
nop
nop
dec %r8
movl $0x51525354, (%r15)
nop
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_US+0x1eee4, %r15
nop
nop
nop
nop
dec %rbp
movaps (%r15), %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 5}
00 00 00 00 00
*/
