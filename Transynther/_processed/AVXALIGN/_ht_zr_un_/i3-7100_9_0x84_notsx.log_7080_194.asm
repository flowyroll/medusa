.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x159f8, %rsi
lea addresses_normal_ht+0xf958, %rdi
clflush (%rdi)
nop
add %rdx, %rdx
mov $2, %rcx
rep movsq
dec %r14
lea addresses_D_ht+0x14ef8, %rsi
lea addresses_WT_ht+0x1b3f2, %rdi
cmp %r15, %r15
mov $84, %rcx
rep movsl
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0xe1f8, %rdx
nop
add $50856, %r13
movb (%rdx), %r14b
nop
nop
sub $21055, %rcx
lea addresses_WT_ht+0x6bf8, %rsi
lea addresses_UC_ht+0x10bd5, %rdi
nop
nop
nop
nop
xor $52573, %r10
mov $113, %rcx
rep movsq
nop
nop
add %r14, %r14
lea addresses_A_ht+0x171f8, %rsi
lea addresses_normal_ht+0x147b8, %rdi
nop
cmp %rdx, %rdx
mov $106, %rcx
rep movsb
sub $54984, %rsi
lea addresses_normal_ht+0x1688, %rcx
sub %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
add %r13, %r13
lea addresses_UC_ht+0x3af8, %rsi
lea addresses_WC_ht+0x11928, %rdi
nop
nop
nop
inc %r10
mov $69, %rcx
rep movsq
nop
xor $36773, %r15
lea addresses_A_ht+0xa3f8, %rsi
lea addresses_UC_ht+0x159da, %rdi
xor $8135, %rdx
mov $83, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xcd8, %rsi
lea addresses_WC_ht+0x67b8, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $62, %rcx
rep movsw
and $47624, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rbp
push %rcx
push %rdx

// Faulty Load
lea addresses_RW+0x9bf8, %r12
nop
and %rbp, %rbp
vmovntdqa (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbp
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'90': 3916, '49': 143, '46': 226, '45': 2327, 'ff': 1, '00': 455, 'e0': 1, '08': 11}
46 90 90 45 45 90 90 45 90 45 90 00 90 90 90 45 90 90 90 00 90 45 49 90 45 90 90 45 45 90 90 90 45 90 90 45 90 90 45 90 45 45 90 45 46 45 45 49 00 45 45 90 49 90 45 90 00 00 00 90 90 00 45 00 00 45 45 00 45 00 45 49 46 45 45 45 00 45 45 90 46 45 45 45 45 45 00 00 00 00 45 45 00 46 00 90 45 90 46 90 90 45 45 49 45 90 45 90 45 90 90 90 45 90 90 45 90 90 90 90 90 45 45 45 90 90 90 90 90 90 90 90 45 90 90 90 45 45 90 90 90 45 45 45 90 45 49 90 90 90 45 45 90 45 45 90 90 90 45 90 90 45 45 90 90 45 90 46 90 90 90 45 90 90 45 90 90 90 90 46 45 45 90 45 90 45 90 90 45 90 45 45 90 90 90 46 00 90 45 45 90 46 00 90 45 45 45 00 90 90 45 90 90 45 90 46 90 90 90 45 45 45 45 45 90 46 90 90 90 00 45 90 45 45 45 45 00 90 90 90 90 90 45 90 90 45 90 45 90 45 90 90 90 90 90 00 45 90 45 46 90 45 90 00 45 49 90 90 45 90 90 90 45 90 90 49 90 45 00 90 45 45 90 46 90 90 45 90 90 45 46 90 90 90 45 90 90 45 90 90 90 90 45 90 90 45 90 90 90 45 90 90 90 45 90 90 90 45 90 45 90 45 90 45 90 45 45 45 45 90 45 45 45 90 90 90 46 45 90 90 45 90 90 90 45 90 45 90 90 45 90 45 45 90 45 90 90 90 90 90 45 90 45 90 45 49 45 90 45 90 90 90 45 45 90 46 90 45 90 90 90 90 90 45 45 90 90 90 00 45 90 90 45 45 90 45 90 90 90 45 00 90 90 90 45 90 90 90 90 90 45 90 49 90 90 90 45 90 90 45 90 45 90 90 90 45 90 90 90 45 45 90 45 90 90 90 90 90 45 90 45 90 00 45 90 46 90 90 45 45 90 90 45 90 45 00 45 90 45 90 90 45 90 45 90 90 90 90 90 45 90 90 46 45 90 00 45 45 90 90 45 90 45 90 00 90 90 45 90 90 90 45 90 90 45 45 45 90 90 90 90 45 90 90 90 90 90 90 45 90 45 45 90 45 90 45 90 45 45 90 90 90 90 90 45 90 45 00 90 45 45 90 90 45 90 90 90 45 45 90 90 45 90 90 45 45 90 45 90 45 90 90 90 45 90 90 90 90 90 45 00 90 90 45 90 90 45 90 90 45 90 45 00 90 90 45 90 45 90 90 90 45 90 45 90 00 45 45 90 90 90 45 90 90 45 90 90 45 90 45 90 46 90 90 45 90 45 45 90 45 90 45 90 90 45 90 90 90 46 45 90 90 45 90 90 00 90 90 90 90 90 90 90 45 90 46 90 46 45 90 90 90 45 90 00 45 90 90 45 90 90 45 90 90 45 45 90 45 90 90 45 90 49 90 45 45 46 45 00 45 45 90 90 45 45 90 90 90 90 00 90 90 45 90 90 90 45 45 90 90 90 90 90 45 90 90 90 90 90 90 90 45 90 45 90 90 45 90 90 90 00 90 45 49 00 90 90 45 45 45 00 45 90 90 90 90 45 90 90 90 45 90 90 90 90 90 45 90 90 45 45 90 45 90 90 00 90 90 00 45 90 45 90 90 90 45 46 45 90 90 90 90 90 45 90 90 45 45 90 45 90 45 90 90 45 90 45 90 45 90 90 45 45 90 90 90 90 00 90 45 00 45 90 45 90 45 00 45 90 45 90 49 90 45 90 45 90 45 45 49 90 45 45 90 90 90 00 90 46 90 90 45 90 90 45 45 90 90 90 90 00 45 90 45 45 45 90 90 45 90 90 45 90 90 49 90 49 45 90 90 49 90 90 45 90 90 90 90 90 90 90 45 90 90 90 90 90 00 45 90 90 90 90 90 46 90 45 00 90 45 90 90 90 00 00 90 45 90 90 08 45 90 90 45 90 90 45 45 90 90 45 90 45 45 90 90 90 90 45 90 90 45 90 45 00 00 45 90 46 90 45 90 90 45 90 90 45 90 90 45 45 90 45 90 90 45 90 90 90 90 45 45 90 90 90 45 45 90 90 45 45 45 90 45 90 45 45 00 45 90 45 90 45 45 90 45 90 90 90 00 45 90 90 00 45 90 45 90 45 45 90 90 45 90 90 45 46 90 90 00 46 90 90 00 45 90 90 90 90 45
*/
