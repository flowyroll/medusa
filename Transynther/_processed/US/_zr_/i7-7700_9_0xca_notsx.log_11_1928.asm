.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1634e, %rax
sub $18841, %r9
movups (%rax), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
nop
sub $25336, %rdi
lea addresses_UC_ht+0xb2c0, %rdi
nop
add $23286, %rdx
movw $0x6162, (%rdi)
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x1940b, %rsi
lea addresses_WT_ht+0x71a0, %rdi
clflush (%rsi)
nop
nop
nop
dec %r9
mov $116, %rcx
rep movsw
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x13bc0, %r15
nop
nop
nop
add %r13, %r13
movl $0x61626364, (%r15)
nop
nop
and $19602, %rax
lea addresses_WT_ht+0x11912, %rsi
lea addresses_D_ht+0x13c29, %rdi
dec %r13
mov $76, %rcx
rep movsl
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x127c0, %r13
clflush (%r13)
xor $23414, %rcx
mov (%r13), %r15d
nop
sub $45213, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rbx

// Faulty Load
lea addresses_US+0x17fc0, %r9
nop
xor $18103, %r10
mov (%r9), %bx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
