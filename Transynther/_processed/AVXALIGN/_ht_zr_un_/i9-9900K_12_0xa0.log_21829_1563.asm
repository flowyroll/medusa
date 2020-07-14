.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x49d3, %rsi
lea addresses_WC_ht+0xc613, %rdi
nop
nop
nop
cmp %r10, %r10
mov $88, %rcx
rep movsl
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0xf7d3, %rdi
xor $61974, %r14
mov (%rdi), %r11w
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x1c013, %r10
and %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
and %r14, %r14
lea addresses_UC_ht+0x15cd3, %rsi
lea addresses_WT_ht+0x1c5d3, %rdi
nop
nop
inc %r13
mov $103, %rcx
rep movsl
nop
cmp $11286, %rdx
lea addresses_A_ht+0x180a3, %r10
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r10), %esi
and %r11, %r11
lea addresses_D_ht+0x1c2d3, %r14
nop
nop
nop
nop
xor $37704, %r11
movw $0x6162, (%r14)
nop
sub %r10, %r10
lea addresses_WC_ht+0x2895, %rsi
lea addresses_WC_ht+0x16dd3, %rdi
clflush (%rsi)
cmp $41184, %r14
mov $124, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $51344, %r10
lea addresses_D_ht+0x7953, %rdi
nop
nop
nop
nop
xor $26633, %r10
movb $0x61, (%rdi)
nop
and %rsi, %rsi
lea addresses_normal_ht+0xa41b, %rdi
nop
nop
nop
xor %rcx, %rcx
mov (%rdi), %esi
nop
nop
inc %r13
lea addresses_UC_ht+0xd0b9, %r11
nop
nop
nop
nop
nop
cmp %r14, %r14
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
inc %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xd1d3, %r15
nop
add $63894, %rdx
movw $0x5152, (%r15)
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_WC+0x102d3, %r11
nop
and $45636, %rdx
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
add %r11, %r11

// Store
mov $0x4d3, %r11
nop
dec %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
cmp $59397, %r15

// Store
lea addresses_RW+0x1c453, %r15
nop
sub %rbx, %rbx
movb $0x51, (%r15)
nop
nop
cmp $32801, %rdi

// Store
lea addresses_RW+0xb953, %rdx
nop
nop
nop
nop
xor $42154, %rsi
movl $0x51525354, (%rdx)
nop
xor $41488, %rsi

// Store
lea addresses_WC+0x1cc53, %rdi
xor %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_WT+0x7dd3, %rbx
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
cmp %r11, %r11

// Store
mov $0x4f62a30000000cd3, %rdi
nop
nop
nop
nop
nop
and $12446, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%rdi)
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_RW+0x14dd3, %rdx
clflush (%rdx)
sub %rsi, %rsi
vmovaps (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'44': 11127, '7f': 1, '94': 1, '00': 10692, 'be': 4, '6d': 4}
00 44 44 44 44 00 44 44 00 44 44 44 44 00 44 00 00 44 00 44 00 00 00 00 00 44 44 00 44 00 00 00 44 00 44 44 44 44 00 00 44 00 44 44 44 44 00 00 44 44 00 00 00 00 44 44 00 44 00 44 00 44 44 00 44 44 00 00 00 00 00 00 00 44 44 44 00 44 44 00 44 44 00 44 44 00 00 00 44 44 00 44 44 44 00 00 44 44 00 00 44 00 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 00 00 44 00 00 44 00 44 00 00 44 44 00 44 00 00 00 00 00 00 44 00 00 44 00 00 44 44 00 44 44 44 44 44 00 00 00 00 00 44 44 00 00 00 44 44 00 44 00 00 00 44 00 00 00 44 44 00 00 00 44 44 44 00 00 00 44 44 00 44 44 44 44 00 00 00 44 44 44 44 00 44 44 44 44 00 00 00 44 00 44 44 00 00 00 44 44 00 44 00 44 44 00 00 00 44 44 00 00 00 00 44 00 00 44 00 00 44 00 44 44 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 44 44 00 44 00 44 44 44 00 00 44 44 44 44 44 00 44 00 44 00 44 00 44 44 44 00 00 00 00 00 00 44 00 44 00 00 00 44 00 44 00 44 00 00 00 44 44 44 44 44 44 44 00 44 44 7f 00 00 44 44 44 44 00 00 44 44 00 44 00 44 00 44 44 44 00 44 44 00 44 00 44 00 44 44 44 44 00 44 44 44 00 00 00 44 44 00 00 44 44 00 44 44 00 44 44 44 00 44 00 44 44 44 44 44 00 44 00 00 44 44 00 00 44 44 00 00 00 44 00 00 44 00 00 44 44 44 44 44 44 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 44 44 44 00 44 44 44 00 44 00 44 00 00 00 44 44 44 44 44 00 00 44 00 44 44 00 00 00 44 00 44 00 00 00 44 00 44 00 00 44 44 00 00 44 44 44 00 00 00 44 00 44 00 44 44 00 00 44 00 44 00 44 44 44 00 44 44 44 44 00 44 00 00 00 00 44 00 44 00 44 44 00 00 00 44 44 44 44 44 00 00 00 44 00 00 44 44 00 44 00 00 44 44 44 00 44 00 00 00 00 00 00 44 44 00 44 00 44 00 00 00 00 00 00 44 44 44 00 00 44 44 44 44 00 44 44 00 00 00 00 44 44 44 44 00 44 44 00 00 00 44 00 00 00 00 44 44 00 44 00 00 00 44 00 44 44 00 00 44 00 44 44 00 00 00 44 44 00 44 44 44 44 44 00 00 44 00 44 44 44 00 00 00 00 00 00 00 44 00 44 44 44 00 00 44 44 00 44 44 44 44 00 00 44 44 00 00 00 00 44 00 44 00 44 44 44 44 00 00 00 44 00 44 44 00 44 00 00 00 44 44 00 00 00 44 00 44 44 00 00 44 00 44 44 00 44 00 00 44 44 00 44 00 00 00 00 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 00 44 44 44 00 00 44 00 44 00 00 00 44 00 44 00 00 44 44 00 44 00 00 44 44 44 00 00 44 00 44 00 44 00 44 00 00 44 44 00 00 44 44 44 00 44 00 44 44 00 44 44 44 44 00 00 00 00 44 44 44 00 44 44 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 44 00 44 00 00 44 00 44 44 00 44 44 44 00 44 00 00 00 00 44 00 00 44 00 00 00 44 44 44 44 00 44 44 44 00 44 00 44 44 00 44 00 00 44 00 00 44 44 44 00 44 00 44 44 44 00 44 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 44 44 00 44 44 44 00 00 00 00 00 00 44 00 44 00 44 00 00 44 00 00 44 44 00 44 00 44 00 44 00 00 44 44 00 00 00 44 44 44 00 44 00 00 44 00 00 44 44 44 00 44 44 44 00 44 44 00 44 44 00 44 00 44 44 00 00 00 00 00 00 44 00 00 44 00 44 44 44 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 44 44 44 44 44 44 00 00 00 00 00 00 44 00 44 00 44 44 44 44 44 44 44 00 44 44 00 44 00 00 00 00 00 44 44 00 44 00 44 44 44 00 44 00 00 00 44 00 00 00 00 00 44 00 44 44 00 00 44 00 44 44 44
*/
