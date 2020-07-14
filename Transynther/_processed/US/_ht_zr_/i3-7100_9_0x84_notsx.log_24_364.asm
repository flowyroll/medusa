.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1017d, %rsi
lea addresses_WT_ht+0x1d6fd, %rdi
sub $49371, %r12
mov $73, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x76fd, %rsi
lea addresses_normal_ht+0xd0f2, %rdi
nop
nop
nop
nop
nop
xor $31449, %r14
mov $37, %rcx
rep movsb
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1eafd, %rcx
nop
nop
nop
nop
nop
cmp $50823, %rdx
movw $0x6162, (%rcx)
sub %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xf4bd, %rsi
dec %r14
movb $0x51, (%rsi)
nop
nop
add %r13, %r13

// Store
lea addresses_normal+0x1a7bd, %r14
nop
nop
sub $55599, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r14)
and $62850, %rsi

// Store
lea addresses_UC+0xab95, %rbx
nop
nop
nop
dec %rsi
movb $0x51, (%rbx)
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_US+0xd2fd, %rdx
nop
nop
nop
nop
nop
inc %rsi
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'46': 9, '00': 5, '45': 10}
00 45 46 46 45 46 45 45 46 45 46 45 00 45 45 00 00 46 46 00 45 46 46 45
*/
