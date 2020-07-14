.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xaf98, %r9
nop
nop
nop
nop
sub %rbp, %rbp
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
nop
nop
cmp $1491, %rsi
lea addresses_normal_ht+0x19f98, %r9
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%r9)
nop
and $33996, %r9
lea addresses_WC_ht+0x12cf8, %rcx
nop
nop
nop
nop
nop
mfence
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add $1828, %rbp
lea addresses_normal_ht+0xf6b8, %rsi
lea addresses_WC_ht+0x12b98, %rdi
nop
nop
nop
dec %rbp
mov $97, %rcx
rep movsq
nop
dec %r10
lea addresses_D_ht+0x3918, %r9
nop
nop
nop
nop
add $31633, %r10
mov (%r9), %r8d
nop
nop
dec %rcx
lea addresses_WT_ht+0x1dd18, %rsi
nop
nop
add $10788, %r9
mov (%rsi), %r10
nop
nop
nop
cmp $22466, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbx

// Store
lea addresses_normal+0x16018, %r9
clflush (%r9)
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r9)
nop
add $54626, %r11

// Faulty Load
lea addresses_UC+0x11798, %r10
cmp $27659, %r15
movntdqa (%r10), %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 9755, '44': 11388, '48': 686}
44 00 00 44 44 00 00 44 00 44 00 44 00 00 44 00 00 00 44 00 44 44 00 44 44 00 00 44 44 44 44 00 44 44 00 44 44 00 00 44 00 44 44 00 00 00 44 44 00 00 44 44 00 00 44 44 44 44 44 00 00 44 00 00 44 00 00 44 44 00 00 00 00 44 44 00 44 44 00 44 44 44 00 44 44 00 00 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 00 00 00 00 00 44 44 44 44 00 00 44 00 00 00 44 44 44 44 00 00 00 44 44 44 44 00 00 44 00 44 44 44 44 44 00 00 00 00 44 00 44 44 44 00 00 44 00 44 00 44 00 00 44 44 00 44 00 44 00 00 00 00 00 00 00 00 00 44 48 44 00 00 44 00 00 44 00 00 00 44 00 44 44 44 44 00 00 44 44 44 00 44 44 44 00 00 00 48 00 44 00 48 44 00 00 44 44 44 00 44 48 00 00 00 00 00 44 44 00 44 44 44 00 44 00 00 44 44 00 44 44 44 44 48 44 44 44 00 44 44 44 44 00 00 44 00 44 44 00 44 00 00 44 00 44 00 00 44 44 00 00 44 44 00 00 00 00 00 00 44 44 44 44 00 44 44 44 44 00 44 44 00 44 00 00 00 44 00 00 44 44 00 00 44 48 44 44 44 44 44 44 00 44 44 44 00 00 00 44 44 44 48 44 00 48 44 48 00 00 00 00 44 44 00 00 44 44 00 00 00 00 48 00 44 00 48 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 00 44 44 44 00 00 44 00 00 44 44 44 00 00 00 00 00 48 44 00 00 00 00 00 00 00 44 00 44 44 44 44 44 00 44 00 00 44 00 00 00 00 00 44 44 48 44 44 44 44 44 48 00 44 48 00 00 00 00 00 00 00 44 44 44 44 44 00 44 48 00 00 00 48 00 00 00 00 00 00 00 44 44 44 00 00 00 44 44 00 44 48 00 00 44 00 44 00 44 44 44 44 44 44 00 44 44 44 00 44 44 00 00 44 00 00 44 44 00 44 44 44 44 44 00 00 00 44 44 44 00 00 44 44 00 00 00 48 00 44 00 44 44 44 00 44 00 44 44 00 44 44 44 00 00 44 00 44 44 44 44 44 00 44 00 00 00 44 00 44 44 00 44 44 00 00 44 44 00 44 00 44 44 44 00 44 00 44 44 00 44 00 00 00 00 00 00 00 00 48 48 44 00 44 44 00 44 00 44 00 00 44 00 00 44 00 44 44 00 44 44 00 44 00 44 44 44 44 44 44 44 00 44 00 44 00 00 00 00 00 00 44 44 44 00 00 00 44 44 00 44 00 00 48 00 44 48 00 44 00 00 00 44 00 00 44 44 44 44 00 48 48 00 44 44 00 44 00 44 00 44 00 44 00 00 44 44 00 00 44 44 44 00 44 44 44 00 44 44 00 00 44 44 00 44 00 00 44 00 44 44 44 00 00 44 44 00 44 44 44 00 44 44 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 00 00 00 00 44 44 44 44 48 44 00 00 44 00 00 00 00 00 00 44 44 44 00 00 00 44 44 44 48 44 00 00 44 44 44 00 44 00 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 48 44 44 44 00 44 44 44 00 48 44 00 00 44 44 00 44 44 44 44 44 00 44 44 00 48 44 00 00 44 44 44 44 44 44 00 00 44 00 00 48 00 00 00 44 00 44 44 44 00 44 44 44 44 00 44 44 44 00 00 44 44 00 00 00 00 00 00 44 00 00 44 00 00 44 44 44 44 44 48 00 00 00 44 00 00 44 00 44 44 44 00 44 00 44 44 00 00 44 44 44 44 44 44 00 00 44 48 44 44 44 00 00 44 44 00 44 44 00 00 00 00 44 44 00 00 44 44 44 48 44 44 44 44 44 00 00 44 00 00 44 00 00 00 00 00 44 00 44 00 00 44 44 44 44 00 00 44 44 00 44 44 00 00 44 44 00 00 44 00 44 44 00 44 00 00 44 44 44 44 00 00 00 00 00 44 44 44 44 44 44 00 00 00 44 00 44 00 44 00 44 00 00 44 44 00 44 44 00 44 00 00 44 00 00 44 00 44 00 44 44 44 00 00 44 44 00
*/
