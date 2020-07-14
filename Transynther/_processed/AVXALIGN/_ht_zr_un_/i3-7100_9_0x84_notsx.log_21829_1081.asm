.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1b642, %rsi
lea addresses_A_ht+0xca42, %rdi
clflush (%rsi)
nop
sub %r15, %r15
mov $118, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x14942, %rcx
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp $56304, %rsi
lea addresses_D_ht+0x15382, %rdx
add %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm4
movups %xmm4, (%rdx)
inc %r8
lea addresses_UC_ht+0xa922, %rcx
nop
sub %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and $18522, %rcx
lea addresses_UC_ht+0x16862, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdi), %r15w
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x7442, %rcx
nop
nop
nop
cmp $27267, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
add $56084, %rcx
lea addresses_UC_ht+0xe42, %r15
nop
nop
nop
nop
nop
sub $46226, %r9
movb (%r15), %cl
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x13b88, %r8
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r8), %rcx
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0xa342, %rsi
lea addresses_UC_ht+0x18a46, %rdi
nop
nop
nop
dec %r15
mov $93, %rcx
rep movsq
nop
nop
and $597, %r15
lea addresses_UC_ht+0x17342, %r8
sub %rdi, %rdi
movw $0x6162, (%r8)
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xd742, %rsi
lea addresses_D_ht+0x1d562, %rdi
nop
nop
cmp $50195, %r14
mov $81, %rcx
rep movsb
nop
xor $28681, %r9
lea addresses_A_ht+0xa8a6, %r15
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x18ae2, %r8
sub $30032, %r9
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
xor $49558, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_normal+0xa1e2, %rcx
nop
add %r12, %r12
movl $0x51525354, (%rcx)
xor $32165, %r12

// Faulty Load
lea addresses_A+0x11642, %r10
inc %rbp
vmovntdqa (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 8928, '00': 12873, '47': 27, '08': 1}
00 00 00 46 46 00 00 00 00 00 46 46 46 46 46 00 00 00 00 46 46 00 46 00 46 00 00 46 00 46 46 46 46 00 00 46 00 46 46 46 46 00 00 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 00 00 00 46 00 46 46 00 00 00 46 00 46 46 00 00 00 00 00 00 46 00 46 46 00 00 46 46 00 00 00 00 46 00 46 46 00 00 46 46 46 00 46 00 00 00 00 00 00 00 46 46 00 00 00 46 00 46 00 46 00 46 46 00 46 46 46 00 00 00 00 00 46 00 00 00 00 46 46 46 00 00 00 00 00 46 00 46 00 00 00 00 46 00 46 00 00 46 46 00 00 46 00 00 00 00 46 00 46 00 00 00 46 00 46 00 00 00 00 00 46 46 46 00 46 46 00 00 00 46 00 00 46 00 00 00 46 00 00 46 46 46 00 00 00 46 00 46 46 46 00 00 00 46 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 46 00 00 46 00 46 46 00 00 00 46 46 00 00 46 00 00 00 00 00 46 00 46 00 00 00 46 00 00 46 46 00 00 00 00 00 00 46 00 00 46 46 46 00 00 46 00 00 00 00 46 46 46 00 46 00 00 00 00 46 00 46 00 46 00 00 46 00 46 00 00 46 00 00 00 00 00 46 46 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 46 00 46 46 00 00 00 00 46 46 46 46 00 00 00 46 00 46 00 46 00 00 46 46 00 46 46 00 00 46 00 46 00 46 00 00 00 46 46 00 00 46 00 00 00 00 46 46 46 00 00 00 00 46 00 00 46 00 46 00 00 00 00 46 00 00 00 46 46 00 46 46 00 00 00 00 46 00 00 46 00 00 46 46 00 46 00 46 46 00 00 00 00 46 46 00 46 00 00 00 00 46 00 46 00 00 46 46 46 46 46 00 00 00 00 00 46 00 46 00 00 00 46 46 46 00 00 00 00 00 46 46 46 46 00 00 00 00 00 46 46 00 46 00 00 00 00 46 00 46 00 00 00 00 46 46 46 46 00 00 46 00 46 46 00 00 46 00 00 00 00 46 46 46 00 00 00 46 46 46 00 46 46 46 00 00 46 00 46 46 46 00 00 00 46 46 46 00 46 46 00 00 00 00 46 46 46 46 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 46 00 00 00 46 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 46 46 00 46 46 00 00 00 46 00 46 46 00 46 00 46 46 46 00 00 00 46 46 00 00 46 46 00 46 00 46 00 00 00 00 46 00 00 46 00 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 00 00 46 46 00 46 00 46 00 00 00 46 46 00 46 46 00 00 00 46 00 00 00 46 00 00 00 46 00 46 00 46 00 00 00 46 46 46 00 46 00 00 46 46 00 00 46 00 00 00 00 46 46 00 00 46 00 46 00 46 00 00 00 00 00 46 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 46 46 00 00 00 46 46 46 00 46 00 00 00 46 46 00 00 46 00 46 46 00 46 46 00 46 00 00 46 46 00 46 46 00 00 00 46 00 00 46 46 00 00 46 46 46 00 46 46 00 00 00 00 46 46 00 46 00 00 46 00 46 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 46 46 46 46 00 00 00 00 46 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 00 46 46 00 46 46 46 46 00 46 00 00 00 00 46 00 00 46 00 00 00 46 46 00 46 00 00 00 00 46 46 00 46 46 00 46 46 00 00 46 46 00 00 00 00 00 46 00 46 00 00 46 00 00 00 46 00 00 46 00 46 46 46 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 46 00 46 00 46 00 00 00 00 46 46 00 46 00 00 00 46 00 00 46 00 00 00 00 46 46 00 00 46 00 00 00 46 46
*/
