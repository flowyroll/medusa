.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_A+0x3f4e, %r12
nop
nop
nop
nop
nop
cmp $49833, %r8
mov (%r12), %r15w
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 6}
00 00 00 00 00 00
*/
