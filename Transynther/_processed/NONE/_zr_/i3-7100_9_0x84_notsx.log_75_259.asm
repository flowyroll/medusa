.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x17e84, %rsi
lea addresses_WC_ht+0x1e004, %rdi
nop
nop
dec %r15
mov $47, %rcx
rep movsq
dec %r15
lea addresses_UC_ht+0x9e04, %rsi
lea addresses_normal_ht+0x7604, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r8, %r8
mov $43, %rcx
rep movsl
dec %rcx
lea addresses_D_ht+0x1bffc, %rsi
lea addresses_normal_ht+0xdc04, %rdi
nop
nop
cmp %r15, %r15
mov $77, %rcx
rep movsq
nop
nop
nop
nop
add $18414, %r8
lea addresses_WC_ht+0x1e404, %r10
nop
nop
sub $20978, %rcx
mov (%r10), %r8d
nop
and $6222, %rsi
lea addresses_A_ht+0xcc04, %r15
nop
nop
nop
nop
cmp $4513, %rbx
mov (%r15), %si
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x16a32, %r8
nop
nop
xor $41241, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
nop
nop
add $51720, %rbx
lea addresses_D_ht+0xd504, %rsi
lea addresses_normal_ht+0x1004, %rdi
cmp %r15, %r15
mov $2, %rcx
rep movsq
nop
nop
nop
cmp $56133, %rsi
lea addresses_normal_ht+0x167e4, %r10
nop
add $12651, %rdi
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
sub $41543, %r15
pop %rsi
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
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rdx

// Load
lea addresses_A+0x15c04, %r14
nop
nop
nop
nop
sub $46386, %r10
vmovaps (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
nop
add $41827, %r12

// Store
lea addresses_D+0x12804, %rbx
nop
nop
nop
nop
and $58362, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
sub $50569, %r12

// Store
lea addresses_A+0x11b4c, %r12
sub %rdx, %rdx
movw $0x5152, (%r12)
cmp %r12, %r12

// Load
mov $0xcc4, %r8
nop
nop
nop
xor $26577, %rbx
movups (%r8), %xmm5
vpextrq $1, %xmm5, %r14
nop
and $42246, %r15

// Faulty Load
lea addresses_A+0x15c04, %rdx
dec %r12
movb (%rdx), %r15b
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 75}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
