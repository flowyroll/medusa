.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1f6c, %r13
clflush (%r13)
nop
nop
cmp %rdi, %rdi
mov (%r13), %r12
cmp $24138, %r8
lea addresses_WC_ht+0x15f0, %rsi
clflush (%rsi)
nop
nop
nop
nop
add $20121, %r9
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
and %r9, %r9
lea addresses_WC_ht+0x12270, %rdi
nop
nop
nop
nop
and %r12, %r12
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rsi
and $9953, %r10
lea addresses_WT_ht+0x1194, %rsi
nop
nop
nop
nop
xor $9033, %r9
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
cmp $38506, %r13
lea addresses_WT_ht+0xe7ec, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $8071, %r8
movups (%r12), %xmm4
vpextrq $0, %xmm4, %r13
nop
and $59691, %r12
lea addresses_WC_ht+0xd16c, %r10
nop
xor $16134, %r9
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x37ec, %rdi
nop
nop
nop
nop
add $10892, %r13
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x1416c, %rsi
lea addresses_A_ht+0x136ec, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $27, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rsi

// Store
mov $0x6fe5220000000fec, %r13
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_normal+0x1196c, %r11
dec %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r11)
nop
nop
and $17496, %r11

// Load
lea addresses_US+0xcf90, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor $18921, %rsi
movb (%rcx), %r13b
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_normal+0x1404c, %r13
and $10192, %r12
movl $0x51525354, (%r13)
add $21300, %r9

// Faulty Load
mov $0x6fe5220000000fec, %rsi
and $52664, %r9
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'52': 149}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
