.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb2b1, %rsi
lea addresses_normal_ht+0x1d81, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $40, %rcx
rep movsq
nop
nop
and $51432, %rdx
lea addresses_D_ht+0x186d1, %r10
add $62420, %rdi
movl $0x61626364, (%r10)
nop
xor $64047, %r14
lea addresses_normal_ht+0x4cd1, %rcx
nop
nop
nop
add $8356, %r10
mov (%rcx), %dx
nop
nop
nop
nop
nop
sub $10672, %rcx
lea addresses_normal_ht+0x8c9a, %r10
nop
nop
nop
cmp $14517, %rbp
movl $0x61626364, (%r10)
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x6ad1, %rcx
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
cmp %r10, %r10
lea addresses_D_ht+0x5ed1, %rdx
nop
nop
inc %rbp
movb (%rdx), %r10b
nop
nop
nop
sub $24891, %rsi
lea addresses_UC_ht+0x1af39, %rsi
lea addresses_UC_ht+0x10cd1, %rdi
nop
nop
nop
dec %r14
mov $103, %rcx
rep movsq
nop
sub %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rsi

// Store
lea addresses_UC+0xc1dc, %r14
clflush (%r14)
mfence
movb $0x51, (%r14)
nop
inc %rbp

// Store
lea addresses_WT+0xf6d1, %r12
nop
nop
nop
nop
dec %r11
movl $0x51525354, (%r12)
nop
nop
nop
nop
and $48854, %r12

// Store
lea addresses_UC+0xf6d1, %r12
nop
nop
nop
nop
nop
sub $51952, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%r12)
nop
nop
nop
sub $35955, %rbp

// Load
mov $0xed1, %r11
inc %rsi
mov (%r11), %ebp
nop
nop
nop
nop
nop
add $27881, %r14

// Store
lea addresses_UC+0x19b1, %r10
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r10)
nop
sub %rbp, %rbp

// Store
lea addresses_A+0x1acd1, %rsi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
add $41300, %rbp

// Store
lea addresses_normal+0x1c2d1, %r14
sub %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
sub $25082, %r14

// Store
mov $0x641, %rcx
dec %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_WT+0xf6d1, %r10
nop
xor $31622, %rcx
mov (%r10), %esi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'54': 24}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
