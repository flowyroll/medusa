.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x13e6a, %rsi
lea addresses_UC_ht+0x1c04a, %rdi
cmp $8542, %rdx
mov $110, %rcx
rep movsw
and $32626, %r12
lea addresses_normal_ht+0x6816, %r9
nop
nop
nop
and %r15, %r15
mov (%r9), %edx
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x170ca, %r9
nop
add $2254, %rsi
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
and $56726, %rdx
lea addresses_A_ht+0x1cfe2, %r12
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r12
movntdq %xmm4, (%r12)
sub $50639, %r15
lea addresses_A_ht+0x158e1, %rsi
lea addresses_WT_ht+0xd8ca, %rdi
sub %r11, %r11
mov $29, %rcx
rep movsb
add $5673, %rcx
lea addresses_D_ht+0x12a86, %rsi
lea addresses_UC_ht+0x1b2ca, %rdi
dec %r11
mov $47, %rcx
rep movsb
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x1c9ca, %r15
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%r15)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x1a436, %rsi
nop
nop
nop
nop
cmp $32369, %r11
movl $0x61626364, (%rsi)
nop
cmp $12086, %r15
lea addresses_WC_ht+0xe24a, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1e6ca, %r12
nop
add $22191, %rsi
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
sub %r15, %r15
lea addresses_normal_ht+0x126ca, %rsi
lea addresses_WT_ht+0x5ba5, %rdi
clflush (%rdi)
nop
nop
nop
and %r12, %r12
mov $58, %rcx
rep movsb
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xbcaa, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
add %rcx, %rcx
lea addresses_normal_ht+0xf28a, %r12
nop
add %rdi, %rdi
movb $0x61, (%r12)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x7df6, %rdx
nop
xor $8982, %r12
mov (%rdx), %rsi
and $36423, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rax
push %rdx

// Store
lea addresses_UC+0x5c2a, %rdx
add %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovntdq %ymm0, (%rdx)
and $42506, %rdx

// Load
mov $0x3c2, %r11
nop
nop
xor %r9, %r9
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0x16cca, %rdx
nop
nop
nop
sub $36857, %r14
movl $0x51525354, (%rdx)
nop
nop
nop
nop
add $27197, %rax

// Faulty Load
lea addresses_normal+0x148ca, %rdx
nop
add $10645, %rax
movb (%rdx), %r13b
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'34': 190}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
