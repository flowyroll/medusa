.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18111, %rdx
and $370, %rsi
movl $0x61626364, (%rdx)
nop
add %r15, %r15
lea addresses_normal_ht+0xf51, %r8
nop
add $32612, %r11
movb $0x61, (%r8)
nop
nop
cmp $46534, %r11
lea addresses_normal_ht+0x10411, %rsi
lea addresses_normal_ht+0xdb91, %rdi
nop
nop
nop
inc %rbx
mov $12, %rcx
rep movsw
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x16ad1, %rsi
lea addresses_D_ht+0x16b91, %rdi
nop
nop
nop
cmp %r8, %r8
mov $28, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x2f91, %r15
nop
nop
cmp %rsi, %rsi
mov (%r15), %r11w
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax

// Faulty Load
lea addresses_US+0x1f791, %r15
nop
cmp %r8, %r8
mov (%r15), %r13d
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
