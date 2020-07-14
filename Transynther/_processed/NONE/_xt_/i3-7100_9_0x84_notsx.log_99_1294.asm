.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6c9b, %rsi
lea addresses_UC_ht+0x563, %rdi
nop
nop
sub $44730, %r10
mov $102, %rcx
rep movsq
nop
nop
nop
dec %r12
lea addresses_A_ht+0x19611, %rcx
nop
nop
nop
cmp $7536, %r8
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
add $9097, %rcx
lea addresses_UC_ht+0x11f63, %rdi
nop
nop
dec %r10
mov (%rdi), %r8w
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x19be3, %rsi
lea addresses_A_ht+0x14edf, %rdi
and %r15, %r15
mov $13, %rcx
rep movsw
nop
xor $33707, %r15
lea addresses_A_ht+0xeb63, %r10
nop
nop
nop
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rdi

// Store
mov $0x193, %rax
nop
nop
nop
nop
and $54942, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovaps %ymm5, (%rax)
nop
nop
nop
cmp $22335, %r15

// Faulty Load
lea addresses_normal+0x10763, %rdi
nop
nop
cmp %rbx, %rbx
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 99}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
