.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x51d6, %rsi
nop
nop
nop
nop
nop
dec %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
cmp $12630, %rax
lea addresses_WT_ht+0x1337e, %r9
nop
nop
nop
inc %rdi
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x117e, %rax
nop
nop
nop
nop
nop
add $6967, %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %rax
movntdq %xmm7, (%rax)
nop
xor $4274, %r9
lea addresses_WT_ht+0xb19e, %r10
clflush (%r10)
nop
add $20845, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r10)
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1839e, %r13
nop
nop
nop
dec %r14
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rsi
nop
add $26291, %r13
lea addresses_A_ht+0x1999e, %r10
and %r13, %r13
mov (%r10), %edi
nop
lfence
lea addresses_D_ht+0x18b9e, %rsi
lea addresses_normal_ht+0x139e, %rdi
clflush (%rsi)
nop
and %r14, %r14
mov $74, %rcx
rep movsb
cmp %rax, %rax
lea addresses_A_ht+0x1c79e, %r14
nop
nop
sub $55739, %r9
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add $20710, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1b6a3, %r13
nop
add %r10, %r10
movb $0x51, (%r13)
nop
nop
nop
nop
sub $43873, %r14

// REPMOV
lea addresses_US+0x1541e, %rsi
lea addresses_US+0x25fe, %rdi
nop
add %rdx, %rdx
mov $54, %rcx
rep movsb
nop
nop
add $41684, %rdx

// Load
mov $0x3a20900000000f1e, %rdi
nop
dec %r10
vmovaps (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
inc %rdx

// Store
mov $0x6be, %r10
nop
nop
nop
add $62540, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r10)
nop
dec %r14

// Store
lea addresses_RW+0x1819e, %r13
nop
sub %rdx, %rdx
movl $0x51525354, (%r13)
nop
sub $38800, %rsi

// Faulty Load
mov $0xa74000000019e, %rsi
nop
add %r10, %r10
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 11396, '00': 10433}
54 54 00 54 54 00 54 54 54 54 00 00 54 00 54 54 00 54 54 54 54 00 00 00 00 54 54 00 00 54 00 54 54 54 54 00 00 54 00 54 54 54 00 00 54 00 00 00 00 54 00 54 54 54 54 54 54 00 00 54 00 00 00 54 54 54 00 00 54 00 54 00 54 00 54 00 00 00 00 54 00 54 54 54 54 54 00 54 54 54 00 00 00 00 00 54 00 00 00 54 00 00 00 54 00 00 00 54 00 00 54 00 54 54 00 00 00 00 00 00 00 00 54 00 00 00 54 54 54 54 00 00 00 54 00 00 00 54 00 00 00 54 54 54 00 00 00 54 54 00 54 54 54 00 54 00 54 54 00 54 00 00 00 00 00 00 00 54 54 00 00 00 00 54 54 00 00 54 54 54 54 54 54 00 54 00 54 54 54 00 00 00 00 54 00 00 00 00 00 54 54 00 54 00 54 00 00 54 00 00 54 00 54 54 00 54 00 54 00 54 54 00 00 00 00 00 00 54 54 00 00 54 00 54 00 00 00 00 54 00 00 00 54 00 54 00 54 00 54 54 54 00 00 00 54 00 54 54 54 54 54 00 54 54 00 54 00 54 54 54 00 54 00 00 00 00 00 54 54 54 54 00 00 00 00 54 54 54 00 54 54 00 00 00 54 54 00 00 00 54 00 54 00 54 00 00 00 00 54 54 54 54 00 00 54 54 00 00 54 00 00 54 54 00 00 00 00 54 00 54 00 54 00 00 54 00 54 54 00 00 54 54 54 54 00 00 00 54 54 00 54 00 00 54 00 00 54 54 54 00 00 00 54 54 00 54 54 54 00 00 54 00 00 00 00 00 00 54 54 00 00 54 00 54 54 00 54 54 00 00 00 00 54 54 54 54 00 54 00 00 00 54 54 54 54 54 00 54 00 00 00 00 54 00 00 54 54 54 00 00 54 00 54 00 54 00 54 00 00 00 00 54 54 00 00 54 00 00 00 54 00 54 00 00 54 00 00 00 00 00 54 00 54 54 00 54 00 54 00 00 00 54 54 00 00 54 00 00 00 54 00 00 00 00 00 00 00 54 54 00 54 00 00 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 00 00 54 54 54 54 54 00 54 54 54 54 54 00 00 00 00 54 54 00 54 54 54 54 00 00 00 54 00 00 54 00 00 00 54 00 00 00 00 00 00 54 54 54 54 54 00 54 00 54 54 00 00 54 00 00 54 00 54 00 54 00 54 00 54 54 00 54 54 00 00 54 54 00 54 54 54 00 54 54 00 00 00 54 54 54 54 54 00 00 54 54 00 00 00 54 00 00 00 54 54 54 54 00 54 54 54 54 00 54 54 54 54 00 54 54 54 00 54 54 54 00 54 54 54 00 00 54 00 54 54 00 54 00 54 00 00 00 00 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 00 54 00 54 00 54 54 00 00 00 00 54 54 54 54 00 54 54 00 00 54 54 00 54 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 54 54 54 00 00 00 00 00 00 54 00 54 54 00 00 00 00 00 54 00 54 00 54 54 00 00 54 54 00 54 00 54 54 54 00 00 54 00 54 54 00 54 00 00 54 54 54 00 54 54 00 00 54 00 00 54 54 54 00 00 00 00 00 00 00 54 00 00 54 54 54 54 00 54 00 00 00 00 00 54 54 54 00 54 00 54 00 00 00 54 54 54 54 54 00 54 00 00 00 00 54 00 54 00 00 54 54 00 54 54 54 00 00 54 54 54 54 54 54 00 54 00 54 54 54 00 00 00 54 00 54 00 54 00 54 00 54 54 00 00 54 54 54 54 54 00 00 00 54 00 54 54 54 00 54 00 54 54 54 00 54 00 00 00 54 54 00 54 00 54 00 54 00 54 54 00 00 54 54 54 54 00 54 00 00 54 54 00 54 00 00 00 00 54 00 54 54 54 00 54 54 00 00 00 54 00 00 54 54 54 00 00 54 54 00 54 54 00 54 00 00 54 00 54 54 54 54 54 00 00 00 54 00 54 54 00 00 54 54 54 00 00 00 54 00 54 00 54 54 54 54 00 54 00 54 00 00 54 54 54 00 00 54 54 00 54 00 54 00 00 54 00 54 00 54 54 00 00 00 54 54
*/
