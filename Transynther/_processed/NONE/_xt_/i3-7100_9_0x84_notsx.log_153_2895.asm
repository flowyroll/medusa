.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x551e, %rsi
lea addresses_A_ht+0xa147, %rdi
nop
nop
cmp $40580, %r9
mov $82, %rcx
rep movsq
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1461e, %r13
clflush (%r13)
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
nop
xor $16110, %rax
lea addresses_UC_ht+0x18da, %r13
nop
sub $24022, %rax
movl $0x61626364, (%r13)
add %r9, %r9
lea addresses_WT_ht+0x821e, %rsi
lea addresses_WC_ht+0x341e, %rdi
nop
nop
nop
nop
nop
add $48995, %rdx
mov $82, %rcx
rep movsq
xor %r13, %r13
lea addresses_D_ht+0x1650e, %rsi
lea addresses_WC_ht+0x1c9fe, %rdi
nop
nop
nop
nop
nop
and $54740, %rbp
mov $80, %rcx
rep movsb
nop
nop
nop
nop
sub $22830, %r13
lea addresses_WC_ht+0x1d010, %rdx
sub %r13, %r13
mov (%rdx), %ax
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x421e, %rbp
nop
nop
and $30888, %r9
movb $0x61, (%rbp)
sub %rax, %rax
lea addresses_WC_ht+0x4036, %rax
nop
nop
nop
add $41335, %rsi
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm7
vpextrq $0, %xmm7, %rbp
nop
sub $50039, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x44cc, %r8
nop
nop
nop
nop
add %r9, %r9
movl $0x51525354, (%r8)
nop
nop
and $12130, %rdi

// Store
lea addresses_UC+0x668e, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp $11790, %r14
movb $0x51, (%r8)
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0x8a1e, %rbx
nop
nop
nop
add $40447, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_RW+0x921e, %rdi
clflush (%rdi)
sub %r15, %r15
movw $0x5152, (%rdi)
nop
nop
xor $36940, %rbx

// Faulty Load
lea addresses_A+0x8a1e, %rdi
nop
nop
nop
nop
sub $20951, %r14
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'35': 153}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
