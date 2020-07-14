.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x81f3, %rsi
lea addresses_A_ht+0x1b8b3, %rdi
nop
nop
nop
nop
nop
and $52769, %rbp
mov $66, %rcx
rep movsl
cmp $39605, %r12
lea addresses_D_ht+0x20b3, %rax
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %rax
vmovaps %ymm6, (%rax)
add %rbp, %rbp
lea addresses_WT_ht+0xa0f3, %rsi
lea addresses_UC_ht+0x90b3, %rdi
clflush (%rdi)
nop
nop
nop
xor %rbp, %rbp
mov $26, %rcx
rep movsw
nop
add %rax, %rax
lea addresses_normal_ht+0xb313, %r14
xor %r12, %r12
mov (%r14), %ax
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1c83, %rsi
lea addresses_WT_ht+0x1d8b3, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $112, %rcx
rep movsl
nop
dec %r9
lea addresses_normal_ht+0x106b3, %r12
nop
nop
nop
nop
nop
xor $10407, %rbp
movb (%r12), %cl
nop
xor $58787, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x1b8b3, %rcx
nop
nop
nop
inc %r8
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rcx
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
