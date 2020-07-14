.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c726, %rsi
lea addresses_UC_ht+0x1326e, %rdi
nop
nop
inc %r10
mov $47, %rcx
rep movsl
dec %r15
lea addresses_normal_ht+0x3012, %rsi
lea addresses_UC_ht+0x1516e, %rdi
sub $27307, %r12
mov $6, %rcx
rep movsl
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x626e, %rcx
nop
nop
nop
nop
nop
inc %r9
movb (%rcx), %r15b
nop
nop
and %r12, %r12
lea addresses_D_ht+0x16ee, %r10
nop
nop
mfence
movw $0x6162, (%r10)
dec %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x1a4e2, %rsi
lea addresses_D+0x1a06, %rdi
nop
nop
xor %rdx, %rdx
mov $4, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x1f2ee, %rsi
nop
cmp $57179, %r15
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
add $50993, %rsi

// Store
lea addresses_PSE+0x17bee, %r9
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
xor %r15, %r15

// Store
mov $0x23d8f900000009ee, %rcx
nop
add %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
add $21795, %rdi

// Store
lea addresses_WC+0x1dfee, %r14
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movntdq %xmm1, (%r14)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
mov $0x84e, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
xor $25861, %rsi

// Faulty Load
lea addresses_US+0x1d26e, %rcx
nop
nop
nop
xor $21414, %r15
mov (%rcx), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'00': 27}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
