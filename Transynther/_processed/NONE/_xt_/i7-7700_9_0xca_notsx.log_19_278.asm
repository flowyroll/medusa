.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdx
lea addresses_WT_ht+0x183b8, %r11
nop
nop
and $44059, %rax
movl $0x61626364, (%r11)
xor %r13, %r13
lea addresses_WT_ht+0x2818, %rdx
and %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0xb698, %rbp
add $62565, %rax
movb (%rbp), %dl
nop
nop
nop
nop
cmp $64235, %rbp
lea addresses_WC_ht+0x19318, %rbp
nop
nop
nop
nop
cmp %r10, %r10
movb (%rbp), %r11b
nop
nop
nop
nop
and $8837, %rbp
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdi

// Store
lea addresses_WC+0x2f18, %r14
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_WT+0x4270, %r14
nop
nop
nop
sub $9133, %r13
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
xor %r14, %r14

// Store
mov $0x410a0f0000000270, %rdi
nop
nop
nop
nop
add $47343, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
add $39700, %rdi

// Faulty Load
lea addresses_normal+0x498, %r14
nop
nop
nop
nop
nop
add $28907, %rbp
movb (%r14), %r13b
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'34': 19}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
