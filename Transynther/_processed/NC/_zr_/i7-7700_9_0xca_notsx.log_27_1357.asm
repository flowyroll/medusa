.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x194cd, %rsi
cmp $28449, %rdx
movb $0x61, (%rsi)
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x11fe9, %rdi
nop
xor %rsi, %rsi
movb (%rdi), %r9b
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rdx
push %rsi

// Store
lea addresses_A+0xa315, %rsi
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovntdq %ymm2, (%rsi)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
mov $0xb8f, %rdx
cmp $44588, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdx)
nop
nop
and $29168, %rax

// Faulty Load
mov $0x6c772000000004c5, %rsi
cmp $28733, %r11
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 27}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
