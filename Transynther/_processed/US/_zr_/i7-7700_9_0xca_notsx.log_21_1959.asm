.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14778, %rcx
nop
nop
add $55846, %rsi
movb (%rcx), %dl
nop
nop
nop
nop
nop
and $2761, %r13
lea addresses_WC_ht+0x1bec, %rbx
nop
nop
nop
nop
add $29869, %r11
movw $0x6162, (%rbx)
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x4086, %rdx
nop
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
and %rbx, %rbx
lea addresses_A_ht+0x19378, %rsi
lea addresses_D_ht+0x5c78, %rdi
nop
nop
nop
add $46953, %r9
mov $90, %rcx
rep movsl
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0xa346, %rsi
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rsi)
nop
xor $59296, %rsi
lea addresses_WC_ht+0x16de8, %rcx
nop
nop
inc %r11
movb (%rcx), %r9b
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x10ea0, %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1e278, %r11
nop
nop
nop
nop
and %rcx, %rcx
mov (%r11), %dx
nop
nop
nop
sub $52893, %rbx
lea addresses_D_ht+0xa378, %rcx
nop
nop
nop
sub $17127, %rbx
movl $0x61626364, (%rcx)
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x1b9f8, %r9
nop
nop
nop
nop
nop
xor $22352, %r13
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
nop
add $14478, %rdi
lea addresses_UC_ht+0x13f30, %rsi
lea addresses_D_ht+0x12b78, %rdi
nop
nop
nop
inc %rdx
mov $81, %rcx
rep movsl
nop
nop
add $6592, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_normal+0x14778, %rcx
nop
inc %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rcx)
add $6303, %rcx

// Store
lea addresses_normal+0x1bfd4, %r14
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movaps %xmm7, (%r14)
nop
nop
add %r9, %r9

// Store
lea addresses_D+0x43fe, %r8
nop
add $4280, %r12
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
nop
nop
add $11705, %r12

// Store
lea addresses_WC+0x8378, %r8
clflush (%r8)
add $64477, %r12
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
and $44788, %r9

// Store
lea addresses_WC+0x16e18, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%rdi)
xor %r9, %r9

// Store
lea addresses_PSE+0x18a78, %r8
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
sub $44406, %r8

// Faulty Load
lea addresses_US+0x18b78, %r15
nop
nop
xor %r12, %r12
movb (%r15), %r14b
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
