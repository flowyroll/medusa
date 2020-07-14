.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbx
lea addresses_WC_ht+0x199a4, %r13
nop
nop
and %rbx, %rbx
movb $0x61, (%r13)
nop
nop
nop
xor $19783, %r10
lea addresses_A_ht+0x16d62, %rax
sub %r8, %r8
movb (%rax), %r15b
nop
nop
add $44362, %r10
lea addresses_normal_ht+0xcc62, %rbx
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%rbx)
nop
dec %r9
lea addresses_D_ht+0x2362, %rbx
nop
nop
nop
add %r9, %r9
movw $0x6162, (%rbx)
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x952, %r10
nop
nop
nop
nop
sub $1691, %r15
mov $0x6162636465666768, %rax
movq %rax, (%r10)
nop
nop
nop
and $14404, %r13
lea addresses_normal_ht+0x1dc62, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and $27773, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %r13
vmovntdq %ymm5, (%r13)
xor $37956, %rax
lea addresses_normal_ht+0x6ce2, %r13
nop
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
cmp $4266, %r9
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_RW+0x198e2, %rsi
nop
nop
nop
add $16165, %rbx
movw $0x5152, (%rsi)
nop
add $1246, %r9

// Store
mov $0x762, %r10
nop
nop
nop
inc %rdx
movw $0x5152, (%r10)
and $43364, %r12

// Store
lea addresses_A+0x14362, %r12
dec %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovntdq %ymm6, (%r12)
nop
nop
nop
inc %r12

// Load
mov $0x20e7bf00000000f2, %r10
nop
nop
nop
nop
nop
xor %r12, %r12
mov (%r10), %si
nop
nop
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_US+0x1472e, %r9
nop
nop
xor %r10, %r10
movb (%r9), %r15b
nop
dec %rdx

// Load
lea addresses_RW+0x18362, %r10
nop
dec %r15
movups (%r10), %xmm7
vpextrq $1, %xmm7, %rdx
and $19717, %r12

// Store
lea addresses_normal+0x1cc0a, %r15
nop
nop
cmp $44849, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WC+0x714a, %r15
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r15)

// Exception!!!
mov (0), %rsi
nop
nop
nop
nop
add $21668, %rsi

// Store
lea addresses_PSE+0x1c312, %r15
xor $37612, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
nop
nop
xor $19803, %r10

// Store
mov $0x8a2, %rsi
nop
inc %r12
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
inc %rbx

// Store
lea addresses_US+0xdda2, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x51, (%rsi)
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_PSE+0x1eb62, %rsi
nop
sub $4370, %rdx
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'33': 423}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
