.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdx
lea addresses_normal_ht+0x19cf3, %rdx
add %rcx, %rcx
movb $0x61, (%rdx)
nop
nop
nop
nop
xor $6113, %r9
lea addresses_WC_ht+0x85f3, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%r13), %r8w
nop
nop
nop
nop
nop
sub $23645, %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x55f3, %r12
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
nop
and %r12, %r12

// Load
lea addresses_A+0xfef3, %rsi
nop
cmp $42783, %r9
mov (%rsi), %r12d
nop
nop
xor %r12, %r12

// Store
lea addresses_normal+0x1a1f3, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%rsi)
nop
add $61340, %rax

// Faulty Load
lea addresses_UC+0x55f3, %rsi
nop
inc %r14
mov (%rsi), %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'58': 8}
58 58 58 58 58 58 58 58
*/
