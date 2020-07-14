.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x9a4e, %rsi
lea addresses_D_ht+0x2a4e, %rdi
nop
nop
nop
inc %r13
mov $40, %rcx
rep movsl
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x1df2e, %rsi
lea addresses_D_ht+0xe0e, %rdi
clflush (%rdi)
nop
xor $7817, %r15
mov $65, %rcx
rep movsl
nop
and $30897, %r13
lea addresses_WC_ht+0x154e, %r15
nop
nop
nop
nop
nop
cmp $8503, %r10
mov (%r15), %rdi
nop
nop
and $56060, %r10
lea addresses_UC_ht+0x12296, %rdi
nop
nop
nop
nop
and $41589, %r15
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rsi
nop
inc %r10
lea addresses_A_ht+0xd64e, %r15
nop
nop
xor $52187, %rdx
mov (%r15), %r10d
nop
nop
nop
nop
nop
sub $19443, %r15
lea addresses_normal_ht+0x119ce, %rsi
lea addresses_WT_ht+0x1075a, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $23, %rcx
rep movsw
nop
add $333, %rsi
lea addresses_D_ht+0x9a4e, %r13
xor %rdx, %rdx
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x2a4e, %r15
nop
nop
nop
nop
nop
xor $6379, %rdi
mov (%r15), %si
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x1424e, %rdi
nop
nop
nop
xor $36874, %rcx
mov (%rdi), %rdx
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x1b04e, %rsi
lea addresses_WT_ht+0x13dce, %rdi
nop
nop
xor %r10, %r10
mov $13, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $12682, %r10
lea addresses_D_ht+0x16b06, %rsi
lea addresses_normal_ht+0x17e8e, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and $45366, %r15
mov $54, %rcx
rep movsq
xor $64129, %rsi
lea addresses_normal_ht+0x1430e, %rsi
lea addresses_UC_ht+0x16936, %rdi
nop
sub $50326, %rbp
mov $75, %rcx
rep movsw
nop
xor $30695, %r15
lea addresses_UC_ht+0x9c4e, %rsi
lea addresses_WC_ht+0x7a4e, %rdi
nop
nop
nop
xor $45489, %r15
mov $74, %rcx
rep movsq
and %rcx, %rcx
lea addresses_WC_ht+0x7e4e, %r10
nop
nop
add $56394, %r13
movw $0x6162, (%r10)
nop
nop
nop
mfence
lea addresses_D_ht+0xb0ce, %r13
nop
nop
xor $28976, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %r13
movntdq %xmm6, (%r13)
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rdx
push %rsi

// Store
mov $0x3706150000000e4e, %r8
nop
nop
nop
nop
inc %rsi
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
add %r11, %r11

// Store
mov $0x777d8d0000000a4e, %r11
nop
inc %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r11)
nop
cmp $45965, %r12

// Store
lea addresses_WC+0x17e4e, %rdx
nop
xor $47515, %r8
movl $0x51525354, (%rdx)
nop
sub %rbx, %rbx

// Faulty Load
mov $0x777d8d0000000a4e, %r10
nop
nop
nop
nop
xor $39855, %rbx
mov (%r10), %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'6d': 34, '00': 27, '58': 335}
58 58 58 58 58 6d 58 58 58 00 6d 58 58 6d 58 6d 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 00 58 58 58 58 58 00 58 6d 6d 00 6d 58 6d 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 00 58 58 58 58 58 58 58 58 58 58 58 00 58 6d 58 58 58 58 58 58 58 00 58 58 00 58 6d 58 00 58 6d 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 6d 58 6d 58 6d 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 6d 00 58 58 58 58 58 58 6d 58 6d 58 58 6d 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 6d 58 58 58 58 00 58 58 58 58 58 00 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58
*/
