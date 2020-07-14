.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2dfd, %rsi
lea addresses_D_ht+0x207d, %rdi
dec %r12
mov $45, %rcx
rep movsb
cmp $7952, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rdx

// Faulty Load
lea addresses_A+0x1b59d, %r14
nop
nop
cmp %rdx, %rdx
vmovntdqa (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'60': 6, '46': 1}
60 60 46 60 60 60 60
*/
