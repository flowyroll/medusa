.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xd5c3, %rsi
lea addresses_normal_ht+0x1ae7d, %rdi
nop
nop
nop
lfence
mov $67, %rcx
rep movsw
nop
nop
nop
cmp $13035, %rbx
lea addresses_UC_ht+0x1adfd, %r10
clflush (%r10)
nop
nop
nop
nop
nop
and $4893, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
nop
cmp $24212, %rbx
lea addresses_D_ht+0x1515d, %r10
clflush (%r10)
inc %r9
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
add $2287, %r9
lea addresses_UC_ht+0x7dfd, %rsi
lea addresses_normal_ht+0x1b5bd, %rdi
nop
nop
nop
nop
dec %r12
mov $79, %rcx
rep movsq
mfence
lea addresses_WC_ht+0xc37d, %rsi
nop
nop
nop
nop
nop
xor $34469, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0xe67d, %rdi
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rdi)
xor %r11, %r11
lea addresses_D_ht+0x15341, %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x4a7d, %rsi
lea addresses_A_ht+0x1af1d, %rdi
nop
nop
add %r10, %r10
mov $121, %rcx
rep movsq
nop
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x15cab, %r9
nop
dec %r11
movups (%r9), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
and $65246, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_D+0x1cead, %rsi
clflush (%rsi)
dec %rcx
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add $60856, %r15

// Store
mov $0x1f4e5100000008dd, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movntdq %xmm7, (%r13)
and %rcx, %rcx

// Store
lea addresses_normal+0x12ffd, %r9
nop
nop
nop
and $56975, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
and $28007, %r9

// Store
lea addresses_A+0x14ffd, %rsi
nop
and $14259, %rcx
movb $0x51, (%rsi)
nop
nop
nop
dec %r13

// Store
lea addresses_D+0x1f5, %r9
clflush (%r9)
inc %rbp
movb $0x51, (%r9)
nop
nop
nop
add $42589, %rbp

// Store
lea addresses_US+0x1542, %r8
nop
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r9
movq %r9, (%r8)
cmp %r15, %r15

// Store
mov $0x389bfa000000067d, %rbp
nop
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
add %r8, %r8

// Store
lea addresses_normal+0x9dbd, %r9
add %r15, %r15
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
cmp $49143, %r9

// Faulty Load
mov $0x6d66e5000000027d, %r15
nop
nop
add %rbp, %rbp
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
