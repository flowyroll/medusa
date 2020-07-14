.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x328e, %rsi
lea addresses_normal_ht+0x52ae, %rdi
add $36274, %rbx
mov $102, %rcx
rep movsq
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0xb2d2, %r12
nop
nop
nop
dec %r13
movw $0x6162, (%r12)
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0xbf8e, %rsi
nop
nop
nop
nop
nop
dec %rcx
mov (%rsi), %rdi
nop
sub $57833, %r12
lea addresses_normal_ht+0x11ec, %r13
nop
nop
nop
nop
nop
sub %rdi, %rdi
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Load
mov $0x217ad60000000cf2, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
and %rbp, %rbp

// Load
lea addresses_UC+0x1f88e, %rbp
clflush (%rbp)
nop
sub %r9, %r9
mov (%rbp), %cx
nop
nop
and $17538, %r9

// Store
lea addresses_PSE+0x31f4, %r9
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovaps %ymm2, (%r9)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_RW+0x1ba0e, %rbx
nop
nop
nop
sub $16060, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rbx)
cmp %r9, %r9

// Load
lea addresses_WT+0x1dc9e, %r13
nop
nop
nop
nop
nop
inc %rdi
mov (%r13), %bx
xor %rbp, %rbp

// Faulty Load
lea addresses_normal+0xe88e, %rdi
nop
nop
nop
nop
nop
cmp $62762, %r9
mov (%rdi), %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 46}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
