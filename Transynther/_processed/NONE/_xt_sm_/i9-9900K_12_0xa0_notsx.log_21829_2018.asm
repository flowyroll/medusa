.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x9887, %r15
nop
xor $55874, %r8
mov $0x6162636465666768, %r14
movq %r14, (%r15)
nop
sub %r9, %r9
lea addresses_WC_ht+0xad23, %rsi
lea addresses_D_ht+0xd51b, %rdi
nop
xor %rbp, %rbp
mov $1, %rcx
rep movsw
nop
dec %r9
lea addresses_D_ht+0x18649, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x7223, %rsi
lea addresses_WT_ht+0xa523, %rdi
nop
nop
xor $18765, %r9
mov $78, %rcx
rep movsl
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x13f23, %r8
clflush (%r8)
sub %rbp, %rbp
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x18f9c, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%rcx)
xor $33274, %r15
lea addresses_WC_ht+0x1c423, %rsi
lea addresses_WC_ht+0x17d23, %rdi
nop
nop
nop
sub %r14, %r14
mov $91, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $1631, %rcx
lea addresses_WC_ht+0x17b23, %rsi
lea addresses_A_ht+0x1bf23, %rdi
clflush (%rdi)
nop
nop
sub $13361, %r15
mov $109, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x18223, %rsi
lea addresses_A_ht+0x11523, %rdi
nop
nop
nop
nop
nop
and $49683, %r15
mov $22, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x5c5b, %r8
dec %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm2
and $0xffffffffffffffc0, %r8
movntdq %xmm2, (%r8)
xor $49741, %r15
lea addresses_UC_ht+0x17f23, %r15
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%r15), %r8d
add %rdi, %rdi
lea addresses_UC_ht+0xc663, %r15
clflush (%r15)
nop
nop
cmp $15603, %r8
mov (%r15), %esi
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x8123, %rsi
nop
and $36952, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_RW+0x1e123, %r10
nop
nop
nop
add $31488, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r10)
add %r9, %r9

// Load
lea addresses_D+0x1b203, %rbx
sub $13040, %rbp
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
sub %rcx, %rcx

// Store
lea addresses_US+0x2d23, %r15
nop
and $63299, %rcx
movl $0x51525354, (%r15)
nop
sub %r13, %r13

// Store
lea addresses_RW+0x3523, %rbp
nop
xor $23393, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
nop
cmp $51267, %r15

// Store
mov $0x79419a0000000953, %r15
nop
cmp $22366, %r13
movb $0x51, (%r15)
xor %r13, %r13

// Load
lea addresses_WC+0x11c73, %r13
nop
inc %rbx
movb (%r13), %r9b
nop
nop
nop
nop
xor $33793, %r15

// Store
lea addresses_UC+0x65ef, %r13
nop
nop
nop
nop
nop
cmp $52043, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
cmp $29341, %rbx

// Store
lea addresses_normal+0x11c23, %r9
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r9)
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_RW+0x3523, %rbp
nop
inc %r15
mov (%rbp), %r9w
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
