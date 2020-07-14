.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rdi
push %rsi
lea addresses_normal_ht+0x118c3, %r10
nop
nop
add %rdi, %rdi
movw $0x6162, (%r10)
nop
cmp $54703, %rdi
lea addresses_WC_ht+0xab93, %r12
nop
nop
nop
nop
and $46473, %r11
movw $0x6162, (%r12)
cmp %r14, %r14
lea addresses_WT_ht+0x128c3, %rdi
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
add $27828, %r14
lea addresses_normal_ht+0x7493, %r12
nop
inc %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x1dbe7, %r11
nop
nop
nop
nop
nop
xor $63357, %r10
mov (%r11), %r14w
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Load
mov $0x2d1a900000000b03, %r15
clflush (%r15)
and $8851, %r10
mov (%r15), %r11w
nop
nop
nop
nop
nop
sub $63324, %r11

// Load
lea addresses_PSE+0x15a43, %r11
nop
nop
nop
nop
dec %rdx
movups (%r11), %xmm6
vpextrq $0, %xmm6, %r10
nop
cmp $61400, %r11

// Store
lea addresses_normal+0x3e43, %r10
nop
xor $3625, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovntdq %ymm2, (%r10)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
mov $0xe3, %rsi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rsi)
cmp $7042, %rdx

// Faulty Load
lea addresses_WT+0x48c3, %rdx
nop
add $7868, %rsi
mov (%rdx), %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'39': 4}
39 39 39 39
*/
