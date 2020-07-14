.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1172a, %r12
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%r12)
nop
dec %r14

// Store
lea addresses_WC+0x742a, %r14
and %r15, %r15
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
add %r14, %r14

// Load
lea addresses_normal+0xf4ea, %rbx
nop
nop
cmp %r11, %r11
mov (%rbx), %r15
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_A+0x734a, %r15
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r15)
and %r11, %r11

// Store
lea addresses_US+0x1c8e2, %r13
nop
nop
and $13206, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
nop
nop
add $44570, %rdi

// Load
lea addresses_UC+0xa12a, %r12
nop
nop
xor $6283, %r11
vmovaps (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
nop
inc %r12

// REPMOV
lea addresses_normal+0xbd2a, %rsi
lea addresses_US+0x7aa, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $8, %rcx
rep movsq
nop
nop
nop
nop
nop
add $10580, %r14

// Faulty Load
lea addresses_RW+0x612a, %rbx
nop
nop
and %r14, %r14
mov (%rbx), %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'64': 1}
64
*/
