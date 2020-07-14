.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16f0c, %rsi
lea addresses_UC_ht+0x830c, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $45, %rcx
rep movsw
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x11e0c, %rsi
lea addresses_WT_ht+0x1370c, %rdi
add %rbp, %rbp
mov $11, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x117ac, %rdx
nop
nop
nop
xor $15391, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x3854, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov (%rdi), %ebp
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp

// Load
lea addresses_normal+0x1070c, %r15
nop
nop
nop
nop
nop
cmp %rax, %rax
movups (%r15), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
xor %r8, %r8

// Store
mov $0xf0c, %r13
cmp %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, (%r13)
and $30844, %rax

// Load
lea addresses_normal+0x1b818, %rbp
nop
nop
nop
xor %r13, %r13
mov (%rbp), %r15d
nop
nop
xor %r13, %r13

// Store
lea addresses_A+0x1ef4c, %rbp
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
and %r13, %r13

// Store
lea addresses_normal+0xbe4c, %rax
clflush (%rax)
nop
and %r13, %r13
movw $0x5152, (%rax)
nop
nop
add $10937, %rax

// Load
lea addresses_WT+0xd70c, %r15
nop
nop
nop
nop
nop
add $36398, %rbp
vmovntdqa (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
nop
add $64237, %r13

// Store
lea addresses_RW+0x13e79, %rbp
nop
nop
inc %r14
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
inc %r15

// Store
lea addresses_normal+0xe85f, %r15
nop
nop
nop
nop
add $14759, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_RW+0xa1d0, %r13
nop
nop
nop
nop
nop
xor $30688, %rbp
movl $0x51525354, (%r13)
nop
xor $12988, %rbp

// Faulty Load
mov $0x359fc30000000f0c, %r14
sub $48391, %rbp
movb (%r14), %r10b
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 21, '58': 319}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
