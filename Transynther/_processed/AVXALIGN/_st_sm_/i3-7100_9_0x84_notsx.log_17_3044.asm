.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13077, %r8
nop
nop
and $47725, %r10
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
dec %rbx
lea addresses_WC_ht+0xcdc7, %rsi
lea addresses_D_ht+0x1c0f7, %rdi
nop
nop
nop
nop
dec %rbp
mov $29, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1ec77, %rsi
lea addresses_A_ht+0x45d7, %rdi
nop
nop
nop
nop
and $50145, %rbp
mov $60, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x191f7, %rsi
lea addresses_WT_ht+0x19f7, %rdi
nop
add $63109, %r14
mov $94, %rcx
rep movsq
nop
xor $53215, %r8
lea addresses_normal_ht+0x1e66f, %rsi
lea addresses_WC_ht+0x12477, %rdi
nop
nop
sub %rbx, %rbx
mov $4, %rcx
rep movsw
nop
nop
nop
and $32787, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rsi

// Store
lea addresses_WC+0x43af, %rbp
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x1a477, %r8
nop
nop
xor %rsi, %rsi
movw $0x5152, (%r8)
nop
add $10550, %r15

// Store
mov $0x561f660000000277, %rbp
sub %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
sub $19402, %r13

// Store
lea addresses_RW+0xd477, %r14
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r14)
cmp %rsi, %rsi

// Store
lea addresses_PSE+0x19ad7, %r13
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r13)
xor %r10, %r10

// Store
lea addresses_PSE+0xe477, %r10
nop
nop
cmp $14588, %r8
movl $0x51525354, (%r10)
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_RW+0xd477, %r10
sub %rbp, %rbp
movl $0x51525354, (%r10)
nop
cmp $59445, %r14

// Store
lea addresses_A+0x1a41b, %r10
nop
xor %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
nop
nop
nop
xor $58403, %r13

// Store
lea addresses_RW+0xf8f7, %rbp
nop
and $20806, %r10
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
inc %r8

// Store
mov $0x897, %r10
nop
nop
xor $38214, %r13
movl $0x51525354, (%r10)
nop
nop
nop
and $10798, %r14

// Store
mov $0x8d7, %r8
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%r8)
nop
nop
nop
dec %rsi

// Load
lea addresses_RW+0xd477, %r10
nop
nop
nop
add $38606, %rbp
mov (%r10), %r8
nop
nop
nop
nop
add $39891, %r13

// Faulty Load
lea addresses_RW+0xd477, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add $17495, %r10
movaps (%r8), %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'54': 17}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
