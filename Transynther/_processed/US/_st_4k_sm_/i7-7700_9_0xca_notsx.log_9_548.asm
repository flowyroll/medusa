.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xa1f9, %r9
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%r9)
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %r9
push %rdi

// Store
lea addresses_normal+0x3879, %r11
xor $23083, %r8
movb $0x51, (%r11)
nop
add $32682, %r11

// Store
lea addresses_normal+0x1079, %r9
nop
nop
sub %r10, %r10
movw $0x5152, (%r9)
nop
nop
nop
nop
and $43532, %r10

// Store
mov $0xe32520000000c39, %r9
nop
nop
nop
and %r14, %r14
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
xor $53211, %r11

// Store
lea addresses_PSE+0x1ca9, %r9
nop
nop
nop
and $44128, %r14
movw $0x5152, (%r9)
nop
add $41766, %r15

// Store
lea addresses_US+0x19079, %r14
nop
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%r14)
nop
nop
sub $8891, %r14

// Faulty Load
lea addresses_US+0x19079, %r9
nop
nop
nop
nop
inc %r14
movb (%r9), %r15b
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'52': 9}
52 52 52 52 52 52 52 52 52
*/
