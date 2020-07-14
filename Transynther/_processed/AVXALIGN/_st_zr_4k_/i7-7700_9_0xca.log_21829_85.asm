.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rdi
push %rsi
lea addresses_A_ht+0x1e1eb, %rbp
clflush (%rbp)
nop
nop
inc %r9
mov (%rbp), %r13w
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1a233, %r13
nop
nop
nop
nop
nop
add $2900, %r15
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x181f3, %r8
nop
xor %rdi, %rdi
mov (%r8), %r9w
nop
nop
nop
nop
nop
and $20740, %r13
lea addresses_A_ht+0xd1f3, %rsi
nop
nop
nop
nop
xor %rbp, %rbp
movb $0x61, (%rsi)
and $46964, %rbp
lea addresses_A_ht+0xc9f3, %r9
clflush (%r9)
nop
nop
inc %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xe1f3, %r8
nop
nop
nop
nop
nop
lfence
mov (%r8), %r13
nop
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0x13ef3, %rsi
nop
nop
nop
sub %rbp, %rbp
movw $0x5152, (%rsi)
nop
nop
nop
nop
sub $41053, %rbp

// Store
mov $0x820, %rdi
nop
nop
nop
add $6817, %rsi
movl $0x51525354, (%rdi)
add $10296, %rdi

// Store
mov $0x4d72630000000d53, %rdi
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%rdi)
nop
nop
cmp %r8, %r8

// Store
lea addresses_A+0xbe1b, %r10
clflush (%r10)
nop
xor %rbp, %rbp
movb $0x51, (%r10)
inc %rbp

// Store
lea addresses_PSE+0x1d1f3, %rbp
nop
nop
xor $19883, %rdi
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_UC+0x1884b, %r8
nop
nop
and $12740, %rdi
movb $0x51, (%r8)
nop
nop
cmp $59201, %rdx

// Faulty Load
mov $0x7e8e9f00000001f3, %r10
nop
nop
nop
sub %r8, %r8
mov (%r10), %r15w
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 3425, '51': 18404}
51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 00 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 00 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 51 51 00 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 00 51 51 00 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 00 51 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 00 51 51 51 00 51 51 51 00 51 51 51 51 00 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 00 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 00 51 51 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51
*/
