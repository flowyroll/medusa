.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd2ea, %r8
clflush (%r8)
dec %r13
mov (%r8), %r10d
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x52c8, %rbx
xor %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
xor $11484, %r8
lea addresses_A_ht+0x16d8f, %r12
nop
sub %rbp, %rbp
movb (%r12), %r8b
and %rsi, %rsi
lea addresses_WC_ht+0x108d0, %r10
nop
nop
nop
sub $9588, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%r10)
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0xb8e8, %r13
and %r8, %r8
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
nop
dec %r8
lea addresses_WT_ht+0x2728, %rsi
lea addresses_WC_ht+0x1db28, %rdi
nop
and %r13, %r13
mov $123, %rcx
rep movsq
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x53a8, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r13
movb $0x61, (%rsi)
nop
nop
add $5760, %rbx
lea addresses_A_ht+0x9d28, %rbx
add $33229, %rbp
mov (%rbx), %r10d
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x18528, %rsi
lea addresses_normal+0x1dc28, %rdi
nop
xor $14780, %r9
mov $7, %rcx
rep movsw
nop
nop
nop
xor $59605, %rsi

// Store
lea addresses_UC+0x6528, %r9
nop
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%r9)
nop
nop
add $39756, %r13

// Store
mov $0x64e2240000000d28, %rcx
dec %r12
movw $0x5152, (%rcx)
nop
nop
sub $18601, %r12

// Load
lea addresses_D+0x19428, %rcx
nop
nop
nop
nop
cmp $41756, %r13
mov (%rcx), %r12
nop
nop
sub $16472, %rdi

// Store
mov $0x64e2240000000d28, %r12
nop
nop
nop
add %r13, %r13
movw $0x5152, (%r12)
nop
sub $2148, %rcx

// Load
lea addresses_D+0x11928, %r9
nop
nop
nop
nop
nop
inc %rdi
mov (%r9), %r12w
nop
nop
nop
nop
cmp $33995, %r12

// Store
lea addresses_D+0xc528, %rdi
cmp %rsi, %rsi
movb $0x51, (%rdi)
nop
nop
nop
dec %r9

// Faulty Load
mov $0x64e2240000000d28, %rdi
nop
nop
nop
sub %r10, %r10
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 32, '52': 218}
52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 00 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 00 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 00 52 52 52 52 52 00 52 52 52 00 52 52
*/
