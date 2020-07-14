.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1be58, %r13
nop
nop
nop
sub $15869, %r9
mov (%r13), %r11d
nop
nop
nop
nop
nop
xor $40231, %r14
lea addresses_WC_ht+0xb298, %rsi
lea addresses_normal_ht+0xbc60, %rdi
cmp %r11, %r11
mov $32, %rcx
rep movsq
nop
and $65045, %rsi
lea addresses_WC_ht+0x1e76c, %r13
nop
nop
add %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, (%r13)
xor $2658, %rsi
lea addresses_normal_ht+0x4c58, %rcx
nop
nop
nop
nop
and %r11, %r11
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
and $14072, %rsi
lea addresses_D_ht+0x1e8d8, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rdi)
nop
nop
inc %rdi
lea addresses_WC_ht+0x12e18, %r14
add $53616, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r14)
nop
and $5763, %rsi
lea addresses_UC_ht+0x17098, %rsi
lea addresses_A_ht+0x1a518, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $53, %rcx
rep movsq
nop
dec %r9
lea addresses_WC_ht+0xb154, %rsi
lea addresses_D_ht+0x4ed8, %rdi
nop
nop
nop
nop
and $50814, %r15
mov $52, %rcx
rep movsq
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0xaa18, %r15
nop
nop
nop
nop
nop
sub $43939, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%r15)
xor %r11, %r11
lea addresses_D_ht+0x6bdc, %rsi
lea addresses_normal_ht+0x18418, %rdi
nop
inc %r13
mov $53, %rcx
rep movsb
nop
nop
cmp $18282, %r9
lea addresses_normal_ht+0x1ea98, %rdi
nop
nop
nop
add $45525, %r11
mov (%rdi), %r14
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x108c0, %r9
nop
nop
nop
add $24812, %r15
movl $0x61626364, (%r9)
nop
nop
nop
nop
add $37157, %r11
lea addresses_WT_ht+0x15538, %r14
inc %rcx
movb (%r14), %r13b
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x4f18, %rdi
dec %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rdi)
and $12616, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0xba98, %r8
nop
nop
nop
xor $65255, %rbx
movw $0x5152, (%r8)
nop
nop
nop
nop
cmp $17972, %rax

// Store
lea addresses_normal+0x5b38, %r14
nop
dec %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r14)
nop
nop
and $56916, %r12

// REPMOV
lea addresses_D+0xd18, %rsi
lea addresses_WT+0xd4a8, %rdi
xor %rax, %rax
mov $34, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_D+0xba98, %rbx
nop
nop
sub %r8, %r8
vmovups (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
