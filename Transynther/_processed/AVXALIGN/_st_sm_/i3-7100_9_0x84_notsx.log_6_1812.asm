.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc024, %rax
inc %rbx
mov (%rax), %r15d
and $15739, %r11
lea addresses_UC_ht+0x1b561, %r13
dec %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r13)
xor $28416, %rbx
lea addresses_D_ht+0xf4a9, %rsi
lea addresses_WT_ht+0x6e26, %rdi
nop
sub $64221, %r14
mov $58, %rcx
rep movsq
xor %r11, %r11
lea addresses_WT_ht+0x110a9, %rsi
nop
add %r13, %r13
mov (%rsi), %cx
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x9586, %r11
nop
nop
dec %rdx
movw $0x5152, (%r11)
nop
nop
xor $36635, %r13

// REPMOV
lea addresses_RW+0x114e3, %rsi
lea addresses_WT+0xa2a9, %rdi
nop
add $22570, %r11
mov $96, %rcx
rep movsw
nop
nop
nop
nop
cmp $47241, %rdx

// Store
lea addresses_WT+0x12ea9, %r11
nop
nop
nop
nop
nop
dec %rdx
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
add $64737, %r13

// Store
lea addresses_normal+0x5829, %r11
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %r11
movaps %xmm3, (%r11)
nop
nop
and $42064, %rdi

// Store
lea addresses_RW+0xe2a9, %rdi
dec %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rdi)
dec %r11

// Faulty Load
lea addresses_WT+0x12ea9, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
movb (%rcx), %r13b
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'52': 6}
52 52 52 52 52 52
*/
