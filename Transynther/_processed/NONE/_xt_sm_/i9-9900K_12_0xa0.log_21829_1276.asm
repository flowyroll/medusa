.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x6d65, %rsi
nop
nop
add $44861, %rcx
mov (%rsi), %rbx
nop
nop
and $25558, %r8
lea addresses_normal_ht+0x18ee9, %rdx
nop
nop
nop
sub $2486, %rdi
movb (%rdx), %cl
nop
nop
nop
cmp $22318, %r8
lea addresses_WC_ht+0xdd99, %rbx
nop
nop
nop
nop
sub %rax, %rax
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
xor %rax, %rax
lea addresses_D_ht+0x1b90f, %rsi
lea addresses_normal_ht+0x7f69, %rdi
nop
nop
nop
nop
nop
sub $26856, %rbp
mov $31, %rcx
rep movsq
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x8f51, %rax
nop
nop
nop
nop
xor %rdx, %rdx
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x1b3e9, %rdx
nop
nop
nop
nop
nop
sub $53158, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x184bd, %rsi
nop
nop
nop
nop
nop
sub $41591, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
xor $62915, %rdx
lea addresses_A_ht+0x1c6e9, %rsi
nop
nop
nop
nop
xor $65473, %rcx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x34e9, %rdx
inc %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rdx)
nop
sub %rax, %rax
lea addresses_UC_ht+0x147a9, %rsi
lea addresses_normal_ht+0x1d6e9, %rdi
nop
nop
nop
nop
nop
and $43195, %r8
mov $46, %rcx
rep movsq
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x4249, %rbp
xor $40045, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x1dee9, %rcx
nop
nop
nop
sub $15762, %rsi
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
xor $14636, %rax
lea addresses_WT_ht+0x96e9, %rbx
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_US+0xb9d1, %r13
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovaps %ymm6, (%r13)
nop
nop
nop
sub $3523, %r13

// Store
lea addresses_UC+0xbee9, %rsi
nop
nop
add $15279, %r8
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
and $56477, %rdi

// Store
lea addresses_US+0x133f7, %rbx
nop
nop
nop
sub %r10, %r10
movb $0x51, (%rbx)
nop
nop
add %rbx, %rbx

// Load
lea addresses_UC+0xbee9, %rax
nop
nop
nop
nop
nop
sub $41354, %r13
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rbx
xor $55190, %rax

// Store
lea addresses_UC+0xbee9, %rsi
nop
nop
nop
sub $8369, %r10
movb $0x51, (%rsi)
nop
dec %rbx

// Store
lea addresses_UC+0xbee9, %rbx
nop
nop
nop
nop
xor %r8, %r8
movb $0x51, (%rbx)
nop
cmp %rax, %rax

// Faulty Load
lea addresses_UC+0xbee9, %r8
nop
nop
nop
and %r13, %r13
mov (%r8), %di
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
