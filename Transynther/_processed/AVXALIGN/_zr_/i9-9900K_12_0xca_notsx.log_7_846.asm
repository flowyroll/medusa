.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdx

// Store
lea addresses_D+0x1fd9c, %rcx
add %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovntdq %ymm6, (%rcx)
cmp $60185, %r10

// Store
lea addresses_UC+0x91fc, %rcx
nop
add %r10, %r10
movl $0x51525354, (%rcx)
nop
inc %r14

// Store
lea addresses_normal+0x112a0, %r10
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
nop
nop
nop
add $20037, %r12

// Load
mov $0x44497b00000004bc, %rbp
nop
sub %r13, %r13
mov (%rbp), %edx
nop
nop
nop
nop
nop
and %rdx, %rdx

// Load
mov $0x6b4f250000000e54, %r13
nop
nop
nop
nop
nop
add $54346, %r14
mov (%r13), %rcx
nop
inc %rcx

// Faulty Load
mov $0x44497b00000004bc, %rcx
nop
nop
nop
nop
nop
and $7656, %r13
movb (%rcx), %r10b
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 7}
00 00 00 00 00 00 00
*/
