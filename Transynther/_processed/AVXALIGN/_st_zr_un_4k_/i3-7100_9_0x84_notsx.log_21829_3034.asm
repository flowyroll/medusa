.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xd175, %rsi
lea addresses_normal_ht+0x135f5, %rdi
nop
nop
nop
and %rax, %rax
mov $107, %rcx
rep movsq
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x88f5, %rbp
nop
nop
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%rbp)
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x9375, %rsi
lea addresses_D+0x17b75, %rdi
clflush (%rdi)
nop
nop
cmp $52056, %rbp
mov $76, %rcx
rep movsb
nop
nop
nop
nop
xor $345, %rsi

// Store
lea addresses_normal+0x19307, %rcx
xor %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0x1ab75, %rbp
nop
nop
nop
nop
nop
and $14855, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rbp)
dec %rcx

// Store
lea addresses_D+0x11e35, %rdi
nop
nop
nop
nop
add $35942, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
add $13543, %r8

// Load
lea addresses_US+0x80f7, %rdx
nop
nop
nop
nop
inc %rdi
mov (%rdx), %r8w
sub %rdx, %rdx

// Store
lea addresses_A+0xaa75, %r13
nop
nop
dec %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movntdq %xmm5, (%r13)
and %rsi, %rsi

// Load
lea addresses_WT+0xb5d, %r8
nop
and $36078, %r13
mov (%r8), %rcx
nop
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_UC+0x11835, %rbp
nop
nop
inc %r13
mov (%rbp), %edi
nop
nop
nop
cmp %r13, %r13

// Store
mov $0x5100370000000375, %r13
nop
xor $55825, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor $38895, %rbp

// Faulty Load
lea addresses_normal+0x12375, %rsi
nop
add %r13, %r13
vmovntdqa (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 17922, '00': 3896, '1a': 11}
54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 00 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 00 54 00 54 54 00 54 54 54 00 54 00 00 54 54 54 54 54 54 00 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 00 00 54 54 00 54 00 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 54 54 00 54 54 54 00 00 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 00 00 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 00 54 54 54 54 00 54 54 00 00 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 00 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 00 54 54 00 00 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 00 00 54 54 00 00 00 54 54 54 54 54 54 54 00 54 54 54 54 00 00 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 00 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 00 00 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 00 54 54 54 54 00 54 54 54 54 00 00 54 00 54 54 00 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 00 00 54 54 54 54 00 54 00 54 54 00 54 54 00 54 54 54 54 00 00 00 54 54 54 54 54 00 54 00 54 54 54 54 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 54 00 54 54 54 00 54 54 54 54 00 00 54 54 54 00 00 54 54 54 00 54 54 54 54 54 00 54 54 54 00 54 54 00 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 00 54 54 00 54 54 54 54 54 00 00 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 00 54 54 54 00 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 00 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 54 54 00 54 00 00 54 54 00 54 00 00 54 54 54 54 54 54 54 54 54
*/
