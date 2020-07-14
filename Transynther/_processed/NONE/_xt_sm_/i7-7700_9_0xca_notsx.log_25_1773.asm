.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rdx

// Store
mov $0xfff, %r11
nop
nop
nop
nop
nop
inc %r13
movw $0x5152, (%r11)
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_PSE+0x3d7f, %rdx
nop
dec %r15
movb $0x51, (%rdx)
xor $15550, %r13

// Load
lea addresses_PSE+0x885f, %r9
nop
nop
nop
nop
nop
and %r15, %r15
mov (%r9), %edx
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_PSE+0x3d7f, %r15
nop
nop
nop
nop
cmp %r13, %r13
movl $0x51525354, (%r15)
and %r11, %r11

// Store
lea addresses_WT+0x1715b, %r15
nop
nop
nop
nop
and $12023, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%r15)
xor $10929, %r13

// Load
lea addresses_WC+0x149a6, %r11
nop
nop
nop
add %rdx, %rdx
movups (%r11), %xmm4
vpextrq $0, %xmm4, %r8
nop
cmp $9979, %rbx

// Store
lea addresses_WC+0x1957f, %r8
cmp $6990, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r8)

// Exception!!!
nop
nop
mov (0), %r15
and %r11, %r11

// Load
lea addresses_WT+0x487f, %r13
nop
nop
nop
nop
nop
cmp %r15, %r15
movups (%r13), %xmm3
vpextrq $1, %xmm3, %r9
nop
add $4070, %r11

// Store
mov $0xe7f, %r13
nop
and %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movaps %xmm2, (%r13)
and %r8, %r8

// Store
lea addresses_WC+0x357f, %r8
nop
nop
nop
and $44991, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%r8)
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x3d7f, %r8
nop
nop
nop
nop
nop
dec %rbx
movb (%r8), %r13b
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'54': 25}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
