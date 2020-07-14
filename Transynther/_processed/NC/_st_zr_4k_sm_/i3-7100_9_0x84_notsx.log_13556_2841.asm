.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x326e, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
nop
sub $8835, %r8
lea addresses_UC_ht+0x1326e, %rbp
nop
nop
nop
nop
inc %r10
movb $0x61, (%rbp)
nop
dec %rbx
lea addresses_D_ht+0x14a6e, %r8
nop
nop
nop
nop
cmp $26905, %r9
mov (%r8), %r10d
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x18dce, %rbx
nop
nop
nop
nop
nop
xor $13640, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0xd66e, %r10
nop
nop
cmp $8750, %rbx
mov (%r10), %r9w
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x296e, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb (%r8), %bl
nop
nop
nop
sub $60228, %r10
lea addresses_WC_ht+0x15e6e, %r9
nop
xor $40504, %rdx
movw $0x6162, (%r9)
nop
nop
nop
nop
xor $3870, %r8
lea addresses_WT_ht+0x1d1ee, %r8
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%r8)
nop
dec %r8
lea addresses_WC_ht+0xc7ac, %r10
clflush (%r10)
nop
nop
nop
nop
cmp $39346, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%r10)
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x1a86e, %rdi
nop
nop
nop
and $65439, %r8
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1ccee, %rbx
nop
nop
xor %r9, %r9
mov (%rbx), %r8d
nop
and %r10, %r10
lea addresses_WC_ht+0x1026e, %r10
nop
nop
nop
xor $46171, %rdx
movups (%r10), %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x7102, %r8
nop
nop
nop
nop
nop
xor %r9, %r9
movups (%r8), %xmm7
vpextrq $1, %xmm7, %rdi
nop
and %r9, %r9
lea addresses_A_ht+0x14a6e, %rsi
lea addresses_A_ht+0x1790e, %rdi
nop
nop
dec %rdx
mov $126, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi

// Store
lea addresses_WT+0xa46e, %rcx
add %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rcx)
add $46506, %r14

// Store
lea addresses_normal+0x15d6e, %r13
clflush (%r13)
nop
nop
nop
nop
nop
sub $51571, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
xor $48898, %r13

// Store
lea addresses_UC+0x14a6e, %r10
cmp %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r10)
nop
nop
add %rcx, %rcx

// Store
mov $0x5ee, %r12
nop
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r12)
nop
nop
nop
nop
nop
cmp $40473, %r13

// Store
mov $0x5ba0340000000a6e, %rcx
clflush (%rcx)
nop
nop
add %r11, %r11
movw $0x5152, (%rcx)
nop
and %r11, %r11

// Faulty Load
mov $0x5ba0340000000a6e, %r11
sub $55000, %rcx
mov (%r11), %r13d
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'00': 3134, '58': 4, '52': 10418}
00 52 52 52 00 00 00 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 00 52 00 52 00 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 00 00 52 00 52 52 52 00 52 00 52 52 52 52 52 00 00 00 52 00 52 52 52 52 00 00 00 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 00 52 52 00 52 52 52 52 52 00 52 52 52 52 52 00 52 00 00 52 00 52 00 00 00 00 00 52 52 52 52 52 00 52 00 00 52 00 52 00 00 52 00 52 52 00 00 52 00 00 00 52 00 52 52 52 00 52 00 00 52 52 52 00 00 52 00 00 52 00 52 00 00 52 52 52 52 00 00 52 00 52 00 52 52 52 52 00 52 00 00 52 52 52 52 52 00 52 52 00 52 00 52 52 00 52 52 52 00 00 52 52 52 00 00 00 52 52 00 52 00 00 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 00 52 52 52 52 00 52 52 52 52 00 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 00 52 52 52 52 00 52 52 00 52 00 52 00 00 52 52 00 52 52 00 52 00 00 00 00 52 00 00 00 52 52 52 52 52 52 52 00 00 52 52 52 52 00 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 00 52 00 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 00 52 52 52 52 00 00 52 52 00 00 00 00 52 52 52 00 00 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 00 52 52 52 52 52 52 52 52 00 52 52 52 52 00 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 00 00 00 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 00 52 00 00 52 52 52 52 52 52 52 52 52 00 00 00 52 52 52 52 52 00 52 52 52 00 52 00 00 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 00 52 52 00 00 52 52 52 52 52 00 00 52 52 00 52 52 52 00 52 00 00 00 52 52 52 52 52 00 00 00 00 52 52 00 52 00 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 00 00 00 52 52 00 52 52 00 00 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 00 00 52 00 52 00 52 52 52 52 52 00 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 00 00 00 00 52 00 52 52 52 52 52 52 00 52 52 52 00 00 52 52 52 52 52 52 52 00 00 00 52 00 52 00 52 52 52 52 52 52 00 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 00 52 52 00 52 52 52 52 52 00 52 00 52 52 52 52 52 52 00 00 00 00 00 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 00 52 52 00 52 52 00 52 52 52 52 52 00 52 00 52 00 52 00 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00
*/
