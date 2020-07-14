.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x18e88, %rsi
lea addresses_UC_ht+0x152d0, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $43, %rcx
rep movsb
nop
and %r14, %r14
lea addresses_normal_ht+0x1988, %rsi
lea addresses_A_ht+0x7488, %rdi
nop
nop
nop
nop
nop
lfence
mov $52, %rcx
rep movsq
add $64040, %rdx
lea addresses_WC_ht+0x18488, %r12
nop
nop
nop
nop
nop
sub $45559, %r13
movw $0x6162, (%r12)
nop
nop
cmp $63871, %rcx
lea addresses_WT_ht+0x11bdc, %rsi
lea addresses_UC_ht+0xb988, %rdi
nop
nop
nop
nop
nop
and $20091, %rdx
mov $52, %rcx
rep movsq
nop
nop
and %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rdi

// Load
lea addresses_WT+0x17488, %rbp
nop
nop
nop
nop
nop
cmp $39234, %r13
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
nop
nop
add %rdi, %rdi

// Faulty Load
lea addresses_US+0x8488, %r14
nop
sub %r11, %r11
movups (%r14), %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'44': 3, '45': 1, '00': 1}
00 44 45 44 44
*/
