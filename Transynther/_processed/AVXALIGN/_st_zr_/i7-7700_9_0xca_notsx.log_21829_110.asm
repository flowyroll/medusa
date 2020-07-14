.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1d28f, %rsi
lea addresses_D_ht+0xa573, %rdi
nop
inc %rbx
mov $106, %rcx
rep movsl
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xadb3, %rsi
lea addresses_WC_ht+0x3cb3, %rdi
nop
nop
nop
nop
nop
and $43621, %rdx
mov $68, %rcx
rep movsw
xor %rsi, %rsi
lea addresses_normal_ht+0xd0f3, %rsi
nop
nop
nop
add %r13, %r13
mov (%rsi), %ecx
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x6373, %rcx
nop
nop
nop
nop
nop
xor $59273, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rcx)
nop
nop
dec %rdx
lea addresses_normal_ht+0x13170, %r13
nop
add %r10, %r10
movups (%r13), %xmm5
vpextrq $0, %xmm5, %rsi
nop
and $14441, %r10
lea addresses_normal_ht+0x8f53, %rsi
lea addresses_A_ht+0x10a73, %rdi
nop
dec %rbp
mov $117, %rcx
rep movsq
nop
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0xcf3, %rbp
nop
cmp $32268, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
nop
dec %r14

// Store
mov $0x611e5300000008f3, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r8)
nop
nop
add %r10, %r10

// Store
lea addresses_US+0x14b05, %r10
nop
nop
nop
inc %rdx
movw $0x5152, (%r10)
nop
nop
nop
nop
add %r14, %r14

// Load
lea addresses_WC+0x1e809, %rbp
nop
nop
inc %r14
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
inc %r10

// Store
lea addresses_A+0x137f3, %rcx
nop
inc %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
cmp %rbx, %rbx

// Load
lea addresses_UC+0xd485, %r8
nop
nop
and %rcx, %rcx
mov (%r8), %r14
nop
and %rbx, %rbx

// Load
mov $0xf3, %rdx
clflush (%rdx)
cmp %r14, %r14
mov (%rdx), %ebp
nop
add %rbx, %rbx

// Load
lea addresses_WC+0x158f3, %rbx
nop
sub %rbp, %rbp
mov (%rbx), %r10d

// Exception!!!
nop
nop
nop
mov (0), %rbx
nop
nop
nop
dec %r10

// Faulty Load
lea addresses_WC+0x158f3, %r8
clflush (%r8)
nop
nop
nop
nop
and %rbp, %rbp
vmovntdqa (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 3172, '58': 18657}
58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 00 00 58 58 58 58 58 58 00 00 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 00 00 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
