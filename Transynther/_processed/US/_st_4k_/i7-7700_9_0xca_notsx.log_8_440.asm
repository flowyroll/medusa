.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rcx
lea addresses_WT_ht+0xd09e, %r14
nop
nop
nop
nop
nop
and $47056, %r13
movb (%r14), %cl
nop
nop
nop
nop
nop
add $50601, %rax
lea addresses_WC_ht+0x4d9e, %r11
xor $65339, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm0
and $0xffffffffffffffc0, %r11
vmovaps %ymm0, (%r11)
cmp %r14, %r14
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_normal+0x11d9e, %r13
nop
add %rsi, %rsi
movw $0x5152, (%r13)
nop
nop
and %rsi, %rsi

// Store
mov $0x39cc00000000019e, %rsi
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_WT+0x2d9e, %r10
nop
nop
nop
nop
nop
xor $61547, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovntdq %ymm5, (%r10)
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_UC+0x1859e, %r15
nop
nop
dec %rsi
movb $0x51, (%r15)
nop
nop
nop
and $24137, %rax

// Store
lea addresses_WT+0xad9e, %r15
nop
inc %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
add $1596, %rax

// Faulty Load
lea addresses_US+0x1059e, %r15
inc %rsi
movb (%r15), %al
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'51': 8}
51 51 51 51 51 51 51 51
*/
