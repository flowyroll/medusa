.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x38ca, %rdi
nop
nop
nop
add $25827, %r15
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x1054a, %rdx
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, (%rdx)
nop
cmp %r13, %r13
lea addresses_normal_ht+0x22ee, %rsi
lea addresses_WT_ht+0xd2ca, %rdi
clflush (%rsi)
xor %rax, %rax
mov $113, %rcx
rep movsw
nop
nop
xor $61443, %rdx
lea addresses_A_ht+0x14eca, %rax
nop
nop
nop
add $52498, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
xor $6142, %rsi
lea addresses_D_ht+0x15fe4, %rcx
nop
cmp %rdi, %rdi
mov (%rcx), %r13
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x6f6a, %rax
nop
and %r13, %r13
mov (%rax), %edi
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x3eba, %r12
and %r13, %r13
movb (%r12), %cl
nop
nop
nop
cmp $28322, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rdx
push %rsi

// Store
lea addresses_US+0x1c17a, %rsi
clflush (%rsi)
nop
nop
nop
add $21766, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%rsi)
nop
inc %rbx

// Load
lea addresses_WC+0x4eca, %rbx
and %rdx, %rdx
mov (%rbx), %r10w
nop
nop
nop
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_A+0x166ca, %rbx
nop
cmp %r14, %r14
movaps (%rbx), %xmm7
vpextrq $1, %xmm7, %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'4c': 7, '47': 12, '44': 20122, '49': 1677, '00': 8, 'ff': 2, '1f': 1}
44 44 44 44 44 44 44 49 44 49 44 44 49 44 44 44 44 49 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 49 44 49 44 44 49 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 49 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 49 49 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 49 ff 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44
*/
