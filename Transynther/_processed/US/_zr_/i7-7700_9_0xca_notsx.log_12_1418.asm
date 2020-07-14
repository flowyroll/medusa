.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15030, %r11
xor %r13, %r13
movb (%r11), %bl
cmp $57310, %r11
lea addresses_normal_ht+0x1cbf0, %rdi
clflush (%rdi)
nop
xor %r14, %r14
mov (%rdi), %ebp
cmp $22827, %r13
lea addresses_WC_ht+0x13a04, %rsi
lea addresses_normal_ht+0x1aff0, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r14, %r14
mov $113, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x97f0, %r11
nop
and %r14, %r14
movb (%r11), %r13b
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0xbdf0, %rsi
lea addresses_D_ht+0x1da5b, %rdi
nop
nop
nop
cmp $26224, %r13
mov $88, %rcx
rep movsw
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x15570, %r14
dec %rbp
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and $49733, %rsi
lea addresses_D_ht+0x5560, %r11
nop
nop
nop
nop
and $10351, %r14
mov (%r11), %ebp
add $50274, %rcx
lea addresses_WC_ht+0x918, %r13
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %r13
movaps %xmm7, (%r13)
nop
xor %r13, %r13
lea addresses_D_ht+0x1c2d4, %rcx
nop
nop
nop
nop
nop
cmp $48232, %r13
movb (%rcx), %r14b
sub $56769, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WC+0xa5b0, %r15
nop
dec %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
sub $7961, %rdx

// Faulty Load
lea addresses_US+0x1fbf0, %rcx
nop
nop
nop
and %r13, %r13
movb (%rcx), %bl
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
