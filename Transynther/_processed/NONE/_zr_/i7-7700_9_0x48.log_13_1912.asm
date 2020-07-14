.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbx
push %rcx
lea addresses_WC_ht+0xe78d, %r13
nop
nop
nop
nop
nop
cmp $27918, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
and $27033, %r15
pop %rcx
pop %rbx
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1989b, %rsi
lea addresses_PSE+0x120d, %rdi
nop
nop
inc %rax
mov $24, %rcx
rep movsb
nop
nop
cmp $50902, %r14

// Faulty Load
lea addresses_WC+0xc78d, %rsi
nop
nop
nop
and %r8, %r8
movb (%rsi), %cl
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
