.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x84ff, %r10
clflush (%r10)
sub %r13, %r13
movl $0x51525354, (%r10)
dec %r13

// REPMOV
lea addresses_US+0x8237, %rsi
mov $0x6ff, %rdi
nop
nop
inc %rdx
mov $6, %rcx
rep movsq
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_PSE+0xdcff, %r10
sub $51786, %r14
movb (%r10), %r13b
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_US', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_P', 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'33': 6}
33 33 33 33 33 33
*/
