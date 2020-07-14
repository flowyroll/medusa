.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16762, %rsi
nop
nop
inc %r13
movb $0x61, (%rsi)
nop
nop
add $56338, %r14
lea addresses_WT_ht+0x386, %rsi
lea addresses_WT_ht+0xd96, %rdi
clflush (%rsi)
nop
nop
add $35609, %rbx
mov $120, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1c716, %rsi
mov $0x7540080000000516, %rdi
nop
dec %r13
mov $107, %rcx
rep movsb
add %rdi, %rdi

// Faulty Load
lea addresses_A+0x1c716, %rdi
nop
sub %rbp, %rbp
mov (%rdi), %cx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_NC', 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'00': 3}
00 00 00
*/
