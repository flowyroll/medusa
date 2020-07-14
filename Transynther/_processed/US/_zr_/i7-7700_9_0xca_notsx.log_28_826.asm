.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x17041, %r9
add %r15, %r15
mov (%r9), %ebp
nop
nop
nop
add $9902, %rbx
lea addresses_A_ht+0x11061, %r12
cmp %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%r12)
nop
nop
cmp $18183, %r8
lea addresses_UC_ht+0x1a61, %rbx
nop
nop
inc %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%rbx)
and $45457, %r8
lea addresses_A_ht+0x5061, %r8
nop
add $6772, %r9
movb $0x61, (%r8)
cmp %r12, %r12
lea addresses_D_ht+0xc621, %rbx
clflush (%rbx)
add %r12, %r12
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0xdc69, %rsi
lea addresses_WT_ht+0x1b3c9, %rdi
nop
xor %r12, %r12
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
add $12797, %r9
lea addresses_A_ht+0x12261, %rsi
lea addresses_UC_ht+0xf261, %rdi
nop
nop
xor $15163, %rbx
mov $86, %rcx
rep movsb
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x15a61, %rbp
cmp %r9, %r9
mov $0x6162636465666768, %r8
movq %r8, (%rbp)
nop
nop
nop
add $58160, %rsi
lea addresses_WT_ht+0xd1d8, %r12
nop
nop
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0xdbec, %rsi
lea addresses_D_ht+0x10281, %rdi
nop
nop
nop
and %r10, %r10
mov $69, %rcx
rep movsq
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0xdda1, %rsi
lea addresses_D_ht+0xac1d, %rdi
nop
nop
sub %rbp, %rbp
mov $54, %rcx
rep movsq
nop
nop
inc %r12
lea addresses_WT_ht+0x7d2d, %r10
xor $6987, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x9e61, %rsi
lea addresses_WT_ht+0x122e1, %rdi
nop
nop
xor $62232, %r10
mov $74, %rcx
rep movsb
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rdi
push %rsi

// Store
lea addresses_WC+0x11c52, %rdi
nop
nop
sub %r10, %r10
movb $0x51, (%rdi)
nop
nop
and $61629, %r13

// Store
lea addresses_normal+0x1e12d, %r10
nop
add $29059, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r10)
nop
and %r13, %r13

// Load
lea addresses_normal+0xf7b0, %r9
sub $56725, %r12
movb (%r9), %r13b
nop
nop
nop
and $58555, %r12

// Store
lea addresses_D+0x1fea1, %r13
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%r13)
nop
nop
nop
sub $59121, %rdi

// Load
lea addresses_D+0x1eee1, %rdi
nop
nop
sub %r13, %r13
mov (%rdi), %r9w
nop
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_US+0xfa61, %rdi
nop
nop
nop
nop
and $25317, %rsi
mov (%rdi), %r14d
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 28}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
