.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1511a, %r10
add $22180, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm0
and $0xffffffffffffffc0, %r10
vmovaps %ymm0, (%r10)
xor %r14, %r14
lea addresses_WT_ht+0x198cc, %rsi
lea addresses_D_ht+0x851a, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $123, %rcx
rep movsq
nop
nop
nop
nop
add $57205, %r14
lea addresses_WT_ht+0x3c8, %rcx
inc %rsi
movw $0x6162, (%rcx)
nop
and $60079, %r15
lea addresses_UC_ht+0xd0dc, %rsi
lea addresses_A_ht+0x66ea, %rdi
nop
nop
nop
nop
cmp $5865, %rbx
mov $46, %rcx
rep movsb
nop
nop
nop
nop
sub $15008, %r10
lea addresses_normal_ht+0x730a, %rsi
lea addresses_A_ht+0x14f0a, %rdi
clflush (%rdi)
cmp %r13, %r13
mov $62, %rcx
rep movsl
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1270a, %rbx
nop
nop
nop
nop
nop
add %r10, %r10
movw $0x6162, (%rbx)
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1765a, %rsi
lea addresses_WC_ht+0x1230a, %rdi
clflush (%rdi)
nop
and %rbx, %rbx
mov $29, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x14e8a, %r14
nop
and $20132, %rbx
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
sub $36017, %rdi
lea addresses_A_ht+0x14c0a, %r14
nop
nop
add %rbx, %rbx
movl $0x61626364, (%r14)
nop
nop
sub $6378, %r14
lea addresses_normal_ht+0x1270a, %r13
nop
nop
nop
nop
cmp $61691, %r10
mov (%r13), %bx
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xd20a, %rsi
lea addresses_A_ht+0x48a, %rdi
clflush (%rsi)
nop
cmp %r13, %r13
mov $119, %rcx
rep movsb
dec %r10
lea addresses_WT_ht+0xd50a, %rdi
nop
nop
inc %rcx
mov (%rdi), %r13d
nop
nop
nop
xor $3813, %r15
lea addresses_normal_ht+0x1e1ca, %rsi
lea addresses_WT_ht+0x1d54a, %rdi
clflush (%rdi)
xor %r14, %r14
mov $10, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $46056, %r10
lea addresses_WT_ht+0xe90a, %rsi
nop
and %r13, %r13
movl $0x61626364, (%rsi)
nop
nop
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rbp
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0xab0a, %rbp
nop
nop
nop
sub $33169, %rcx
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 128}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
