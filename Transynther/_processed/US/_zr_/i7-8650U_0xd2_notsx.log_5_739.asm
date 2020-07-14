.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b8ff, %r8
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
nop
nop
add $52463, %rsi
lea addresses_WT_ht+0x4e7f, %rsi
lea addresses_WT_ht+0x507f, %rdi
clflush (%rsi)
nop
nop
and $40390, %rax
mov $92, %rcx
rep movsw
nop
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbp
push %rsi

// Faulty Load
lea addresses_US+0x13c7f, %rbp
nop
nop
nop
sub %r15, %r15
movb (%rbp), %r9b
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
