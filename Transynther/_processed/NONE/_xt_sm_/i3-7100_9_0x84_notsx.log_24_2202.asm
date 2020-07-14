.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5526, %r12
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r12)
nop
sub $48044, %rax
lea addresses_D_ht+0x7926, %r8
nop
nop
nop
nop
nop
cmp $52190, %r10
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
add $4738, %rdi
lea addresses_WT_ht+0x3b76, %r8
nop
nop
nop
dec %rdi
mov (%r8), %rdx
nop
nop
nop
dec %r10
lea addresses_A_ht+0x1d526, %r10
clflush (%r10)
nop
sub $61229, %rdx
mov (%r10), %r12d
nop
xor $5805, %r8
lea addresses_normal_ht+0x7e26, %rax
nop
nop
nop
nop
nop
add %rdx, %rdx
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
sub $11967, %rax
lea addresses_WC_ht+0x15e38, %rcx
nop
nop
nop
inc %r10
mov (%rcx), %ax
nop
cmp $49349, %rax
lea addresses_normal_ht+0x4726, %rsi
lea addresses_WT_ht+0x1326, %rdi
nop
nop
nop
nop
dec %rax
mov $30, %rcx
rep movsq
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0xbc28, %r10
cmp $25570, %rax
movw $0x6162, (%r10)
nop
nop
lfence
lea addresses_WC_ht+0xb526, %rcx
nop
nop
nop
nop
sub $24941, %rdx
movl $0x61626364, (%rcx)
nop
nop
sub $55583, %rax
lea addresses_WC_ht+0x1dd4e, %r8
nop
cmp %rdi, %rdi
movb $0x61, (%r8)
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WT+0xcba6, %r10
nop
nop
nop
nop
cmp $58286, %r12
movb $0x51, (%r10)
nop
nop
nop
nop
nop
cmp $28455, %rdi

// Store
lea addresses_A+0x13e26, %r8
add $16194, %r15
movw $0x5152, (%r8)
nop
nop
nop
nop
and $37477, %r15

// Store
lea addresses_PSE+0x1d846, %rbp
nop
nop
cmp $62147, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovntdq %ymm4, (%rbp)
nop
nop
nop
sub $20159, %rbp

// Store
lea addresses_normal+0x19526, %r10
nop
nop
cmp $36541, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovaps %ymm7, (%r10)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
nop
and $26360, %rcx

// Store
lea addresses_RW+0xcc46, %r15
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r10
movq %r10, (%r15)
nop
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_normal+0x19526, %r12
nop
nop
nop
nop
cmp %r10, %r10
mov (%r12), %cx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 24}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
