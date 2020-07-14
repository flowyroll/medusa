.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e27c, %rsi
lea addresses_WT_ht+0xfd5c, %rdi
nop
sub $19232, %rbx
mov $84, %rcx
rep movsw
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x11afc, %r9
cmp $38721, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbx
push %rdi
push %rsi

// Faulty Load
lea addresses_WT+0x11a7c, %rdi
nop
add $42707, %r10
mov (%rdi), %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'48': 3700, '00': 8825, 'ff': 6308, 'be': 41, '53': 674, '02': 5, '70': 69, '3c': 58, '80': 1, 'b0': 2148}
48 00 b0 48 00 00 ff 00 ff ff b0 ff 48 48 00 b0 48 b0 00 ff 48 b0 00 53 00 ff 48 b0 ff 48 00 53 00 ff 53 b0 ff 00 ff ff ff 00 3c 00 ff 00 ff 00 48 00 ff b0 48 00 00 48 b0 00 ff 00 ff 53 00 00 ff 00 00 00 00 00 00 48 ff 00 00 ff 00 00 00 b0 48 00 ff 00 ff ff 48 b0 48 ff 00 b0 ff 00 00 b0 ff 3c 00 00 48 ff b0 00 48 48 ff 48 b0 00 00 ff ff 48 b0 48 ff 00 48 48 ff b0 00 ff 00 00 00 ff 00 00 b0 ff 48 b0 00 53 00 00 ff b0 00 00 b0 00 ff 48 ff 48 ff 00 b0 00 ff ff ff 00 00 00 00 00 b0 00 00 ff b0 00 ff 48 48 ff 00 48 00 ff b0 00 b0 48 ff 48 00 00 53 00 53 70 ff ff 00 ff 48 ff ff 00 48 00 ff ff ff ff 00 00 00 00 00 b0 00 b0 00 00 00 00 00 b0 ff 00 48 00 48 ff ff 00 ff 48 ff ff ff ff 00 b0 ff ff b0 00 00 00 ff b0 00 ff 00 ff ff b0 ff 00 00 ff 00 48 00 48 ff 48 00 00 48 48 00 48 b0 00 ff 53 00 ff ff ff 48 00 48 48 b0 ff 00 48 ff ff ff 00 48 ff 00 ff 00 b0 00 00 48 ff 48 48 00 48 b0 00 b0 00 00 ff b0 ff 48 53 00 00 b0 00 ff ff 00 b0 ff b0 48 00 48 48 ff 48 48 48 ff ff ff ff ff 00 00 ff 00 ff ff b0 00 ff 00 00 48 ff 00 b0 00 ff ff 48 b0 48 00 00 ff 00 00 00 00 70 b0 48 00 00 48 b0 00 b0 ff 48 00 ff 53 00 ff ff 48 48 ff ff 48 b0 00 00 ff 48 00 48 b0 ff ff 00 48 ff ff 00 48 00 ff 00 48 ff 00 00 53 00 00 00 00 53 00 b0 48 ff 00 ff b0 00 b0 ff ff 00 ff 48 ff 00 48 48 48 ff 48 be 48 48 00 00 ff 00 00 ff 00 48 00 b0 00 00 00 00 00 ff 48 00 00 ff 48 ff ff 00 ff 48 b0 70 ff ff 48 00 b0 00 53 00 ff ff 00 00 48 b0 00 ff ff 00 00 48 00 53 48 b0 ff 00 00 ff b0 48 00 48 48 00 48 b0 48 00 48 00 00 48 00 00 b0 00 00 ff ff b0 ff 3c 00 53 ff 00 00 00 b0 53 ff 00 00 00 00 ff 48 ff 48 00 ff 00 ff 00 00 00 00 ff ff 00 ff 00 ff ff 00 00 b0 00 00 70 00 00 00 00 48 b0 00 00 ff ff 48 ff ff 00 00 b0 00 00 00 ff 00 00 48 00 ff 00 00 00 48 48 b0 48 ff ff 00 b0 ff 00 ff 00 00 48 ff 00 ff b0 48 48 48 ff ff 48 b0 00 b0 00 ff ff ff 00 ff 00 00 48 00 ff 00 00 00 00 b0 00 ff 00 00 00 00 ff 00 00 00 00 00 00 ff 00 48 b0 00 ff 00 00 ff 48 00 53 00 00 48 ff ff 00 48 00 53 48 48 ff ff 48 48 ff ff 00 b0 00 b0 00 00 ff 48 ff b0 00 b0 00 ff ff 00 b0 00 ff 00 ff 00 ff 00 00 48 b0 00 00 00 48 b0 00 00 00 ff b0 ff 00 00 00 00 00 48 48 b0 ff 48 00 00 ff ff b0 00 48 00 ff 48 ff b0 00 48 ff b0 ff 00 b0 48 ff ff 48 53 48 b0 48 48 48 00 ff ff 00 ff ff b0 00 b0 48 00 b0 00 b0 ff 00 00 48 00 b0 48 00 00 00 53 ff b0 48 ff 00 ff ff 00 00 ff 00 00 00 b0 00 ff ff ff 00 b0 ff 48 00 ff 00 00 ff ff 00 00 00 00 00 ff ff ff ff 00 00 00 00 00 b0 ff 48 00 00 ff 00 00 00 00 48 00 ff ff ff 00 ff 48 00 00 48 00 ff 00 53 48 00 48 00 48 b0 00 00 ff b0 00 b0 00 00 00 48 48 00 48 48 be ff 00 b0 00 b0 48 ff ff 48 ff 00 48 00 48 00 00 ff ff ff ff 48 00 00 48 ff 00 53 00 b0 48 48 48 00 00 00 ff ff 00 ff 00 b0 00 ff 00 ff 48 00 48 53 02 00 00 00 00 ff 00 53 00 48 b0 48 48 00 ff 00 48 ff 48 ff 00 00 53 00 ff 48 00 b0 ff 48 48 ff 48 00 00 48 48 00 00 ff b0 ff 48 00 00 48 ff 48 ff 53 00 00 00 00 00 ff ff 48 48 ff 00 00 53 ff b0 48 b0 ff 48 00 48 00 00 48 00 00 48 00 00 70 00 ff 00 53 48 00 ff 53 00 b0 00 53 00 00 00 ff 53 00 00 ff
*/
