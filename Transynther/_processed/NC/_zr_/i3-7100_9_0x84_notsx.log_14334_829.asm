.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x9d4, %rdx
nop
nop
cmp %r9, %r9
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x17ae4, %rbx
nop
nop
nop
and $10371, %rdi
movb (%rbx), %dl
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xf3b0, %rbx
nop
nop
nop
nop
and $34856, %r14
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
sub $15254, %rbx
lea addresses_UC_ht+0x75b4, %rsi
lea addresses_normal_ht+0x7914, %rdi
nop
nop
nop
nop
nop
sub $36579, %rbx
mov $122, %rcx
rep movsl
nop
inc %r9
lea addresses_WC_ht+0x10d14, %r13
nop
nop
dec %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0xa94, %rsi
nop
nop
nop
sub %r14, %r14
movb (%rsi), %cl
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0xa714, %rsi
lea addresses_WT_ht+0x654, %rdi
nop
nop
nop
lfence
mov $62, %rcx
rep movsb
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x16a01, %rcx
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm2
and $0xffffffffffffffc0, %rcx
vmovaps %ymm2, (%rcx)
sub $35381, %r14
lea addresses_normal_ht+0xc914, %rdi
clflush (%rdi)
nop
nop
xor $47472, %rcx
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
cmp $19303, %rbx
lea addresses_A_ht+0x1e714, %rsi
lea addresses_UC_ht+0xd718, %rdi
nop
nop
xor %r14, %r14
mov $15, %rcx
rep movsl
cmp $14144, %rdx
lea addresses_WT_ht+0x19114, %rsi
lea addresses_normal_ht+0x12494, %rdi
nop
nop
nop
nop
nop
cmp $9398, %rbx
mov $8, %rcx
rep movsl
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x6914, %rsi
lea addresses_A_ht+0x18744, %rdi
nop
nop
nop
nop
dec %rdx
mov $97, %rcx
rep movsl
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x6498, %rsi
lea addresses_WT_ht+0x14514, %rdi
nop
sub %rbx, %rbx
mov $49, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0xdf94, %rsi
lea addresses_WT_ht+0x1e114, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rdx, %rdx
mov $38, %rcx
rep movsq
nop
nop
nop
nop
and $54512, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1f0f4, %rcx
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
dec %rcx

// Store
mov $0x594, %r15
nop
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%r15)
nop
nop
cmp %r13, %r13

// Load
lea addresses_D+0x4f14, %rdx
nop
nop
nop
sub $59280, %rdi
movb (%rdx), %r15b

// Exception!!!
nop
nop
nop
nop
mov (0), %r13
nop
nop
nop
and %r13, %r13

// Load
mov $0x6858a0000000864, %r12
nop
nop
nop
nop
cmp $43800, %rdx
mov (%r12), %r15d
nop
nop
nop
cmp $5881, %rcx

// Store
lea addresses_WC+0x14494, %rdi
nop
nop
nop
cmp $27983, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
add $57660, %r15

// Store
mov $0x1353cc0000000714, %rcx
nop
nop
nop
nop
nop
add %rdx, %rdx
movl $0x51525354, (%rcx)

// Exception!!!
nop
mov (0), %r13
nop
nop
dec %rdi

// Load
lea addresses_US+0x14ef4, %rcx
nop
cmp $7778, %rdi
mov (%rcx), %r15w
nop
xor $24171, %rdx

// Store
lea addresses_UC+0x2734, %r12
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r12)
nop
nop
and $38468, %r15

// Store
lea addresses_US+0x1c60c, %r15
nop
and $55552, %r12
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
mov $0x559ecc0000000114, %r12
nop
nop
nop
and $31698, %rdi
mov (%r12), %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'00': 14334}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
