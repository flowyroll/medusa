.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rsi
lea addresses_D_ht+0x1b8b2, %rsi
nop
nop
cmp $21927, %r15
mov (%rsi), %ebp
nop
nop
nop
nop
xor $16123, %r13
pop %rsi
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rsi

// Load
lea addresses_WT+0x1beb2, %r11
nop
nop
nop
nop
sub $3107, %rsi
movb (%r11), %r14b
nop
nop
nop
nop
nop
xor $64957, %r14

// Store
lea addresses_UC+0x1a4b2, %rbp
nop
nop
nop
nop
nop
sub %r10, %r10
movw $0x5152, (%rbp)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_RW+0x17f76, %rbp
nop
and $64362, %r11
movl $0x51525354, (%rbp)
nop
nop
add %r11, %r11

// Store
lea addresses_PSE+0xee72, %r10
nop
cmp $6188, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r10)
xor $44797, %rbp

// Load
mov $0x72ee0c0000000ab2, %r14
nop
add $44771, %r13
vmovaps (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
add $55391, %r14

// Faulty Load
lea addresses_PSE+0x64b2, %rbp
nop
nop
nop
nop
nop
and %r10, %r10
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 287}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
