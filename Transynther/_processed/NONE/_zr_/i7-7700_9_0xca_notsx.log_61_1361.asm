.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xc1fb, %r8
xor %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
add $29046, %rcx
lea addresses_WC_ht+0x14d7b, %rsi
lea addresses_UC_ht+0xd9fb, %rdi
nop
xor $54784, %r8
mov $11, %rcx
rep movsw
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x4e7b, %r13
nop
nop
nop
sub $15608, %rdi
movw $0x5152, (%r13)
nop
sub $63993, %r15

// Load
lea addresses_D+0x12dfb, %r13
nop
dec %r12
mov (%r13), %rbx
nop
nop
cmp %r13, %r13

// Load
lea addresses_WT+0x101fb, %r12
nop
nop
nop
nop
nop
sub %r15, %r15
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
nop
cmp $48251, %r8

// Store
lea addresses_RW+0x1cdfb, %rbx
nop
nop
nop
nop
sub $48357, %r12
movw $0x5152, (%rbx)
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_RW+0xef6b, %r12
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_PSE+0xdffb, %r12
nop
and $14041, %rbx
vmovaps (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
xor $42991, %r8

// Faulty Load
lea addresses_A+0x1f9fb, %r12
xor %r8, %r8
mov (%r12), %di
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 61}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
