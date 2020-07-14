.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %r9
push %rax
lea addresses_WC_ht+0x1b568, %r13
nop
nop
nop
nop
xor $11788, %rax
mov (%r13), %r9w
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x1d538, %r13
nop
nop
nop
nop
nop
add $11156, %r11
movl $0x61626364, (%r13)
nop
nop
sub $56611, %r9
lea addresses_UC_ht+0x11428, %rax
nop
nop
nop
nop
nop
and $46821, %r15
movups (%rax), %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x1bd68, %r9
inc %rax
movb $0x61, (%r9)
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x14468, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add %rax, %rax
movups (%r15), %xmm1
vpextrq $0, %xmm1, %r8
add %r10, %r10
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rdx

// Load
lea addresses_WT+0x7828, %r10
xor $56700, %r12
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rbx
nop
and $62101, %r12

// Store
lea addresses_normal+0x1528, %rbp
nop
nop
dec %r11
movb $0x51, (%rbp)
nop
nop
nop
and %r10, %r10

// Store
lea addresses_WC+0xe1e8, %rbp
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
xor %rdx, %rdx

// Store
mov $0x3fe4d90000000244, %rbp
nop
nop
nop
sub %r10, %r10
movl $0x51525354, (%rbp)
inc %r12

// Load
lea addresses_PSE+0x113c5, %r12
nop
nop
nop
add %r10, %r10
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_UC+0x1268, %rdx
nop
nop
add %rbp, %rbp
movb (%rdx), %r12b
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
