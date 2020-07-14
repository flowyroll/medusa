.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rdi
lea addresses_normal_ht+0x8e7c, %r13
nop
nop
nop
nop
sub %rbx, %rbx
mov (%r13), %r15w
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x6a96, %rbx
clflush (%rbx)
nop
nop
nop
nop
add %r9, %r9
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %r12
nop
and $58663, %r15
lea addresses_UC_ht+0x5590, %rdi
nop
nop
nop
cmp $16317, %r8
mov (%rdi), %r13d
cmp $21161, %r13
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0xb20a, %rsi
lea addresses_normal+0xd8ca, %rdi
clflush (%rsi)
and $37412, %rbp
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $58999, %rdi

// Store
lea addresses_WT+0x1a4ca, %rsi
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_PSE+0x1d0ca, %rdi
nop
nop
and %r12, %r12
mov (%rdi), %ecx
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_UC+0x1234a, %rcx
clflush (%rcx)
nop
sub $39313, %r12
vmovaps (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
inc %rdi

// Store
lea addresses_normal+0xfcca, %rsi
inc %r12
movb $0x51, (%rsi)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_A+0x64ca, %rdx
clflush (%rdx)
nop
and %rcx, %rcx
movl $0x51525354, (%rdx)
nop
nop
inc %r14

// Store
lea addresses_US+0x80ca, %rdi
clflush (%rdi)
nop
nop
and %rdx, %rdx
movl $0x51525354, (%rdi)
nop
nop
and %rdi, %rdi

// Store
lea addresses_normal+0xa72a, %r12
nop
and $5911, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r12)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_US+0x158ca, %r14
nop
nop
nop
nop
and $53508, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
nop
nop
nop
nop
xor $44881, %rsi

// Store
lea addresses_WT+0x166cf, %rsi
nop
xor $15747, %r12
movl $0x51525354, (%rsi)
nop
nop
cmp $30750, %rsi

// Faulty Load
lea addresses_WT+0x1a4ca, %rcx
nop
nop
dec %rsi
movaps (%rcx), %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 77, '36': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
