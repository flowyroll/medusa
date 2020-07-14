.global s_prepare_buffers
s_prepare_buffers:
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x187af, %rsi
lea addresses_D_ht+0x175c5, %rdi
nop
nop
sub %rbp, %rbp
mov $12, %rcx
rep movsw
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
mov $0x490ad00000000a65, %rbx
clflush (%rbx)
nop
xor %rsi, %rsi
movb $0x51, (%rbx)
nop
cmp %r11, %r11

// Store
lea addresses_WT+0x140e5, %rax
nop
nop
nop
nop
nop
inc %rbp
movb $0x51, (%rax)
nop
nop
nop
and $22402, %r11

// Faulty Load
mov $0x490ad00000000a65, %r14
add %rbp, %rbp
mov (%r14), %r11d
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'51': 15912, '00': 97, '6d': 5820}
51 51 51 51 51 6d 51 51 51 6d 51 6d 51 51 51 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 6d 51 6d 00 51 6d 51 6d 51 51 51 6d 6d 6d 51 6d 51 51 51 6d 6d 51 51 6d 51 6d 51 51 51 51 51 6d 6d 51 51 51 51 51 51 51 00 6d 6d 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 51 6d 51 51 51 51 51 6d 6d 51 51 51 51 51 51 6d 51 51 51 51 6d 51 51 51 51 6d 6d 6d 6d 51 51 6d 51 6d 6d 51 51 6d 51 6d 51 51 51 51 6d 51 6d 51 51 51 6d 51 6d 51 6d 51 51 6d 51 51 51 51 6d 6d 6d 51 51 51 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 6d 51 6d 51 6d 6d 51 51 51 51 51 51 51 6d 51 6d 51 6d 51 51 51 6d 51 51 51 51 6d 51 6d 6d 6d 51 51 51 51 51 51 51 6d 51 6d 51 51 51 51 6d 51 6d 6d 51 51 6d 51 6d 51 6d 6d 6d 6d 51 51 6d 51 51 51 6d 6d 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 6d 51 6d 51 51 6d 51 51 6d 51 6d 51 51 6d 51 6d 51 51 51 51 51 51 51 51 51 6d 51 51 6d 6d 51 51 6d 51 51 51 51 51 51 51 51 51 6d 51 51 51 51 51 6d 51 51 51 51 51 6d 51 6d 51 51 6d 51 51 6d 51 51 51 51 51 51 51 6d 6d 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 6d 51 51 51 6d 51 51 51 51 51 6d 51 6d 51 6d 51 6d 6d 51 6d 51 51 51 6d 51 51 6d 51 6d 51 51 6d 51 51 51 51 51 51 6d 51 51 51 6d 6d 51 51 51 6d 51 51 51 6d 51 51 51 51 51 51 51 6d 6d 51 51 51 51 51 51 51 51 6d 6d 6d 51 6d 51 6d 6d 51 51 51 51 51 51 51 6d 51 6d 51 00 51 51 51 51 51 6d 6d 51 51 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 6d 6d 51 6d 51 51 6d 6d 6d 51 51 51 51 51 51 51 6d 51 51 00 51 6d 51 51 51 51 6d 6d 51 51 51 51 6d 51 51 51 51 51 6d 6d 51 51 51 6d 51 51 51 51 51 6d 51 6d 51 51 6d 51 51 51 51 51 51 51 6d 51 51 51 6d 51 51 6d 51 51 51 51 6d 51 51 51 51 51 51 51 6d 51 51 51 51 6d 6d 51 51 51 51 51 51 51 51 6d 51 51 6d 51 51 6d 6d 6d 51 51 51 51 6d 51 51 51 6d 51 6d 51 51 6d 6d 51 51 6d 51 51 51 51 51 6d 51 51 51 51 51 6d 6d 51 51 51 51 51 51 51 6d 51 51 51 51 6d 51 6d 51 51 6d 51 6d 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 6d 51 6d 51 51 51 51 6d 51 51 6d 6d 51 51 51 6d 51 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 51 6d 51 51 51 51 51 6d 51 6d 51 6d 51 51 51 51 51 6d 51 51 51 6d 51 51 6d 51 6d 6d 51 51 51 51 51 51 6d 51 51 51 51 51 6d 51 51 6d 51 51 51 51 51 6d 51 51 51 51 51 00 51 51 51 6d 51 51 6d 51 51 51 6d 51 6d 6d 6d 51 51 6d 51 51 51 51 51 6d 51 51 6d 6d 6d 51 51 51 51 51 51 51 6d 51 6d 6d 51 51 51 51 51 6d 51 51 51 51 51 51 51 51 51 6d 51 51 51 6d 51 51 51 6d 6d 6d 51 51 51 51 6d 51 51 51 6d 6d 6d 51 6d 6d 6d 51 6d 51 51 51 51 6d 6d 51 6d 6d 51 6d 51 51 6d 51 51 51 6d 6d 51 51 51 6d 51 6d 51 51 51 51 51 6d 6d 51 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 6d 51 6d 6d 51 6d 51 51 51 51 6d 51 6d 51 51 6d 51 51 51 51 51 51 51 6d 51 51 51 51 6d 51 6d 6d 51 6d 51 6d 6d 51 51 51 51 51 51 51 51 6d 51 51 51 6d 51 51 51 51 51 51 6d 6d 51 51 51 51 51 51 51 51 51 51 51 6d 6d 51 51 51 6d 6d 51 51 51 6d 51 51 51 6d 51 6d 51 00 51 6d 51 51 6d 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 6d 6d 51 6d 51 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 6d 51 51 51 51 6d 51 51 51 51 51 51 51 51 51 51
*/
