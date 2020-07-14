.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_UC+0x8673, %rbp
nop
nop
nop
nop
nop
and $37342, %r9
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
inc %r9

// Store
mov $0xa53, %r13
nop
nop
nop
nop
nop
xor $6554, %rcx
movb $0x51, (%r13)
nop
nop
nop
and $8745, %r9

// Store
mov $0x279ed20000000833, %r9
nop
nop
nop
and $27256, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r9)
nop
nop
xor $11782, %rcx

// Store
lea addresses_UC+0xeb3b, %r9
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
and $50161, %rbx

// Store
lea addresses_WC+0x833, %r15
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r15)
nop
nop
sub $55183, %rbx

// Load
lea addresses_UC+0xb833, %r15
nop
nop
cmp $27922, %rbx
mov (%r15), %r9d
nop
xor %r15, %r15

// Load
lea addresses_UC+0xe103, %rcx
nop
cmp $40643, %r9
mov (%rcx), %r15w
nop
and %r13, %r13

// Faulty Load
lea addresses_US+0x5833, %r15
nop
nop
nop
nop
add %rbx, %rbx
movb (%r15), %cl
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'54': 81}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
