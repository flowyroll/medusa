.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xa2b1, %rsi
lea addresses_WT_ht+0xa9a4, %rdi
nop
nop
nop
sub %r8, %r8
mov $38, %rcx
rep movsb
cmp %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x4071, %r14
nop
nop
nop
nop
and %r12, %r12
movb $0x51, (%r14)
nop
nop
inc %rdx

// Store
lea addresses_PSE+0xcdf1, %r8
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
and $24448, %rcx

// Store
lea addresses_PSE+0x6171, %rax
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movntdq %xmm7, (%rax)

// Exception!!!
mov (0), %rdx
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_RW+0xaa91, %rdx
nop
nop
and $30819, %rax
movw $0x5152, (%rdx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rax
xor %r14, %r14

// Store
lea addresses_RW+0x1b425, %rax
clflush (%rax)
nop
nop
nop
inc %rsi
movl $0x51525354, (%rax)
dec %r14

// Load
mov $0x715e80000000a71, %r12
nop
nop
and %r8, %r8
mov (%r12), %cx
inc %r14

// Faulty Load
lea addresses_A+0x15971, %r14
nop
nop
nop
nop
nop
cmp $59985, %rsi
vmovaps (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'00': 1}
00
*/
