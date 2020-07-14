.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x19ee3, %rsi
lea addresses_UC_ht+0x10e03, %rdi
nop
nop
sub $4242, %r15
mov $85, %rcx
rep movsw
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0xf2ae, %r10
nop
nop
nop
nop
and $28542, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r10)
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x1ba3, %r10
nop
nop
sub $20449, %rcx
movw $0x6162, (%r10)
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x13843, %rsi
lea addresses_UC_ht+0x18a03, %rdi
nop
nop
cmp $58043, %rbp
mov $64, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $23963, %rcx
lea addresses_UC_ht+0x13eb, %rdi
add $53788, %r15
movw $0x6162, (%rdi)
nop
nop
nop
nop
add $22817, %rdi
lea addresses_D_ht+0xa03, %rsi
lea addresses_UC_ht+0x2a03, %rdi
inc %rbp
mov $27, %rcx
rep movsb
sub $32078, %r10
lea addresses_normal_ht+0x11203, %rsi
lea addresses_WT_ht+0x10203, %rdi
nop
nop
nop
and $30453, %r10
mov $96, %rcx
rep movsq
nop
nop
nop
cmp $7025, %rdi
lea addresses_A_ht+0x6703, %rsi
lea addresses_UC_ht+0x199a3, %rdi
nop
nop
nop
dec %r15
mov $48, %rcx
rep movsq
nop
nop
nop
sub $4357, %r9
lea addresses_A_ht+0x54ab, %rsi
lea addresses_UC_ht+0x3203, %rdi
nop
nop
xor %r9, %r9
mov $14, %rcx
rep movsq
nop
and %rbp, %rbp
lea addresses_A_ht+0xa03, %rsi
nop
nop
nop
add $9892, %rdx
movl $0x61626364, (%rsi)
nop
sub $44942, %rsi
lea addresses_A_ht+0xf203, %r15
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
and $0xffffffffffffffc0, %r15
movntdq %xmm3, (%r15)
nop
dec %r15
lea addresses_UC_ht+0x11703, %rsi
lea addresses_D_ht+0x18a03, %rdi
nop
nop
nop
sub %r10, %r10
mov $111, %rcx
rep movsw
nop
nop
nop
xor $46208, %r9
lea addresses_WT_ht+0x14a03, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%r15), %r9d
and %r9, %r9
lea addresses_WT_ht+0x1dbc3, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r15), %rdx
and $38231, %rsi
lea addresses_D_ht+0x13503, %rbp
xor $15375, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rbp)
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rdi
push %rdx

// Store
lea addresses_RW+0x1f3e3, %r11
nop
nop
dec %rdi
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_WC+0x182c3, %rdx
nop
and %r13, %r13
movb (%rdx), %r15b
nop
nop
nop
inc %r11

// Store
mov $0x2e16950000000003, %rax
nop
nop
nop
nop
xor $19213, %rdx
movl $0x51525354, (%rax)
nop
nop
inc %rdi

// Store
lea addresses_UC+0xaa03, %r13
nop
nop
nop
nop
and $25765, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movntdq %xmm7, (%r13)
nop
and %rdx, %rdx

// Store
lea addresses_RW+0xb803, %rdi
nop
nop
nop
and %r8, %r8
movw $0x5152, (%rdi)
nop
sub %r13, %r13

// Store
lea addresses_D+0x8f0b, %rdx
nop
cmp %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rdx)
cmp %r11, %r11

// Faulty Load
mov $0x2c545c0000000203, %r11
nop
xor $11612, %r13
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'00': 21759, '45': 61, '44': 9}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
