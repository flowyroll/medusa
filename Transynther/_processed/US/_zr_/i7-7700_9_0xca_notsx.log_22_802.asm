.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb9b1, %rsi
lea addresses_WC_ht+0x13b11, %rdi
nop
nop
sub %rdx, %rdx
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $52388, %rcx
lea addresses_normal_ht+0x1a3c1, %rsi
lea addresses_UC_ht+0x7e81, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $39, %rcx
rep movsw
and $53757, %rcx
lea addresses_WT_ht+0x73a9, %rsi
lea addresses_A_ht+0x13d41, %rdi
cmp $58048, %r13
mov $80, %rcx
rep movsb
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x10f41, %r13
nop
sub $62372, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x142f1, %rcx
nop
dec %rax
mov (%rcx), %di
nop
inc %rax
lea addresses_UC_ht+0x3c41, %rcx
clflush (%rcx)
nop
nop
nop
cmp $46055, %rax
movb $0x61, (%rcx)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xe545, %rsi
lea addresses_WC_ht+0x1bf41, %rdi
nop
nop
nop
and $31664, %r11
mov $99, %rcx
rep movsq
nop
nop
sub $29452, %rsi
lea addresses_normal_ht+0xb41, %rcx
sub %rdi, %rdi
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
add $29338, %r11
lea addresses_WT_ht+0x1a141, %r9
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %r13
movq %r13, (%r9)
nop
nop
nop
cmp $21303, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdx

// Load
lea addresses_RW+0x8b41, %r8
nop
nop
nop
nop
cmp %r11, %r11
mov (%r8), %dx
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_US+0x16741, %rbp
xor $41967, %r10
mov (%rbp), %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'00': 22}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
