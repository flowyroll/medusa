.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rdi
push %rsi
lea addresses_WT_ht+0x1bc29, %r12
nop
nop
nop
nop
nop
dec %rsi
mov (%r12), %r11w
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x12939, %r11
nop
nop
nop
inc %rdi
mov (%r11), %esi
nop
nop
nop
nop
nop
add $52826, %rsi
pop %rsi
pop %rdi
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbx
push %rcx
push %rdx

// Load
lea addresses_RW+0x17151, %r9
nop
nop
nop
sub %rbx, %rbx
movb (%r9), %cl
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
mov $0xa19, %r14
nop
nop
nop
nop
xor %r9, %r9
movb (%r14), %dl
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'00': 70}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
