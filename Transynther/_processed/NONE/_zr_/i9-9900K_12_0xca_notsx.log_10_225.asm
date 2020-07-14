.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx

// Store
lea addresses_WT+0x85a3, %r13
cmp $5727, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
sub $16034, %r10

// Store
lea addresses_UC+0x3c13, %r14
nop
nop
nop
dec %r10
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
mov $0x7828750000000fd9, %rcx
nop
nop
nop
nop
nop
add %r12, %r12
movb $0x51, (%rcx)
nop
nop
nop
sub $49483, %r14

// Faulty Load
lea addresses_A+0x3a3, %r14
nop
nop
sub %r12, %r12
mov (%r14), %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
