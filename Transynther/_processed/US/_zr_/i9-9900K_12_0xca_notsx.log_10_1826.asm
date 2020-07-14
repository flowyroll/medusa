.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x132da, %rsi
lea addresses_A_ht+0x2e9a, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $36, %rcx
rep movsl
nop
nop
add $57325, %r12
lea addresses_D_ht+0x34da, %rsi
clflush (%rsi)
nop
nop
nop
xor $32451, %rdi
movb (%rsi), %cl
and $7458, %r12
lea addresses_WC_ht+0x1a0dc, %rax
nop
nop
and %r9, %r9
mov (%rax), %cx
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rcx

// Faulty Load
lea addresses_US+0x15fda, %r13
nop
nop
nop
inc %r10
mov (%r13), %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
