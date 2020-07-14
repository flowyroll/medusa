.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6cc4, %r9
nop
xor $50417, %rdi
mov (%r9), %r14w
nop
nop
nop
nop
xor $17748, %r14
lea addresses_D_ht+0x2744, %r14
xor %rbp, %rbp
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0xff44, %r14
inc %rsi
movb (%r14), %r10b
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x3020, %r9
nop
nop
cmp $11745, %r10
movl $0x61626364, (%r9)
nop
nop
cmp $63140, %r10
lea addresses_D_ht+0x1b7d8, %rsi
lea addresses_UC_ht+0x59e4, %rdi
nop
nop
nop
nop
nop
sub $49358, %rax
mov $62, %rcx
rep movsw
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x6744, %rax
clflush (%rax)
nop
nop
dec %r9
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1e094, %rbp
nop
nop
nop
nop
nop
xor %r9, %r9
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x6d04, %r10
nop
nop
nop
nop
xor $62210, %rdi
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
and $59852, %rbp
lea addresses_UC_ht+0x8a9c, %rsi
lea addresses_WT_ht+0xab5c, %rdi
nop
nop
nop
add $10511, %r10
mov $79, %rcx
rep movsq
nop
nop
nop
xor $47455, %rax
lea addresses_D_ht+0x1e04c, %rcx
clflush (%rcx)
nop
nop
inc %r9
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %rax
nop
cmp $12939, %rax
lea addresses_normal_ht+0x172d0, %r10
sub %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x344, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
add $25624, %r14
lea addresses_D_ht+0x191f4, %r10
nop
nop
nop
nop
and %rcx, %rcx
mov (%r10), %r9w
and %rcx, %rcx
lea addresses_D_ht+0x12a44, %rsi
lea addresses_D_ht+0x12f84, %rdi
nop
cmp %rbp, %rbp
mov $70, %rcx
rep movsb
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xad64, %rsi
lea addresses_WT+0x1cb44, %rdi
nop
inc %rbx
mov $100, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r14

// Load
lea addresses_US+0xc3a4, %r8
nop
nop
nop
nop
xor $65182, %r14
mov (%r8), %edi
nop
nop
nop
nop
xor $25208, %rbx

// Faulty Load
lea addresses_US+0x1cb44, %rdi
nop
xor %r14, %r14
mov (%rdi), %r8d
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
