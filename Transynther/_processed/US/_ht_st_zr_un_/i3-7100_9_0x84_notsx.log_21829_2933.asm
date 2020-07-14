.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x563d, %rsi
lea addresses_D_ht+0xdb7d, %rdi
nop
nop
nop
and $46045, %rbp
mov $44, %rcx
rep movsq
nop
add $16764, %r13
lea addresses_WC_ht+0xaa3d, %rcx
nop
nop
nop
nop
nop
add $49696, %rax
movb (%rcx), %r14b
and %rdi, %rdi
lea addresses_D_ht+0x983d, %rdi
nop
nop
inc %r14
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
sub $37715, %rbp
lea addresses_WC_ht+0x993d, %r13
nop
nop
sub %r14, %r14
mov (%r13), %rcx
nop
inc %rcx
lea addresses_WT_ht+0x9ce1, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
inc %r14
lea addresses_WC_ht+0x19f3d, %rax
xor $11361, %rsi
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
cmp $36756, %rax
lea addresses_A_ht+0x7b3d, %rax
nop
nop
nop
cmp $17648, %rdi
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
xor $48852, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %r9
push %rbp

// Store
lea addresses_WC+0xba51, %r8
nop
nop
nop
nop
nop
add $57414, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm7
and $0xffffffffffffffc0, %r8
movntdq %xmm7, (%r8)
nop
nop
and %r12, %r12

// Store
mov $0x973, %r13
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r13)
xor %r13, %r13

// Load
mov $0x43d, %r9
nop
nop
nop
add $33888, %r11
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
and $36258, %r11

// Store
lea addresses_WC+0x1594d, %r14
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_D+0x13d3d, %r11
nop
nop
nop
nop
nop
xor $7309, %r14
movb $0x51, (%r11)
cmp $46380, %r14

// Store
lea addresses_US+0x1623d, %r11
nop
xor $24483, %rbp
movl $0x51525354, (%r11)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_US+0x783d, %r12
nop
nop
add $60149, %r9
movw $0x5152, (%r12)
nop
nop
sub %r8, %r8

// Store
mov $0x39dacd00000008fd, %r14
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_US+0x893d, %r8
nop
dec %rbp
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'47': 70, '63': 42, '2f': 3, 'b0': 3812, '45': 10, '67': 906, '50': 4, '1a': 1, 'e0': 1, '3c': 1, '48': 12, '80': 428, '46': 43, '00': 16141, 'd0': 352, 'a0': 3}
00 00 00 00 67 d0 b0 00 00 b0 80 00 b0 b0 00 00 00 00 00 b0 00 00 00 80 00 00 00 00 00 00 b0 00 b0 00 00 00 00 b0 00 00 00 b0 00 00 b0 b0 00 00 b0 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 b0 d0 00 00 00 00 00 00 00 00 00 b0 00 00 b0 00 00 00 00 00 00 00 b0 00 00 00 00 00 b0 b0 00 47 00 00 00 b0 00 00 00 b0 00 00 00 00 00 00 00 00 00 b0 00 b0 00 00 00 00 b0 00 00 b0 00 00 00 00 00 00 00 b0 00 00 00 00 b0 00 00 00 00 00 00 b0 b0 00 00 b0 00 00 00 b0 00 00 00 b0 00 00 00 00 00 b0 00 00 00 00 80 00 47 00 00 00 00 b0 00 d0 b0 00 00 63 00 00 00 00 80 00 00 00 00 00 00 b0 00 00 00 00 00 b0 b0 00 00 00 00 00 00 b0 00 00 b0 80 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 b0 00 00 47 00 00 00 67 00 00 b0 00 80 00 00 00 00 b0 00 00 00 00 b0 00 00 b0 00 00 00 00 00 67 b0 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 b0 b0 00 00 d0 00 00 00 b0 00 00 00 00 00 00 b0 00 00 00 b0 00 00 00 80 00 00 67 00 00 00 67 00 00 00 00 00 00 b0 00 00 00 67 00 00 67 00 00 00 b0 00 00 00 b0 00 00 b0 00 00 00 00 00 00 00 00 00 b0 00 00 b0 b0 46 b0 80 00 67 00 00 00 80 b0 00 80 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 b0 d0 00 00 d0 00 00 00 b0 00 80 00 00 00 00 00 00 46 00 00 80 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 b0 00 00 00 b0 00 00 00 00 00 00 b0 00 00 00 00 00 00 b0 b0 00 00 b0 00 00 00 00 00 00 b0 b0 b0 00 00 00 00 00 b0 00 00 b0 00 00 00 00 00 00 00 67 b0 00 00 00 00 00 00 b0 00 00 00 00 00 b0 b0 00 00 00 67 00 00 b0 00 00 00 b0 00 00 b0 67 00 00 b0 63 00 b0 00 00 00 00 00 00 00 67 00 00 b0 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 80 00 00 00 67 00 00 b0 b0 00 00 00 00 00 46 00 00 00 00 00 00 00 00 67 00 00 00 67 00 b0 00 b0 00 00 00 b0 00 00 00 d0 b0 00 00 00 00 00 b0 00 00 00 b0 00 00 00 00 00 b0 b0 00 00 b0 00 00 00 00 00 00 b0 b0 00 00 b0 00 00 00 80 00 00 67 00 00 b0 b0 00 00 b0 00 00 00 b0 00 00 00 67 00 00 00 00 00 00 00 b0 b0 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 b0 67 00 00 00 00 00 00 00 b0 00 00 00 00 00 b0 00 00 00 b0 00 00 00 b0 00 00 00 00 00 00 00 d0 00 b0 00 00 00 00 00 67 00 00 d0 b0 b0 00 00 b0 b0 00 00 b0 00 00 b0 b0 00 00 00 67 00 00 67 b0 00 00 00 00 00 67 00 00 00 00 b0 00 00 b0 b0 00 00 00 00 00 b0 b0 00 00 00 00 00 b0 00 00 b0 00 00 00 67 00 00 00 b0 00 00 00 00 00 00 b0 67 00 00 b0 00 00 00 b0 00 00 00 00 00 00 00 00 b0 00 00 00 00 b0 00 00 00 67 00 00 00 00 00 b0 00 00 00 00 00 00 00 67 00 80 00 00 00 00 b0 67 00 00 00 00 00 00 00 80 00 b0 b0 00 00 67 00 00 00 00 00 00 b0 00 d0 00 b0 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 00 00 d0 00 00 00 b0 b0 00 00 b0 00 00 00 b0 00 00 00 00 00 b0 00 00 b0 67 67 00 00 b0 00 00 00 00 00 b0 b0 00 b0 00 d0 00 00 80 2f b0 00 d0 00 00 00 d0 00 00 00 d0 b0 00 00 b0 00 00 00 b0 00 00 80 00 00 00 00 b0 b0 00 00 00 00 00 b0 00 00 00 67 67 00 00 00 00 00 00 b0 b0 00 00 67 b0 00 00 67 00 00 00 80 00 00 00 00 67 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 d0 00 00 00 00 b0 b0 00 00 00 00 00 b0 00 00 00 00 00 00 00 b0 80 00 d0 b0 00 00
*/
