.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rsi

// Store
mov $0x14f4550000000d64, %r12
nop
nop
and $55529, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
nop
and $43326, %r12

// Faulty Load
lea addresses_WT+0x19364, %r10
add %r15, %r15
mov (%r10), %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'39': 6}
39 39 39 39 39 39
*/
