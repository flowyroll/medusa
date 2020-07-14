.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc68e, %r9
nop
cmp %r14, %r14
mov (%r9), %cx
nop
nop
nop
nop
nop
and $28731, %r9
lea addresses_WC_ht+0xc54e, %rsi
lea addresses_WT_ht+0x1598e, %rdi
nop
nop
nop
add $54465, %r11
mov $74, %rcx
rep movsq
add $13556, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx

// Store
mov $0x16ae5c0000000108, %r9
sub %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
xor $23001, %rcx

// Load
lea addresses_D+0x1a28e, %r12
nop
nop
nop
nop
nop
and %r9, %r9
movaps (%r12), %xmm4
vpextrq $1, %xmm4, %r10
xor %r13, %r13

// Store
mov $0x268bef000000008e, %rcx
nop
nop
and $8506, %r9
movw $0x5152, (%rcx)
sub $28160, %rcx

// Store
mov $0x4b06f9000000048e, %r11
nop
inc %r8
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
nop
xor %r8, %r8

// Store
mov $0x60a4550000000f1e, %rcx
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_US+0x1ce8e, %rcx
nop
nop
nop
nop
nop
sub $55930, %r11
mov (%rcx), %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 2}
00 00
*/
