.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1add6, %rsi
lea addresses_WC_ht+0x185e6, %rdi
nop
nop
nop
and $16232, %r15
mov $104, %rcx
rep movsq
nop
nop
xor $27897, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbp
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x1e5d6, %r13
nop
nop
nop
nop
lfence
mov (%r13), %edx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'00': 64}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
