.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x1149b, %r13
nop
nop
sub %r9, %r9
mov (%r13), %rdx
inc %r13

// Store
lea addresses_WC+0x7a9b, %rcx
nop
dec %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
cmp $15544, %r13

// Faulty Load
lea addresses_US+0xb49b, %rdi
nop
nop
nop
and %r8, %r8
mov (%rdi), %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'00': 1}
00
*/
