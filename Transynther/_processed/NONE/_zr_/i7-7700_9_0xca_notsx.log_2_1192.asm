.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2679, %r10
clflush (%r10)
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
nop
add $13032, %rbp
lea addresses_normal_ht+0x1e6d, %r15
nop
nop
nop
nop
inc %r12
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm3
vpextrq $0, %xmm3, %rbx
cmp %rdi, %rdi
lea addresses_D_ht+0x9ced, %r12
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0xdcb3, %rsi
lea addresses_WC_ht+0xbc5d, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $22, %rcx
rep movsl
nop
sub $63685, %rcx
lea addresses_A_ht+0x1cf65, %rsi
lea addresses_D_ht+0x124f5, %rdi
clflush (%rdi)
nop
nop
nop
dec %r10
mov $92, %rcx
rep movsw
nop
nop
add $63466, %r10
lea addresses_WC_ht+0x1e84d, %rsi
lea addresses_A_ht+0xe54d, %rdi
clflush (%rdi)
nop
and %rbx, %rbx
mov $0, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x135a9, %rdi
nop
nop
nop
nop
nop
sub $17910, %rsi
movb (%rdi), %cl
nop
cmp $45684, %r10
lea addresses_WC_ht+0x14cd, %r12
nop
nop
xor $28081, %rdi
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x57cd, %r12
clflush (%r12)
nop
xor $11771, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
cmp %r12, %r12
lea addresses_UC_ht+0x6d0d, %rbx
nop
inc %r12
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
add $31605, %rbp
lea addresses_UC_ht+0x1d9ad, %rbx
nop
nop
nop
nop
add %r15, %r15
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm6
vpextrq $1, %xmm6, %r12
dec %rsi
lea addresses_WT_ht+0x1a179, %rsi
nop
nop
nop
nop
nop
xor $45692, %rbp
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1adcd, %rbp
sub %rsi, %rsi
mov (%rbp), %di
nop
nop
xor $56460, %r12
lea addresses_WT_ht+0xa44d, %rdi
nop
nop
nop
inc %rbx
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
nop
xor $22597, %r15
lea addresses_A_ht+0x9d17, %r12
nop
add %rcx, %rcx
mov (%r12), %si
nop
cmp $22158, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1bd6d, %rdx
nop
nop
nop
nop
xor $7265, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WT+0x1e04d, %r8
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0xe32d, %rcx
cmp $43170, %rax
movl $0x51525354, (%rcx)
nop
nop
nop
cmp %r14, %r14

// Load
lea addresses_US+0x13c0d, %r14
nop
nop
sub %rcx, %rcx
mov (%r14), %r8d
cmp %rax, %rax

// Load
lea addresses_PSE+0x1d54d, %rsi
nop
nop
nop
xor %rbx, %rbx
mov (%rsi), %rax
nop
add %rax, %rax

// Store
mov $0x46e5fd000000044d, %rsi
nop
nop
nop
nop
add $64846, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movntdq %xmm7, (%rsi)
nop
dec %r8

// Store
lea addresses_normal+0x10f4d, %r14
nop
dec %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_WT+0x1e04d, %rax
nop
nop
nop
nop
nop
sub $22109, %rbx
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
