.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19ce6, %rsi
lea addresses_WC_ht+0x9dcb, %rdi
nop
nop
nop
nop
nop
add $18523, %r10
mov $50, %rcx
rep movsb
add %rax, %rax
lea addresses_WC_ht+0x11905, %rsi
lea addresses_normal_ht+0xd8c3, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $39605, %rax
mov $106, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0xa163, %rsi
lea addresses_UC_ht+0x9ec3, %rdi
nop
sub $59293, %r13
mov $127, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1a49f, %rsi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
and $30700, %r13
lea addresses_WC_ht+0x17a06, %r13
nop
add $41344, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
cmp $51657, %rax
lea addresses_normal_ht+0xf023, %rsi
lea addresses_WT_ht+0x130ad, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r10
mov $40, %rcx
rep movsl
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x142c3, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x5ac3, %r13
nop
nop
nop
nop
add $21784, %rdi
movb $0x61, (%r13)
nop
nop
add $14184, %r10
lea addresses_WT_ht+0x2323, %rcx
nop
nop
nop
nop
nop
xor $32222, %r13
mov (%rcx), %si
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x6ec3, %rsi
lea addresses_D_ht+0xa2c3, %rdi
nop
nop
nop
nop
dec %r15
mov $100, %rcx
rep movsl
nop
nop
nop
nop
and $62167, %r13
lea addresses_normal_ht+0x32c3, %rsi
lea addresses_normal_ht+0x1da5b, %rdi
nop
add $28203, %r13
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x434b, %rsi
lea addresses_A_ht+0x5e23, %rdi
nop
cmp $28726, %r13
mov $91, %rcx
rep movsb
sub %r15, %r15
lea addresses_WC_ht+0x11223, %r14
nop
nop
dec %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm4
and $0xffffffffffffffc0, %r14
movntdq %xmm4, (%r14)
nop
nop
nop
xor $33424, %r14
lea addresses_WC_ht+0x18293, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor $9930, %r13
lea addresses_A_ht+0x30c3, %r15
sub $43712, %rax
mov (%r15), %rsi
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi

// Load
mov $0xa43, %rdi
nop
nop
nop
nop
cmp $24925, %r9
mov (%rdi), %r14
nop
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_A+0x62c3, %rdi
nop
nop
nop
nop
nop
inc %rcx
movaps (%rdi), %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'44': 1828, '00': 12410, '49': 39, '48': 7552}
00 48 00 00 00 48 00 48 00 00 00 00 48 48 00 00 00 44 48 00 48 00 00 00 00 48 00 00 00 44 48 00 48 00 00 00 44 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 44 48 48 00 00 00 00 00 00 48 00 00 00 44 48 48 00 00 00 00 44 48 48 00 00 00 00 44 48 48 00 00 00 00 44 48 48 00 00 00 00 44 48 48 48 00 00 00 44 48 48 00 00 00 00 44 48 00 48 00 00 00 44 48 48 48 00 00 00 44 00 48 00 00 00 44 48 48 48 00 00 00 44 00 48 48 00 00 00 49 00 48 48 00 00 44 00 48 48 00 00 00 44 48 48 48 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 44 00 48 48 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 44 48 48 00 00 00 44 48 00 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 00 00 00 00 00 48 48 00 00 00 48 48 48 00 00 00 44 48 48 48 00 00 00 00 00 48 48 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 48 48 00 48 00 00 00 00 48 48 00 00 44 48 48 48 00 00 44 48 48 48 00 00 00 48 48 48 00 00 00 00 00 48 00 00 00 44 48 48 00 00 00 00 48 48 00 00 00 48 48 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 44 48 48 48 48 00 00 00 48 48 00 00 00 44 48 48 48 00 00 44 48 48 48 00 00 00 00 48 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 44 48 48 48 00 44 48 48 00 00 00 44 48 48 00 00 00 00 44 00 48 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 44 48 48 48 00 00 00 00 48 00 00 00 48 48 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 44 48 48 48 00 00 44 00 48 48 00 00 44 48 48 00 00 00 00 00 48 48 00 00 48 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 44 48 48 48 00 00 00 00 48 00 00 00 48 48 00 48 00 00 00 44 48 48 48 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 44 48 48 48 00 00 00 00 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 44 48 00 48 00 00 00 49 00 00 48 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 44 48 48 48 00 00 44 48 00 00 00 00 48 48 00 00 00 48 48 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 44 48 00 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 00 00 48 00 00 00 44 00 48 48 00 00 00 00 00 48 00 00 00 44 00 48 48 00 00 44 48 48 00 00 00 44 48 48 48 00 00 00 44 48 48 48 00 00 00 00 48 00 00 00 00 44 48 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 44 48 48 48 00 00 44 48 48 48 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 44 48 48 48 00 00 00 00 48 00 00 00 48 48 00 48 00 00 00 48 48 00 00 00 44 48 48 48 00 00 00 49 00 48 48 00 00 00 48 48 00 00 00 44 48 48
*/
