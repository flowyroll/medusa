.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbp
push %rdx
lea addresses_WC_ht+0x170bb, %r11
nop
nop
add %rbp, %rbp
movl $0x61626364, (%r11)
nop
nop
nop
nop
sub %rdx, %rdx
pop %rdx
pop %rbp
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_WT+0xe0bb, %rdx
nop
nop
nop
cmp %rbx, %rbx
mov (%rdx), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'c0': 2, '00': 245, 'ff': 19065, '53': 443, '02': 190, '50': 50, '3c': 1832, 'b4': 2}
3c 3c ff ff ff 53 ff ff ff ff 53 ff ff 3c ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff 53 ff ff 3c ff ff ff ff ff 3c ff ff ff ff 53 ff ff 3c ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff ff ff 3c ff ff ff 3c ff ff 53 ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c 53 ff ff 00 ff ff 53 53 3c ff 3c ff ff ff ff ff 50 ff ff ff ff ff ff ff ff ff 53 ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff 3c ff 3c ff ff ff ff ff ff ff 00 ff ff ff ff ff ff 3c ff ff ff 02 ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff 53 ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff 3c ff 3c ff ff ff ff ff ff ff 3c ff ff ff ff 3c ff ff ff ff ff ff ff ff ff 53 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff 3c ff 53 ff ff ff ff ff ff ff 00 ff ff ff ff ff ff 3c ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 53 ff 3c 53 ff ff ff ff ff ff ff ff ff ff ff ff 3c ff 53 3c ff ff ff ff ff ff ff 3c ff ff 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff 53 ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff 3c ff ff ff ff 3c ff ff ff 3c ff ff 3c ff ff ff 3c ff ff ff ff ff 3c ff ff ff ff ff 53 ff ff ff ff ff ff ff ff ff ff ff ff 3c ff 53 ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff 3c ff ff ff ff 53 ff ff ff ff ff ff ff ff 3c 3c ff ff ff ff 3c ff ff ff ff ff ff ff 3c ff ff ff ff 3c ff ff 3c ff ff ff ff ff ff ff ff 3c ff ff ff ff ff 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff 3c ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff 53 ff ff 02 ff ff 53 ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff 53 ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c ff ff ff ff ff 3c 3c ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff 3c 00 ff 3c ff ff 3c ff ff ff ff ff ff 3c 3c 02 ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 53 ff ff ff 3c ff ff ff 00 3c 3c ff ff ff ff 3c ff ff ff 3c ff ff ff 53 53 ff ff ff 53 ff 53 3c ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
*/
