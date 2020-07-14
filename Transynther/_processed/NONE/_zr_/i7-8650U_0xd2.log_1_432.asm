.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0xd203, %rsi
lea addresses_WT+0x7073, %rdi
nop
nop
xor $62358, %r15
mov $106, %rcx
rep movsb
nop
nop
nop
xor $2480, %rax

// Faulty Load
lea addresses_WT+0x1eb33, %rax
nop
nop
add $17241, %r8
movb (%rax), %r15b
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 1}
00
*/
