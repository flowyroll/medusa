.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xb728, %rsi
lea addresses_WT_ht+0xd4ac, %rdi
nop
nop
nop
nop
xor $968, %r8
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x212c, %rdx
nop
nop
add %rcx, %rcx
movb $0x61, (%rdx)
nop
nop
cmp $7066, %r8
lea addresses_A_ht+0x7f8c, %rbx
inc %r9
movb (%rbx), %dl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_normal+0x12cac, %r11
nop
nop
nop
nop
and %r9, %r9
movw $0x5152, (%r11)
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_A+0x1b12c, %r10
and $53682, %rax
mov (%r10), %r11d
nop
inc %rsi

// Faulty Load
lea addresses_US+0xc8ac, %r11
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r11), %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
