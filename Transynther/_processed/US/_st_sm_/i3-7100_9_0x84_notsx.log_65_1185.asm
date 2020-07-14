.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xe699, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
add %rdi, %rdi

// Load
lea addresses_A+0x1571, %rcx
nop
nop
nop
nop
nop
dec %rdi
mov (%rcx), %esi
nop
add %rdi, %rdi

// Store
lea addresses_US+0x8f99, %rdx
clflush (%rdx)
xor $50029, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
nop
add $63374, %rcx

// Store
lea addresses_WT+0x14099, %rdi
inc %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdi)
nop
cmp %rcx, %rcx

// Store
lea addresses_RW+0x12723, %rdi
nop
xor $43390, %r9
movb $0x51, (%rdi)

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
inc %r13

// Store
lea addresses_RW+0xf999, %rdi
nop
inc %rdx
movw $0x5152, (%rdi)
nop
nop
inc %r8

// Store
lea addresses_WC+0xc959, %rsi
nop
nop
inc %r13
movw $0x5152, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_US+0x8f99, %rdi
nop
nop
and %r8, %r8
movb (%rdi), %dl
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 65}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
