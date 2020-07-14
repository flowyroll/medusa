.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x8aa9, %rsi
lea addresses_WT_ht+0x1b831, %rdi
clflush (%rdi)
nop
xor %r8, %r8
mov $92, %rcx
rep movsl
nop
add %rcx, %rcx
lea addresses_A_ht+0xf51d, %r15
nop
nop
sub $33541, %rdx
movups (%r15), %xmm7
vpextrq $1, %xmm7, %rbx
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0xab39, %rsi
lea addresses_D_ht+0x6339, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $65, %rcx
rep movsq
nop
nop
nop
cmp $32290, %rbx
lea addresses_D_ht+0x1aa37, %rsi
lea addresses_UC_ht+0x1c339, %rdi
nop
inc %rbx
mov $88, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x3449, %rsi
lea addresses_A_ht+0x7619, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r15, %r15
mov $100, %rcx
rep movsw
nop
nop
and $64264, %rdx
lea addresses_A_ht+0x1e939, %rsi
lea addresses_UC_ht+0x1d339, %rdi
nop
nop
nop
dec %r8
mov $91, %rcx
rep movsl
nop
add $10698, %rdx
lea addresses_WC_ht+0x5b39, %rsi
lea addresses_WT_ht+0x1df39, %rdi
nop
nop
add %r10, %r10
mov $36, %rcx
rep movsb
nop
nop
add $15923, %r15
lea addresses_D_ht+0x4b39, %rbx
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0xc071, %r8
xor %rcx, %rcx
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi

// Load
lea addresses_US+0x66a9, %r14
cmp %r10, %r10
mov (%r14), %r9w
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_A+0x1b339, %rcx
nop
add $50285, %r8
mov (%rcx), %r9w
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
