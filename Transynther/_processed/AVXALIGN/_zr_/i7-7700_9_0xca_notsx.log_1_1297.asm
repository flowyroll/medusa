.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x89d7, %rsi
nop
nop
inc %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
and $23702, %r15
lea addresses_WC_ht+0x9ff2, %rdx
nop
nop
nop
add $63482, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
nop
cmp $64106, %rdi
lea addresses_WC_ht+0x71f2, %rsi
lea addresses_D_ht+0x6caa, %rdi
clflush (%rdi)
nop
sub %r12, %r12
mov $107, %rcx
rep movsb
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x34b6, %r15
nop
nop
nop
nop
cmp $36939, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r15
vmovntdq %ymm0, (%r15)
nop
nop
nop
sub $2299, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x11f2, %rsi
mov $0x3d2, %rdi
nop
nop
nop
nop
xor $63062, %r14
mov $42, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $63153, %r8

// Load
lea addresses_RW+0x157f2, %rdi
nop
nop
nop
sub $11714, %r9
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_RW+0x7df2, %rcx
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_UC+0x2bf2, %rdi
nop
and $62576, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm5
and $0xffffffffffffffc0, %rdi
vmovaps %ymm5, (%rdi)
nop
nop
add %r9, %r9

// Store
mov $0xab2, %rdi
nop
nop
nop
nop
add $60946, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movaps %xmm3, (%rdi)
nop
nop
add $48616, %rdi

// Faulty Load
mov $0x713e6e0000000ff2, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rcx, %rcx
vmovaps (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_P'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 1}
00
*/
