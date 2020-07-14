.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc33c, %r13
nop
nop
nop
and %rax, %rax
mov (%r13), %r11
nop
nop
nop
nop
cmp $42517, %r11
lea addresses_A_ht+0x101c, %rsi
lea addresses_UC_ht+0xcf3c, %rdi
nop
nop
nop
xor $46911, %rbp
mov $84, %rcx
rep movsq
and %rsi, %rsi
lea addresses_UC_ht+0x7f7c, %rsi
nop
nop
cmp $50180, %rax
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
nop
xor $14054, %rax
lea addresses_UC_ht+0x801c, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r13), %r11d
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r8
push %r9

// Store
mov $0x5e1bd40000000ddc, %r13
nop
and %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r13)
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_PSE+0x1693c, %r9
dec %r10
vmovaps (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 9111, '45': 3190}
00 45 00 45 45 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 45 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 45 00 45 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 45 00 45 45 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 45 00 00 00 45 45 00 45 45 00 00 00 45 45 45 45 00 00 00 00 00 00 00 45 45 00 00 00 45 00 45 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 45 45 45 45 45 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 45 45 45 00 00 45 45 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 45 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 45 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 45 45 45 00 45 00 45 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 45 00 45 00 00 00 45 00 00 00 00 00 00 45 45 00 45 00 45 00 00 00 00 00 00 00 00 45 45 45 45 45 00 45 45 45 45 00 00 45 00 45 45 45 45 45 00 00 00 00 00 45 45 45 45 00 00 45 45 45 00 00 45 45 00 00 45 45 00 00 00 00 45 00 00 45 00 00 45 00 45 00 00 45 00 00 45 00 00 00 00 45 00 00 45 00 45 45 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 45 00 45 00 00 45 45 45 00 00 45 00 45 45 00 45 00 45 00 00 45 00 00 45 00 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 00 45 45 00 00 45 00 00 45 45 00 00 00 45 00 45 00 00 00 45 00 00 45 45 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 45 45 45 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 45 00 00 45 00 00 00 00 00 00
*/
