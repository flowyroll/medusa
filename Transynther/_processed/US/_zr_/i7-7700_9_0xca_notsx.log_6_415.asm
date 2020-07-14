.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1b5a0, %rdx
and $30053, %rsi
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
cmp $57492, %rcx
lea addresses_D_ht+0x150a0, %r14
nop
xor $4617, %r15
mov (%r14), %rcx
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1b5a0, %rdx
nop
nop
nop
nop
nop
sub %r15, %r15
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1dea0, %rsi
lea addresses_D_ht+0x8787, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $5, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $11231, %r14
lea addresses_normal_ht+0x13ca0, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm4
movups %xmm4, (%rdi)
nop
sub $58807, %rdx
lea addresses_D_ht+0x11300, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp $10630, %rdi
movb $0x61, (%r11)
nop
xor $1810, %rdx
lea addresses_UC_ht+0xb0a0, %r15
nop
nop
nop
nop
xor $51028, %r14
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x13da0, %rsi
lea addresses_A_ht+0x13ca0, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
sub $44061, %rdx
mov $124, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r13
lea addresses_D_ht+0x16aa0, %rsi
lea addresses_normal_ht+0x13aa0, %rdi
cmp $10560, %r15
mov $95, %rcx
rep movsw
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0xf0a0, %rsi
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
cmp $59807, %rcx
lea addresses_WT_ht+0x4d40, %r11
nop
dec %r13
mov (%r11), %dx
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1e0a0, %rsi
lea addresses_normal_ht+0xaea0, %rdi
nop
nop
sub %r14, %r14
mov $98, %rcx
rep movsb
nop
nop
cmp $28813, %r15
lea addresses_UC_ht+0x15ecb, %rsi
lea addresses_D_ht+0x1a628, %rdi
nop
nop
nop
cmp $39911, %r14
mov $72, %rcx
rep movsb
and $455, %r15
lea addresses_A_ht+0x196a0, %rsi
lea addresses_normal_ht+0x182a0, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $19, %rcx
rep movsl
nop
inc %r14
lea addresses_WT_ht+0x9f20, %rsi
lea addresses_D_ht+0x9ee8, %rdi
nop
nop
inc %r15
mov $82, %rcx
rep movsl
nop
nop
xor $26410, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rsi

// Faulty Load
lea addresses_US+0x1c6a0, %rbp
nop
nop
nop
cmp %rsi, %rsi
mov (%rbp), %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'00': 6}
00 00 00 00 00 00
*/
