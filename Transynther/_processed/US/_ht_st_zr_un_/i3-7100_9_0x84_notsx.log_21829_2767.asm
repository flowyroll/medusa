.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rdi
lea addresses_normal_ht+0x181bd, %r13
nop
nop
dec %r9
mov (%r13), %r14
nop
nop
nop
nop
and $64889, %rdi
pop %rdi
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rdi

// Load
lea addresses_D+0xf9bd, %rbx
and %r8, %r8
mov (%rbx), %r15d
nop
nop
nop
xor $22515, %r8

// Store
lea addresses_D+0x723d, %rbp
nop
nop
xor %r11, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
cmp %rbp, %rbp

// Store
mov $0x9ee, %rbp
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rbp)
xor %r11, %r11

// Store
lea addresses_A+0x19dbd, %rbp
nop
nop
nop
nop
nop
add $16404, %r14
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
nop
dec %rdi

// Store
lea addresses_D+0x1b39d, %r15
nop
cmp $22494, %rbp
movb $0x51, (%r15)
nop
nop
nop
cmp $45819, %r8

// Faulty Load
lea addresses_US+0xb9bd, %rbx
xor %r15, %r15
mov (%rbx), %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'60': 253, '1a': 3, '44': 1215, '67': 523, '9f': 91, '6d': 6, '50': 1677, '3c': 752, '36': 1, '46': 119, '00': 17183, 'c0': 6}
9f 00 00 50 00 00 00 67 00 00 67 00 00 00 00 00 00 00 44 00 00 50 00 00 9f 00 00 00 00 50 44 00 00 00 00 00 44 50 00 00 00 00 00 00 00 00 00 50 00 00 00 00 00 44 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 50 00 00 00 00 00 00 00 00 9f 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 50 00 00 00 00 44 00 46 50 00 00 00 67 00 50 00 3c 44 00 00 00 50 44 00 3c 00 00 3c 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00 50 00 00 00 50 00 00 3c 00 00 00 00 00 00 00 00 00 00 00 44 00 00 67 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 50 00 00 00 00 9f 00 44 50 00 00 00 00 44 00 00 3c 00 3c 00 3c 00 00 00 00 3c 00 00 00 00 00 00 00 00 00 00 3c 50 00 00 00 00 00 3c 00 00 3c 00 00 00 00 00 00 00 00 00 50 00 50 3c 00 00 00 00 60 00 00 00 00 00 00 50 00 00 50 00 00 00 00 00 00 50 00 00 00 00 00 50 00 00 46 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00 00 00 50 00 00 00 50 00 00 00 00 3c 00 00 3c 44 00 00 00 50 00 00 3c 00 00 00 00 00 00 00 3c 00 00 00 00 00 00 00 00 00 00 3c 00 00 50 00 50 00 00 00 50 00 00 00 50 00 00 00 00 50 50 00 00 00 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 67 44 00 00 00 00 00 00 00 9f 00 00 44 50 00 00 44 00 50 00 00 46 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 3c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 50 00 50 00 00 00 00 00 00 50 00 00 3c 50 00 00 00 3c 00 00 00 50 3c 46 00 50 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 50 00 00 60 50 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 50 3c 00 00 00 3c 00 00 00 50 00 00 00 00 00 00 3c 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 50 44 00 00 44 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 44 00 00 44 44 44 00 00 00 00 00 00 00 50 50 00 00 50 00 50 00 00 00 50 00 00 00 00 3c 00 00 00 00 00 3c 00 00 00 00 00 00 00 00 00 00 00 3c 50 00 00 00 3c 00 00 00 00 00 00 3c 00 00 00 00 00 00 3c 00 00 00 50 00 00 00 00 00 44 00 00 44 00 00 00 00 00 44 00 44 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 60 00 00 00 00 00 00 00 60 00 60 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 60 00 00 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 50 3c 44 00 00 44 00 00 00 00 00 6d 6d 00 00 00 00 44 00 44 00 00 00 00 6d 00 00 44 00 00 00 00 00 50 00 00 00 50 00 3c 00 00 00 00 00 50 44 44 00 00 00 00 00 67 00 67 67 46 44 00 00 50 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 67 00 00 44 00 00 00 00 50 67 44 44 50 50 44 00 67 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 67 6d 00 00 00 00 00 00 00 00 44 67 00 00 44 00 44 46 00 00 44 00 00 00 00 00 00 00 00 50 00 00 00 44 00 00 00 00 00 67 44 00 00 00 00 3c 67 44 00 00 00 00 00 00 00 00 00 1a 00 00 44 00 00 00 00 00 00 00 00 44 00 50 00 00 00 00
*/
