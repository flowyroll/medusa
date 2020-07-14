.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbp
push %rbx
push %rdi
lea addresses_A_ht+0xffec, %rbx
clflush (%rbx)
nop
nop
nop
sub $48960, %r9
movb (%rbx), %r10b
nop
dec %rdi
lea addresses_D_ht+0x950c, %r9
nop
nop
nop
nop
nop
cmp $21791, %rdi
movb (%r9), %bl
nop
nop
nop
nop
add $8961, %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rdi
push %rdx

// Store
lea addresses_PSE+0x1e98, %r11
nop
and $47985, %r13
movb $0x51, (%r11)
nop
nop
nop
add $29974, %r13

// Store
lea addresses_PSE+0x198c, %r13
nop
nop
nop
nop
nop
cmp $58633, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%r13)
nop
nop
nop
nop
sub $24380, %r11

// Store
lea addresses_UC+0x1520c, %rdx
nop
nop
nop
nop
sub $604, %r10
movw $0x5152, (%rdx)
nop
dec %r12

// Store
mov $0xf4c, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rdi)
nop
cmp %r13, %r13

// Store
lea addresses_D+0x1248c, %r10
nop
nop
nop
nop
nop
sub $35292, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r10)
nop
nop
sub %rdi, %rdi

// Store
mov $0x6c9e43000000084c, %r11
clflush (%r11)
nop
nop
and $13124, %rdi
movw $0x5152, (%r11)

// Exception!!!
nop
nop
nop
mov (0), %r12
nop
nop
nop
nop
nop
add $65424, %r11

// Faulty Load
mov $0x6c9e43000000084c, %r8
nop
inc %r13
mov (%r8), %r12d
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdx
pop %rdi
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 2235, '52': 19594}
52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 52 52 52 52 00 52 00 00 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 00 52 52 52 52 00 00 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 00 52 00 52 00 52 52 00 52 00 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 52 00 52 00 52 52 52 52 52 00 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52
*/
