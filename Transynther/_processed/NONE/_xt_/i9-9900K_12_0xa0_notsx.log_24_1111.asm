.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x52c, %rsi
lea addresses_UC_ht+0x1042c, %rdi
clflush (%rdi)
nop
nop
nop
add %r13, %r13
mov $29, %rcx
rep movsb
nop
dec %r9
lea addresses_normal_ht+0x1392c, %rbx
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
inc %rdi
lea addresses_normal_ht+0x74ec, %rsi
lea addresses_WT_ht+0x952c, %rdi
nop
nop
add $62014, %r13
mov $51, %rcx
rep movsw
nop
and $51325, %rsi
lea addresses_A_ht+0x415c, %rcx
nop
nop
nop
sub %rsi, %rsi
mov (%rcx), %edi
nop
dec %rdi
lea addresses_D_ht+0x105ac, %rdi
nop
nop
nop
nop
sub $36941, %rbp
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x1dd1a, %r10
nop
dec %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movntdq %xmm1, (%r10)
nop
nop
nop
inc %r10

// Store
lea addresses_normal+0x1ce2c, %rax
nop
nop
add $12924, %rdx
movl $0x51525354, (%rax)
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_UC+0x10d2c, %rdi
nop
nop
sub %r12, %r12
movw $0x5152, (%rdi)
nop
add $33051, %r13

// Faulty Load
lea addresses_normal+0x1d52c, %r13
nop
nop
nop
nop
nop
dec %rax
mov (%r13), %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'34': 24}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
