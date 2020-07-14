.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x172fc, %r8
xor %rax, %rax
mov (%r8), %r15
sub %rdi, %rdi
lea addresses_UC_ht+0x10614, %rbp
nop
nop
cmp $38356, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm2
and $0xffffffffffffffc0, %rbp
movaps %xmm2, (%rbp)
cmp $33329, %rdi
lea addresses_WC_ht+0x1c54f, %rsi
lea addresses_normal_ht+0xc8e4, %rdi
nop
nop
nop
nop
nop
cmp $50384, %r15
mov $5, %rcx
rep movsq
nop
dec %rax
lea addresses_WT_ht+0x2b44, %r8
nop
add %rbp, %rbp
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x11d44, %r15
nop
nop
nop
nop
and $11840, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r15)
and $64167, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbx

// Store
lea addresses_UC+0xc944, %r14
nop
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%r14)
nop
xor $23526, %r10

// Store
lea addresses_UC+0x10cc4, %r9
nop
add %rax, %rax
movw $0x5152, (%r9)
and %r9, %r9

// Store
lea addresses_US+0xa044, %r14
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movaps %xmm4, (%r14)
add %rax, %rax

// Store
lea addresses_WT+0x1fd44, %rbx
nop
nop
nop
cmp $60542, %r8
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
dec %r14

// Store
lea addresses_WT+0x15544, %r9
nop
nop
nop
nop
nop
add $59024, %r8
movb $0x51, (%r9)
nop
nop
add $62917, %r10

// Faulty Load
lea addresses_RW+0x1ad44, %r15
nop
nop
nop
nop
cmp $38964, %r10
mov (%r15), %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 8, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'32': 59}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
