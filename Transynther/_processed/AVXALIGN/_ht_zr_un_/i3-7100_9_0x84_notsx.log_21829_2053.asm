.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1499e, %r15
nop
nop
nop
nop
nop
sub %r10, %r10
movb $0x61, (%r15)
cmp $7272, %rdx
lea addresses_WT_ht+0x19f3c, %rsi
lea addresses_D_ht+0x1615e, %rdi
lfence
mov $31, %rcx
rep movsb
nop
nop
add $60858, %rdi
lea addresses_A_ht+0x3f9e, %rsi
nop
nop
nop
add %r15, %r15
mov (%rsi), %cx
add $41475, %rdi
lea addresses_WT_ht+0x1379e, %r15
nop
lfence
mov (%r15), %dx
add %r8, %r8
lea addresses_WC_ht+0x3ede, %rdi
clflush (%rdi)
nop
nop
nop
cmp $61303, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x4d9e, %r8
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r8)
nop
and $2894, %r10
lea addresses_normal_ht+0x389e, %r8
nop
nop
nop
nop
nop
add %r15, %r15
mov (%r8), %r10d
nop
nop
nop
xor $58615, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xd9e, %rsi
mov $0xd9e, %rdi
nop
and $37587, %r10
mov $79, %rcx
rep movsb
nop
nop
nop
and %rax, %rax

// Store
lea addresses_PSE+0x6a9e, %rax
xor %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
mov $0xd9e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $63471, %r13
vmovaps (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_P', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'4f': 2580, '12': 1, '7d': 3, '00': 19230, 'ff': 12, '11': 1, '08': 2}
00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 4f 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 4f 00 4f 4f 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 4f 00 00 4f 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 4f 00 4f 00 00 00 00 00 4f 00 00 00 00 00 00 00 4f 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 4f 00 00 4f 4f 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 4f 00 00 4f 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 4f 00 00 00 4f 00 00 00 00 00 00 00 4f 00 4f 00 00 00 4f 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 4f 00 00 00 4f 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 4f 4f 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 4f 00 00 00 00 4f 4f 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 4f 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 4f 00 4f 4f 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 4f 00 00 00 4f 00 4f 00 00 4f 4f 00 00 00 4f 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 4f 4f 00 00 00 00 00 4f 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 4f 00 00 00 4f 00 00 00 00 00 00 00 00 00 4f 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 4f 4f 4f 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 4f 00 00 00 00 00 00 00 4f 00 4f 00 00 00 00 00 00 00 00 4f 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 4f 00 00 4f 4f 4f 4f 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 4f 4f 00 4f 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 4f 00 00 4f 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 4f 00 00 00 00 4f 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 00 4f 00 00 00 00 00 00 4f 00 00 00 4f 00 00 00 00 00 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 4f 00 00 4f 00 00 00 00 00 00 4f 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4f 00 00 4f 4f 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 4f 00 4f
*/
