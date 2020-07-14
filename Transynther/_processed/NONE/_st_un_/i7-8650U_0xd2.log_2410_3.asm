.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rdi
push %rdx

// Faulty Load
lea addresses_WC+0xa4bb, %r14
clflush (%r14)
nop
nop
nop
add $53584, %r12
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'ff': 1919, '30': 477, '60': 14}
ff ff ff ff ff ff ff ff 30 ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff ff ff ff ff ff ff ff 30 ff ff 30 30 30 ff ff ff ff ff ff ff ff ff ff 30 ff ff ff ff ff 30 30 ff ff ff ff ff ff ff ff ff 30 ff ff 30 30 ff ff 30 ff 30 ff ff ff 30 ff ff 30 ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff 30 ff 30 30 ff ff 30 30 ff 30 60 ff ff ff ff 30 ff ff ff 30 ff 30 ff ff ff ff ff ff ff 30 ff 30 30 ff ff ff ff ff ff ff ff ff 30 ff ff 30 ff ff 30 ff 30 ff ff 30 30 ff ff ff ff ff ff ff ff 30 ff ff ff ff ff 30 ff ff ff ff 30 ff ff ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff ff ff ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff 30 ff ff 30 ff ff ff ff ff 30 30 ff ff ff ff ff ff 30 ff ff ff ff ff ff ff 30 ff ff ff ff 30 30 30 ff ff ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff ff ff ff ff ff ff 30 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 60 ff ff ff ff ff ff ff 30 ff 30 30 ff ff ff ff 30 30 30 30 ff ff ff ff ff ff 30 ff ff 30 ff 30 30 30 ff ff ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff 30 ff ff ff 30 ff ff 30 30 ff ff ff ff ff ff ff ff 30 ff ff ff ff ff ff 30 ff ff ff ff ff ff ff ff ff 30 ff ff 30 ff ff ff ff ff ff ff ff 30 30 ff 30 ff ff ff ff ff ff ff ff ff 30 ff ff ff 30 ff 30 ff ff 30 ff ff ff ff ff 30 ff ff 30 ff ff ff ff ff ff ff ff ff 30 30 ff 30 ff 30 30 30 60 ff ff 30 ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff ff ff ff ff ff ff ff ff ff ff 30 30 ff ff ff ff ff 30 60 60 ff ff ff ff ff ff ff ff ff 60 30 ff ff ff ff ff 30 ff ff ff ff 60 30 30 ff ff 30 30 30 ff ff ff ff ff ff 30 ff ff 30 30 ff ff ff ff ff ff 30 30 ff ff ff 30 30 ff 30 ff ff ff ff ff ff 30 ff ff 30 ff 30 ff ff ff ff 30 ff ff ff 30 ff ff 30 ff ff ff ff ff ff ff ff ff ff ff 30 ff 30 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff 30 ff ff ff ff ff ff 60 ff ff ff ff ff ff ff ff ff ff ff ff 30 ff ff 30 ff 30 ff ff ff ff 30 ff ff ff 30 30 30 ff ff ff ff ff 30 ff 30 30 ff ff ff ff ff ff ff ff ff ff 30 30 ff ff ff ff ff ff ff ff ff ff ff ff 30 30 ff ff ff ff ff ff ff ff 30 30 ff ff ff ff ff ff ff ff ff ff 30 ff ff 30 ff ff ff ff ff ff 30 ff ff ff 30 ff 30 ff ff 30 30 ff ff ff 30 ff ff 30 ff 30 ff ff ff ff ff ff 30 60 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff 30 ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff ff ff ff ff ff 30 30 ff ff 30 ff ff 30 ff 30 30 ff ff ff ff ff 30 30 ff ff ff 30 30 30 ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff 30 30 30 ff ff ff 30 ff 30 30 ff ff 30 ff ff 30 ff ff ff ff ff 30 ff ff ff ff ff 30 ff ff 60 ff ff ff ff ff ff 30 30 30 ff ff 30 ff ff ff 30 ff ff ff 30 ff 30 ff ff 30 ff ff ff 30 ff ff ff ff ff ff ff ff 30 ff ff ff ff ff 30 ff ff ff ff ff ff ff ff ff ff 30 ff 30 ff ff ff ff 30 ff ff ff ff ff 30 ff ff ff 30 ff ff ff ff ff ff ff ff 30 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 30 ff
*/
