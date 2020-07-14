.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6a29, %r8
nop
nop
nop
nop
sub $6030, %r9
movb $0x61, (%r8)
nop
and $28096, %rbx
lea addresses_normal_ht+0x1404a, %r15
nop
nop
nop
nop
xor %r12, %r12
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
sub %r8, %r8
lea addresses_UC_ht+0x1509a, %rsi
lea addresses_UC_ht+0x101ce, %rdi
nop
nop
nop
cmp $48499, %r15
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x361a, %rcx
clflush (%rcx)
nop
nop
cmp $49644, %rax
movl $0x61626364, (%rcx)
xor $44890, %r9
lea addresses_UC_ht+0x1976a, %rsi
lea addresses_WT_ht+0x1da1a, %rdi
add $31874, %r9
mov $95, %rcx
rep movsl
nop
nop
sub $51570, %r9
lea addresses_D_ht+0x6a1a, %r9
nop
nop
add %rcx, %rcx
mov (%r9), %r8
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x10e9a, %rsi
lea addresses_normal_ht+0x1624a, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $117, %rcx
rep movsb
nop
add $38604, %r9
lea addresses_WT_ht+0x1912a, %rsi
nop
nop
cmp $56303, %rbx
mov (%rsi), %r12
nop
nop
nop
nop
nop
add $53278, %r15
lea addresses_WC_ht+0x19bfa, %rax
nop
nop
sub %r12, %r12
movb (%rax), %r15b
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x1d1fa, %rax
nop
nop
nop
cmp $58408, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rax)
nop
and %r12, %r12
lea addresses_A_ht+0x1d44a, %rax
nop
dec %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rax)
nop
xor %rcx, %rcx
lea addresses_A_ht+0xaf02, %rcx
add $14357, %rdi
movb $0x61, (%rcx)
sub $33628, %r8
lea addresses_D_ht+0xf47a, %rsi
lea addresses_A_ht+0x138aa, %rdi
nop
xor %rbx, %rbx
mov $59, %rcx
rep movsw
nop
nop
nop
nop
xor $9608, %r15
lea addresses_A_ht+0x551a, %rcx
nop
inc %r9
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
nop
xor %r9, %r9
lea addresses_D_ht+0xcdf2, %rsi
lea addresses_normal_ht+0x1387a, %rdi
nop
nop
nop
nop
sub $2846, %r15
mov $122, %rcx
rep movsw
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx

// Store
lea addresses_A+0xf1a, %r10
sub $58693, %r13
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
sub $44375, %rax

// Load
lea addresses_RW+0x2373, %rax
nop
nop
and $65421, %r10
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
dec %r14

// Store
lea addresses_RW+0xf11a, %r12
nop
nop
nop
and $18974, %rcx
movb $0x51, (%r12)
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_US+0x411a, %r11
nop
nop
nop
and $41643, %r14
movb (%r11), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
