.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rax
push %rdx
lea addresses_A_ht+0xf0ea, %r12
and %r15, %r15
movl $0x61626364, (%r12)
nop
nop
cmp $25375, %rdx
lea addresses_WT_ht+0x72a6, %rax
nop
nop
nop
nop
nop
and $44140, %r8
movl $0x61626364, (%rax)
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0xf2a6, %r10
nop
nop
nop
nop
nop
add %r13, %r13
movb $0x61, (%r10)
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0xcca6, %r10
nop
dec %r12
mov (%r10), %r8
nop
nop
sub $57493, %r13
lea addresses_normal_ht+0x17c6e, %r12
add $40820, %rax
movb (%r12), %dl
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x144a6, %r15
nop
nop
nop
cmp $64146, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
dec %r15
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x14e12, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp $35548, %r14
movb $0x51, (%r9)
nop
nop
nop
nop
nop
xor $594, %rcx

// Store
mov $0x196, %rdx
nop
nop
nop
nop
nop
sub $38581, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_A+0x6836, %r12
add $65496, %rbp
movw $0x5152, (%r12)
nop
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_UC+0xaa6, %rbx
nop
nop
nop
nop
add %r12, %r12
mov (%rbx), %rcx
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WT+0x12e26, %r12
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%r12)
nop
nop
nop
nop
add $56227, %r12

// Store
lea addresses_D+0x120e6, %r9
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
cmp $5176, %rcx

// Faulty Load
lea addresses_US+0x104a6, %rdx
nop
nop
nop
sub %rbp, %rbp
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'60': 157, '00': 51, '97': 174}
60 60 60 60 97 60 60 00 60 97 97 60 60 97 97 97 97 60 00 00 60 00 97 97 97 60 60 97 60 97 00 60 60 97 60 97 60 97 97 60 00 97 97 97 97 97 97 00 97 60 60 97 60 60 97 97 60 97 60 60 00 60 60 60 97 60 97 97 97 60 97 60 60 97 00 60 60 97 97 97 60 97 97 60 60 00 97 00 97 00 97 60 00 60 00 00 97 97 97 00 97 60 97 60 97 97 97 97 60 60 60 00 00 60 97 97 60 00 60 97 60 97 00 97 97 97 60 60 00 97 00 60 97 97 60 00 60 97 60 97 97 97 60 60 60 60 60 00 97 60 60 60 60 60 60 00 97 60 00 60 97 00 97 60 60 60 97 97 97 97 60 00 97 00 00 60 60 60 97 60 97 97 60 97 00 97 00 60 60 60 60 97 97 60 97 97 60 60 97 97 60 97 97 60 97 97 60 60 97 97 60 97 97 60 97 97 97 97 60 60 00 60 97 60 97 00 60 60 97 97 97 60 97 97 60 60 00 60 60 97 60 97 97 97 97 00 97 00 60 97 97 97 97 97 97 97 00 60 97 00 60 60 60 60 60 00 60 00 97 00 60 97 60 00 00 60 97 60 97 97 60 97 97 60 60 60 97 97 97 60 97 60 60 97 60 60 60 97 97 60 60 97 97 97 97 97 97 60 97 97 97 60 97 97 97 97 60 97 97 97 60 60 00 60 60 00 97 97 97 97 97 97 97 60 00 97 97 97 97 60 60 60 00 00 97 60 60 60 00 60 97 97 60 60 97 60 60 00 60 97 97 60 60 60 60 97 60 97 60 60 60 97 97 60 97 97 60 97 97 60 97 97
*/
