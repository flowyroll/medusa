.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd90, %rbx
nop
nop
xor %rbp, %rbp
movb $0x61, (%rbx)
nop
xor $5088, %r9
lea addresses_WC_ht+0x13f50, %r13
add $65142, %r8
mov (%r13), %rdi
nop
nop
nop
sub $40914, %rbx
lea addresses_WC_ht+0xe190, %rdi
nop
nop
nop
sub %rbx, %rbx
movl $0x61626364, (%rdi)
nop
and %r13, %r13
lea addresses_D_ht+0x1ad90, %rbp
nop
add $1803, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
nop
add $28781, %r11
lea addresses_WC_ht+0xf076, %r11
nop
nop
nop
add $22971, %r8
movb (%r11), %r9b
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x15e90, %rsi
lea addresses_normal_ht+0x7b90, %rdi
nop
xor %r13, %r13
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
and $38189, %rcx
lea addresses_WT_ht+0x6c80, %rsi
lea addresses_WC_ht+0x14d50, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $127, %rcx
rep movsq
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x18290, %r11
nop
nop
nop
inc %rbx
mov (%r11), %r9d
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x71f6, %rsi
lea addresses_WC_ht+0x12790, %rdi
nop
nop
nop
dec %r8
mov $76, %rcx
rep movsw
xor %rsi, %rsi
lea addresses_UC_ht+0x1e610, %r13
nop
nop
nop
and $31318, %rdi
mov (%r13), %r9w
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0xffdc, %rbx
cmp %rbp, %rbp
movb $0x61, (%rbx)
add $6804, %rbp
lea addresses_A_ht+0x1db50, %rsi
lea addresses_normal_ht+0x14b90, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $52, %rcx
rep movsq
xor $20557, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rsi

// Faulty Load
mov $0xf90, %rsi
nop
nop
nop
nop
xor %r10, %r10
movntdqa (%rsi), %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'ff': 1}
ff
*/
