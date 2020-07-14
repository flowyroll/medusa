.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ae6d, %r8
nop
nop
nop
nop
nop
xor $51161, %r15
movb $0x61, (%r8)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x7abd, %rsi
lea addresses_UC_ht+0xe83d, %rdi
nop
dec %r15
mov $5, %rcx
rep movsq
and $51151, %rbp
lea addresses_WT_ht+0xcabd, %rsi
nop
nop
nop
nop
nop
dec %r13
mov (%rsi), %ecx
nop
xor $1494, %rsi
lea addresses_WC_ht+0x19dbd, %rcx
nop
sub $35615, %r13
mov (%rcx), %r8d
and $36810, %r13
lea addresses_WT_ht+0x18abd, %rsi
lea addresses_UC_ht+0xce3d, %rdi
nop
nop
add $10296, %rax
mov $97, %rcx
rep movsb
nop
nop
and $17419, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Faulty Load
mov $0xabd, %rsi
nop
nop
nop
sub $17077, %r15
mov (%rsi), %r9d
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'3c': 62, 'e0': 2}
3c 3c 3c 3c 3c e0 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c e0
*/
