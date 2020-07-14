.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x18fb8, %rsi
lea addresses_WT_ht+0xa378, %rdi
sub %rax, %rax
mov $51, %rcx
rep movsq
nop
nop
nop
nop
cmp $26298, %rdi
lea addresses_UC_ht+0x7778, %rsi
lea addresses_UC_ht+0x132f8, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $95, %rcx
rep movsq
nop
nop
and %r13, %r13
lea addresses_A_ht+0x17578, %rsi
lea addresses_normal_ht+0x1ff0, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $73, %rcx
rep movsl
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x7ac0, %r13
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%r13)
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_normal+0x1eb78, %rcx
nop
nop
nop
nop
sub $7430, %rdx
mov (%rcx), %r15w
nop
dec %rcx

// Store
lea addresses_WT+0x10578, %rbx
nop
nop
nop
nop
nop
inc %r15
movl $0x51525354, (%rbx)
nop
nop
sub $26235, %rcx

// Store
lea addresses_UC+0xf378, %r12
dec %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%r12)
add $15501, %r12

// Load
lea addresses_PSE+0xbdc8, %r12
cmp %rbx, %rbx
mov (%r12), %rdx
nop
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_US+0x13b78, %rcx
nop
nop
nop
nop
add $30445, %rdx
mov (%rcx), %bx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': True, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 27}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
