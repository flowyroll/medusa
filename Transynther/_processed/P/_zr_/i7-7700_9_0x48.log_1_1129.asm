.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
lea addresses_WT_ht+0x3775, %r13
sub $28437, %r9
movups (%r13), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
add $28681, %r8
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp

// Faulty Load
mov $0x835, %rax
nop
nop
nop
cmp $3100, %r14
movups (%rax), %xmm2
vpextrq $0, %xmm2, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'00': 1}
00
*/
