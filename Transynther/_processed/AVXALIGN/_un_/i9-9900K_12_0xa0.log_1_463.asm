.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
lea addresses_WT_ht+0x52cc, %rcx
nop
nop
nop
cmp %r9, %r9
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
and $16032, %rcx
lea addresses_UC_ht+0xb3ec, %r11
nop
nop
nop
and %rbp, %rbp
mov (%r11), %ax
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0xe32c, %rbp
nop
nop
nop
nop
nop
dec %r15
movb (%rbp), %cl
nop
nop
and $52090, %r15
lea addresses_WT_ht+0x1080, %r15
nop
nop
nop
nop
nop
dec %rcx
movb $0x61, (%r15)
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x163ec, %rbp
nop
nop
nop
add %r15, %r15
mov (%rbp), %r9w
nop
nop
nop
xor $32265, %rbp
lea addresses_normal_ht+0x1d63c, %rcx
clflush (%rcx)
nop
nop
inc %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rcx)
nop
nop
xor $20664, %rbp
lea addresses_WT_ht+0x6bec, %r9
nop
dec %rax
mov (%r9), %ebp
nop
sub $45183, %rax
lea addresses_WC_ht+0x9fec, %r9
nop
nop
nop
nop
inc %r11
mov (%r9), %rbp
nop
nop
nop
and $59838, %r11
lea addresses_WC_ht+0x1bbec, %rax
xor %r9, %r9
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
add $45012, %rax
lea addresses_WC_ht+0x14a8c, %rcx
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm4, (%rcx)
nop
nop
nop
nop
add $58874, %rax
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_US+0x53ec, %rdx
clflush (%rdx)
nop
and %rax, %rax
movb $0x51, (%rdx)
nop
nop
nop
dec %r12

// Store
lea addresses_WT+0x1e6ac, %rbx
clflush (%rbx)
nop
and $34931, %r9
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
cmp $17574, %r9

// Store
lea addresses_normal+0x3bc4, %rbx
nop
nop
nop
and $22624, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rbx)
nop
and $50597, %r9

// Store
lea addresses_WC+0x1c3ec, %r9
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_PSE+0x1f284, %rbx
nop
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%rbx)
nop
cmp $33334, %rbx

// Store
mov $0xbec, %rax
clflush (%rax)
sub $3916, %r14
movw $0x5152, (%rax)
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_A+0x17fec, %r11
nop
nop
nop
sub %r12, %r12
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub $1829, %r9

// Store
lea addresses_D+0x17ec, %rax
cmp %r11, %r11
movb $0x51, (%rax)
nop
nop
nop
and %rax, %rax

// Store
mov $0x1843750000000dac, %r14
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
cmp %r12, %r12

// Store
lea addresses_A+0x71ac, %r9
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
sub $9972, %rax

// Faulty Load
lea addresses_US+0xcbec, %rax
nop
cmp %rdx, %rdx
mov (%rax), %r9w
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'2a': 1}
2a
*/
