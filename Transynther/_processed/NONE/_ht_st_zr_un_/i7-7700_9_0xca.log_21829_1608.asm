.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x18980, %r13
and %rax, %rax
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0xebc6, %rsi
lea addresses_UC_ht+0x1ec00, %rdi
clflush (%rdi)
nop
nop
nop
and $2208, %r12
mov $5, %rcx
rep movsw
nop
nop
and $61982, %r12
lea addresses_WT_ht+0x6b76, %rax
sub $27668, %rcx
movups (%rax), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx

// Load
lea addresses_D+0x1cfe, %rbp
nop
nop
cmp %rax, %rax
mov (%rbp), %ebx
nop
nop
sub $25864, %rax

// Faulty Load
lea addresses_UC+0x1e33e, %r9
nop
nop
nop
nop
nop
sub $33402, %r12
mov (%r9), %r14d
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'de': 2, '45': 2054, 'ff': 104, 'fa': 18, '29': 24, '1a': 334, '00': 59, '3c': 21, 'ef': 18141, 'ee': 1041, '49': 31}
00 ee ee ee ee ee ff 29 ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee 45 ee ee ee ee ee ee ee ee 45 ee ee ff 1a ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee 00 ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee 1a ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee de ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee 45 ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee 45 ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee 45 ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee 45 ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee 1a ee ee ee ee 45 ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ff fa ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee 45 ee ee ee ee ee ee ee ee ee 45 ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee ee
*/
