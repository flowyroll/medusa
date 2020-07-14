.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xdff7, %rsi
lea addresses_D_ht+0x10227, %rdi
nop
nop
nop
nop
inc %rax
mov $122, %rcx
rep movsb
add %rbx, %rbx
lea addresses_UC_ht+0x3cb7, %rdi
add $40946, %r9
movl $0x61626364, (%rdi)
add %rcx, %rcx
lea addresses_WT_ht+0x18b17, %rsi
nop
nop
nop
nop
nop
sub $60853, %rcx
movl $0x61626364, (%rsi)
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x57b7, %rsi
lea addresses_D_ht+0xf5d3, %rdi
nop
nop
xor %rbp, %rbp
mov $54, %rcx
rep movsl
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rbp

// Faulty Load
lea addresses_US+0x68b7, %r15
nop
nop
nop
nop
cmp $41471, %r8
mov (%r15), %r11d
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
