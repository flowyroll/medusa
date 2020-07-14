.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xd11b, %r10
cmp %rcx, %rcx
mov (%r10), %r11d
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x3439, %r8
dec %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x4083, %rsi
nop
nop
nop
sub $61056, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rsi)
nop
dec %rcx
lea addresses_UC_ht+0x6d5b, %r14
nop
nop
nop
nop
nop
and $13263, %rsi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
add $1457, %r14
lea addresses_normal_ht+0xb82b, %r8
nop
nop
nop
nop
cmp %r14, %r14
movb $0x61, (%r8)
nop
sub %r12, %r12
lea addresses_A_ht+0x17b2a, %r11
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r11), %r10d
nop
sub $9162, %r12
lea addresses_normal_ht+0x661b, %r10
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%r10)
inc %r8
lea addresses_A_ht+0x18d1b, %r10
nop
nop
nop
nop
lfence
movw $0x6162, (%r10)
nop
dec %r8
lea addresses_normal_ht+0x719b, %r12
nop
nop
nop
nop
dec %r10
movw $0x6162, (%r12)
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0xadfb, %r10
nop
nop
nop
nop
inc %r11
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
and $7892, %r14
lea addresses_UC_ht+0x1c0d7, %rsi
nop
nop
nop
nop
nop
and $58779, %r11
mov (%rsi), %r10d
nop
inc %r11
lea addresses_WC_ht+0x951b, %rsi
lea addresses_normal_ht+0x167b3, %rdi
nop
nop
nop
nop
xor $8935, %r12
mov $125, %rcx
rep movsl
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x1e91b, %r10
nop
nop
xor %rcx, %rcx
mov (%r10), %esi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 90}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
