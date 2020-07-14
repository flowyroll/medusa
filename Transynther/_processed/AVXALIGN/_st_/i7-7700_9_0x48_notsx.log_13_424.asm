.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rdi

// Store
mov $0x2a98110000000e36, %r8
clflush (%r8)
and %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movntdq %xmm6, (%r8)
nop
nop
xor $43530, %r8

// Faulty Load
lea addresses_normal+0x5c76, %r14
nop
nop
xor $35349, %rax
movb (%r14), %r12b
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'34': 13}
34 34 34 34 34 34 34 34 34 34 34 34 34
*/
