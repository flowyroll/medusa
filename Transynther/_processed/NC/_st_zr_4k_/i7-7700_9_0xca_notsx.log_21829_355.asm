.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe44d, %rsi
lea addresses_WT_ht+0x1b24d, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $126, %rcx
rep movsb
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x1b3e5, %r9
nop
sub $59216, %r8
movw $0x6162, (%r9)
nop
nop
nop
inc %r8
lea addresses_D_ht+0x1094d, %rsi
lea addresses_WC_ht+0x1217d, %rdi
nop
nop
add %r14, %r14
mov $109, %rcx
rep movsb
nop
nop
nop
nop
xor $58730, %r14
lea addresses_normal_ht+0x1c2d9, %r9
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%r9)
nop
nop
nop
nop
and $15117, %rbx
lea addresses_normal_ht+0x8a4d, %rdi
nop
sub $37825, %rbx
mov (%rdi), %ebp
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1014d, %rsi
lea addresses_A_ht+0x15e4d, %rdi
nop
nop
nop
nop
add $51246, %r14
mov $42, %rcx
rep movsq
add $6513, %r8
lea addresses_A_ht+0x1c7cd, %rdi
nop
nop
nop
and $57147, %r8
movw $0x6162, (%rdi)
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x794d, %rbx
nop
nop
nop
nop
and $65447, %rdi
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
and $18310, %r9
lea addresses_WT_ht+0x19e4d, %rsi
lea addresses_WT_ht+0xe01d, %rdi
nop
nop
nop
sub $2125, %rbx
mov $8, %rcx
rep movsb
and $27208, %r14
lea addresses_WT_ht+0x1210d, %rdi
nop
nop
nop
nop
nop
xor $23056, %rcx
movw $0x6162, (%rdi)
nop
cmp %r14, %r14
lea addresses_D_ht+0x17e4d, %rdi
nop
nop
nop
nop
nop
dec %r9
mov (%rdi), %r14d
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
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
lea addresses_WT+0xb7fb, %rsi
lea addresses_normal+0x1961d, %rdi
nop
nop
sub %rdx, %rdx
mov $25, %rcx
rep movsl
nop
nop
nop
cmp $39304, %r8

// Store
lea addresses_A+0x1464d, %r13
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r13)
nop
nop
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_RW+0x18a4d, %r13
nop
nop
nop
nop
dec %rdi
mov (%r13), %rsi
nop
cmp $43468, %rcx

// Store
lea addresses_RW+0x1bf8b, %rdx
nop
nop
nop
and $17970, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0x10e4d, %r13
nop
nop
nop
nop
nop
inc %rsi
movw $0x5152, (%r13)
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_normal+0x19dfe, %rdi
clflush (%rdi)
nop
add $37409, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovntdq %ymm0, (%rdi)
nop
sub %rbp, %rbp

// Load
lea addresses_D+0xcf8d, %rcx
xor $37829, %rdi
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
add $3266, %r8

// Store
lea addresses_A+0x13d0d, %rdx
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
cmp $43474, %rsi

// Store
lea addresses_PSE+0xe125, %r8
clflush (%r8)
sub $48820, %r13
movb $0x51, (%r8)
nop
nop
nop
nop
and %r13, %r13

// Faulty Load
mov $0x7c24ee000000064d, %rsi
nop
nop
inc %rdi
mov (%rsi), %r8d
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
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
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 2625, '52': 19204}
52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 00 52 52 00 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 00 52 52 52 00 52 52 52 00 52 52 52 00 52 52 52 00 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 00 52 52 00 52 00 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 00 52 00 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 00 52 00 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00
*/
