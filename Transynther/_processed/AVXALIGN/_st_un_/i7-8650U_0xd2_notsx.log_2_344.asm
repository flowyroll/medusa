.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x14e1e, %rbp
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rbp), %r13
nop
nop
nop
inc %r12

// REPMOV
lea addresses_PSE+0x1651a, %rsi
lea addresses_A+0x1840a, %rdi
clflush (%rsi)
nop
and $57508, %r14
mov $89, %rcx
rep movsl
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_D+0x591a, %rcx
nop
nop
nop
nop
cmp $36855, %r13
vmovaps (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'90': 1, '33': 1}
90 33
*/
