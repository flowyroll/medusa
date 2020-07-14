.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x85f9, %r10
nop
nop
nop
dec %r9
movb (%r10), %dl
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x10839, %r11
nop
nop
nop
dec %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x9fc1, %rdx
sub %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x15419, %r12
clflush (%r12)
inc %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x1c679, %r14
nop
nop
nop
nop
nop
inc %r10
mov (%r14), %r11w
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x55b1, %r15
nop
nop
nop
add $41575, %r14
mov (%r15), %r9
add %r10, %r10
lea addresses_WT_ht+0x187a9, %rsi
lea addresses_D_ht+0x12279, %rdi
nop
sub %rdx, %rdx
mov $80, %rcx
rep movsw
nop
cmp %r14, %r14
lea addresses_WT_ht+0x164bd, %r14
nop
nop
nop
nop
sub $6824, %r10
movb (%r14), %r9b
nop
nop
nop
nop
sub $21258, %rsi
lea addresses_A_ht+0x1a701, %rsi
lea addresses_UC_ht+0x1e759, %rdi
cmp $49543, %r11
mov $48, %rcx
rep movsb
nop
nop
cmp $52118, %r12
lea addresses_WC_ht+0x70f9, %r14
nop
nop
nop
nop
nop
xor %r11, %r11
movw $0x6162, (%r14)
cmp %r10, %r10
lea addresses_WT_ht+0x4f75, %r10
nop
nop
nop
cmp %r12, %r12
movb (%r10), %cl
nop
nop
nop
nop
nop
add $56370, %r9
lea addresses_D_ht+0x14db4, %r12
nop
nop
nop
and %r9, %r9
movl $0x61626364, (%r12)
sub $39463, %r10
lea addresses_A_ht+0x1079, %r15
and $39607, %rdx
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
nop
and $35663, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Store
lea addresses_WT+0x12439, %r8
nop
xor %rdx, %rdx
movw $0x5152, (%r8)
nop
nop
nop
inc %rax

// Store
lea addresses_D+0x8f8c, %rax
nop
nop
nop
dec %r11
movl $0x51525354, (%rax)
nop
nop
nop
and $40188, %r12

// Store
lea addresses_A+0x173c3, %r8
nop
nop
nop
nop
add $28060, %rcx
movw $0x5152, (%r8)
xor $21441, %rax

// Store
mov $0x3e3, %r11
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_normal+0x129f2, %r15
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r15)
nop
add $26771, %r11

// Store
lea addresses_D+0xc8f9, %r11
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
add %r15, %r15

// Store
lea addresses_US+0x60f9, %rdx
nop
nop
nop
nop
nop
sub $51568, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_WC+0xf1b3, %r8
nop
nop
nop
nop
dec %r15
movb (%r8), %r11b
nop
nop
nop
nop
add $59178, %rcx

// Faulty Load
lea addresses_UC+0x138f9, %r8
nop
nop
and $56777, %r15
vmovaps (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 1}
00
*/
