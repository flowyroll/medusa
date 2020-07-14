.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1107c, %rsi
lea addresses_D_ht+0x13628, %rdi
clflush (%rdi)
nop
nop
nop
and $28583, %r9
mov $60, %rcx
rep movsb
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rdi

// Load
mov $0x1ee8700000000988, %r12
nop
cmp %r15, %r15
vmovaps (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
dec %r14

// Store
lea addresses_US+0x1c877, %r14
cmp %rbp, %rbp
movw $0x5152, (%r14)
nop
nop
nop
nop
inc %r15

// Store
lea addresses_WT+0x131b0, %r10
nop
nop
and %r14, %r14
movw $0x5152, (%r10)
sub $53924, %rbp

// Store
lea addresses_WC+0x7708, %r13
add $397, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
nop
dec %r13

// Store
lea addresses_WT+0x14fa8, %r10
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
sub $18216, %rbp

// Faulty Load
lea addresses_WC+0x7208, %r10
nop
add $30023, %r12
mov (%r10), %r13w
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'00': 4}
00 00 00 00
*/
