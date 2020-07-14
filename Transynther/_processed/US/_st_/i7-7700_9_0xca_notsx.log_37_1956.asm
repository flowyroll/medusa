.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd7b3, %rsi
lea addresses_WT_ht+0x1e3b3, %rdi
nop
nop
nop
dec %r11
mov $33, %rcx
rep movsq
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x1517b, %rsi
lea addresses_A_ht+0x1bbb3, %rdi
nop
nop
nop
nop
nop
sub $22536, %rbx
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
and $9441, %r11
lea addresses_UC_ht+0x1c473, %rcx
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm2, (%rcx)
nop
and %rsi, %rsi
lea addresses_WC_ht+0x4bb3, %rsi
lea addresses_A_ht+0x1a573, %rdi
nop
nop
and $59859, %r14
mov $108, %rcx
rep movsq
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0xe6b3, %rsi
lea addresses_UC_ht+0x14573, %rdi
nop
nop
nop
nop
nop
and $2959, %r11
mov $20, %rcx
rep movsb
nop
nop
dec %r14
lea addresses_D_ht+0x11c9b, %rsi
lea addresses_WC_ht+0x3133, %rdi
nop
and $60015, %r15
mov $11, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x1b6cd, %rsi
lea addresses_UC_ht+0x1d96f, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
xor %r11, %r11
mov $121, %rcx
rep movsl
nop
nop
nop
nop
nop
and $14586, %rcx
lea addresses_WC_ht+0x33b3, %rdi
nop
inc %r15
movb (%rdi), %bl
nop
nop
nop
nop
cmp $54696, %r11
lea addresses_A_ht+0xe687, %rbx
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
nop
and $22420, %r11
lea addresses_normal_ht+0x6bb3, %r12
nop
nop
nop
sub $5059, %rcx
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rdi
add $20998, %rdi
lea addresses_A_ht+0x1e74b, %rcx
nop
add $42556, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rcx)
nop
cmp $39217, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
mov $0x3d45310000000bb3, %r10
sub $49192, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movntdq %xmm6, (%r10)

// Exception!!!
nop
nop
nop
nop
mov (0), %r11
nop
nop
sub $25534, %rcx

// Store
lea addresses_UC+0x12cb3, %r14
clflush (%r14)
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_US+0x6bb3, %r10
nop
nop
nop
nop
and %rcx, %rcx
mov (%r10), %esi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'58': 37}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
