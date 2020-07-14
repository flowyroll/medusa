.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xdeee, %rax
nop
add $15292, %r15
movups (%rax), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
and $53997, %r9
lea addresses_D_ht+0x15ea6, %rsi
lea addresses_UC_ht+0xa5ee, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rax, %rax
mov $45, %rcx
rep movsw
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x1afe2, %rsi
nop
nop
and $47608, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rsi
movaps %xmm3, (%rsi)
cmp $21226, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdx

// Load
lea addresses_A+0x8b6e, %r13
nop
nop
nop
sub %r14, %r14
mov (%r13), %rbp
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_PSE+0x7666, %rcx
xor $4915, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
cmp $52447, %r9

// Store
lea addresses_WC+0x1516e, %rbp
nop
nop
and $30525, %r13
movl $0x51525354, (%rbp)
cmp $52747, %rbp

// Store
lea addresses_A+0x1ebee, %r9
clflush (%r9)
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_RW+0x5eee, %r9
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r9)
nop
and $7231, %rcx

// Store
lea addresses_D+0x1a2ee, %rbp
nop
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%rbp)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_UC+0xd6ee, %rdx
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
nop
sub $49530, %rdx

// Load
mov $0x14781d000000062c, %r9
nop
and $8642, %r13
mov (%r9), %r12d
nop
nop
nop
nop
xor $27034, %r13

// Store
lea addresses_normal+0x126ae, %r9
nop
add %r12, %r12
movw $0x5152, (%r9)
nop
nop
add %rbp, %rbp

// Store
mov $0x4eb01e000000012e, %r13
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movaps %xmm1, (%r13)
nop
nop
nop
nop
nop
and $53643, %rbp

// Faulty Load
lea addresses_RW+0x5eee, %r14
dec %rdx
mov (%r14), %r12w
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'58': 1}
58
*/
