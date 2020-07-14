.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1ccd1, %rbx
nop
nop
xor $9396, %r15
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1c2e4, %rsi
add %rbp, %rbp
movb (%rsi), %r15b
nop
nop
xor $42535, %r15
lea addresses_A_ht+0x1a661, %rbp
nop
nop
nop
nop
xor $39758, %rcx
movb $0x61, (%rbp)
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_RW+0x19631, %rsi
nop
nop
nop
nop
sub $52670, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rsi)
nop
nop
add $29490, %r13

// Load
lea addresses_WT+0x34d1, %rsi
nop
nop
nop
nop
and %rdi, %rdi
movaps (%rsi), %xmm6
vpextrq $1, %xmm6, %r12
nop
xor $16251, %r13

// Load
lea addresses_WT+0x1d22d, %r8
nop
nop
nop
nop
nop
xor %rax, %rax
vmovntdqa (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
add $41978, %rdi

// Load
lea addresses_US+0x148d1, %r8
nop
nop
nop
nop
xor %r12, %r12
mov (%r8), %rax
dec %r15

// Faulty Load
lea addresses_UC+0x34d1, %r15
nop
nop
nop
nop
nop
sub %r8, %r8
vmovntdqa (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'60': 11, '16': 5}
60 16 60 60 16 60 60 60 60 60 16 16 60 60 60 16
*/
