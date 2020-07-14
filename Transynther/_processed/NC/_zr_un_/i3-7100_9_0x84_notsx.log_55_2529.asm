.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rdi
lea addresses_normal_ht+0x8ec7, %r15
nop
nop
nop
inc %r9
mov (%r15), %edi
nop
nop
nop
cmp $55308, %r13
pop %rdi
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi

// Faulty Load
mov $0x7825ef0000000423, %r13
dec %rax
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'60': 23, '00': 8, '96': 23, '06': 1}
06 00 00 96 96 60 60 60 96 96 96 60 60 96 00 00 60 60 60 60 60 96 96 96 60 60 00 60 96 96 60 96 60 60 96 60 96 60 60 96 96 00 00 96 96 60 96 60 96 96 96 00 60 96 60
*/
