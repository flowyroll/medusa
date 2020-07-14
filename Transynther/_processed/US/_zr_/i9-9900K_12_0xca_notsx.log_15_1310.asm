.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1c254, %r9
nop
nop
nop
nop
and $11930, %r13
movb (%r9), %r8b
add $31127, %r13

// Load
lea addresses_A+0x7a54, %rdx
nop
nop
nop
nop
dec %r15
mov (%rdx), %ebp
xor $12691, %r10

// REPMOV
lea addresses_A+0xe054, %rsi
lea addresses_A+0xb254, %rdi
nop
nop
sub %r8, %r8
mov $36, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_US+0x1254, %r15
nop
nop
nop
nop
nop
xor $206, %r9
mov (%r15), %si
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
