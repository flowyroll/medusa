.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1187c, %rcx
nop
nop
nop
nop
dec %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
and $42272, %r13
lea addresses_WC_ht+0x3e7c, %rsi
lea addresses_WC_ht+0x147c, %rdi
nop
nop
nop
dec %rax
mov $65, %rcx
rep movsw
nop
nop
nop
sub $8000, %rax
lea addresses_UC_ht+0x1e37c, %r13
clflush (%r13)
nop
cmp %rbp, %rbp
mov (%r13), %ax
nop
nop
inc %r13
lea addresses_A_ht+0xe7c, %rbp
nop
and $40726, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
sub $43437, %rcx
lea addresses_D_ht+0xafc, %rsi
sub %rax, %rax
mov (%rsi), %rdi
nop
nop
nop
nop
nop
xor $7021, %rax
lea addresses_A_ht+0xa05e, %rsi
lea addresses_WC_ht+0xc67c, %rdi
cmp $6948, %r11
mov $114, %rcx
rep movsw
nop
nop
cmp $35824, %rbp
lea addresses_normal_ht+0x3e7c, %rcx
nop
nop
nop
xor %rdi, %rdi
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x4ac, %r13
nop
and %r11, %r11
movb (%r13), %dl
nop
nop
nop
nop
cmp $24873, %rsi
pop %rsi
pop %rdx
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
push %r15
push %rbp
push %rdx

// Store
lea addresses_WT+0x4184, %r15
clflush (%r15)
nop
cmp %r10, %r10
movb $0x51, (%r15)
nop
nop
nop
nop
xor $823, %r15

// Faulty Load
lea addresses_US+0x1667c, %r15
nop
sub $20034, %r12
mov (%r15), %ebp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
