.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1b329, %rsi
lea addresses_WC_ht+0x184d9, %rdi
nop
nop
nop
nop
inc %rbx
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
add $58569, %rbp
lea addresses_normal_ht+0x107d9, %rbp
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xb311, %rsi
add $33967, %r11
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp $28749, %rsi
lea addresses_A_ht+0xded9, %r11
nop
nop
nop
sub %r10, %r10
movl $0x61626364, (%r11)
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_UC+0xded9, %r12
dec %rdi
movl $0x51525354, (%r12)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_WC+0x219, %r12
nop
nop
add $48910, %rbp
movw $0x5152, (%r12)
xor $27802, %r14

// Store
lea addresses_WC+0xea71, %r12
nop
nop
nop
cmp $45753, %r9
movw $0x5152, (%r12)
nop
nop
add $42441, %r12

// Store
lea addresses_WT+0x5399, %r12
nop
add $27260, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
sub %r14, %r14

// Store
mov $0x8d9, %rbx
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rbx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
nop
nop
cmp $44755, %r8

// Store
mov $0x5c9e900000000ed9, %r12
nop
nop
nop
nop
sub $61747, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
and $183, %r12

// Store
lea addresses_D+0x76d9, %r8
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%r8)

// Exception!!!
nop
mov (0), %rdi
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_UC+0x1e759, %rbp
nop
nop
nop
nop
xor $46605, %r8
movw $0x5152, (%rbp)
inc %r14

// Store
mov $0x16361d00000008d9, %r8
xor %rbx, %rbx
movw $0x5152, (%r8)
nop
sub $47520, %rdi

// Faulty Load
mov $0x5c9e900000000ed9, %rbp
nop
nop
add %r9, %r9
movb (%rbp), %r12b
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 2312, '58': 19517}
58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 00 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 00 00 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58
*/
