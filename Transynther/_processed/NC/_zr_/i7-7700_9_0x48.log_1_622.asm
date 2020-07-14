.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbx
lea addresses_WT_ht+0x41c, %r11
nop
lfence
mov (%r11), %bx
nop
nop
sub $22922, %r10
pop %rbx
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x12d02, %rsi
lea addresses_D+0x1111c, %rdi
nop
nop
nop
sub $28957, %r14
mov $31, %rcx
rep movsq
dec %r14

// Faulty Load
mov $0x4bb3fb000000065c, %rax
nop
xor %rcx, %rcx
movb (%rax), %r15b
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': True, 'NT': False}}
{'00': 1}
00
*/
