.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rsi
lea addresses_WC_ht+0x1a6a5, %r12
nop
dec %r8
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
xor $25474, %r13
pop %rsi
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_RW+0x1d035, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WC+0xaff5, %r9
nop
nop
cmp %r12, %r12
movl $0x51525354, (%r9)
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_A+0x1b9f5, %r12
nop
nop
nop
nop
sub $40810, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%r12)
and $28739, %r12

// Store
lea addresses_A+0x19645, %r9
nop
nop
cmp $21681, %r12
movw $0x5152, (%r9)
nop
nop
nop
nop
cmp $60467, %r9

// Load
lea addresses_RW+0x91f5, %r13
nop
add %rsi, %rsi
movb (%r13), %bl
nop
nop
nop
nop
sub $57114, %rsi

// Store
lea addresses_A+0x1b9f5, %r14
nop
nop
sub $14332, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r14)
nop
nop
inc %r13

// Load
lea addresses_A+0x75f5, %rsi
nop
nop
xor %rbx, %rbx
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
cmp %rbx, %rbx

// Load
lea addresses_WC+0x44d5, %rcx
inc %rsi
mov (%rcx), %r14
nop
nop
dec %r9

// Store
lea addresses_RW+0xf1f5, %r14
sub %rsi, %rsi
movl $0x51525354, (%r14)
nop
and $18602, %r14

// Load
lea addresses_D+0x1fd35, %r9
nop
nop
nop
xor $11858, %r12
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_A+0x1b9f5, %rcx
nop
nop
nop
add %r13, %r13
mov (%rcx), %esi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 38}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
