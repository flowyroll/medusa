.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x1c196, %r11
nop
nop
nop
nop
sub $19546, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r11)
nop
nop
dec %r11

// REPMOV
lea addresses_normal+0x1c96, %rsi
lea addresses_normal+0x1f76, %rdi
nop
nop
nop
and %r15, %r15
mov $55, %rcx
rep movsq
nop
add $31363, %rdi

// Store
lea addresses_D+0x99d2, %r14
nop
xor $54606, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r14)
nop
nop
xor %r15, %r15

// Store
lea addresses_UC+0x1926b, %rbx
nop
nop
nop
xor $34020, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rbx)
nop
nop
inc %rbx

// Store
lea addresses_UC+0x1d96, %r14
clflush (%r14)
cmp %rsi, %rsi
movl $0x51525354, (%r14)
nop
sub $21814, %r14

// Store
mov $0x39610d0000000c96, %rbx
and %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_normal+0x2b16, %rsi
and $4255, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
dec %rdi

// Store
mov $0x2390830000000696, %r11
nop
nop
inc %r14
movb $0x51, (%r11)
nop
xor %r14, %r14

// Store
mov $0x24545a0000000496, %rcx
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%rcx)
nop
dec %r11

// Store
lea addresses_WT+0x16f66, %r14
nop
nop
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%r14)
nop
nop
nop
nop
cmp $17604, %rsi

// Faulty Load
mov $0x529b450000000c96, %rdi
add $4950, %rbx
mov (%rdi), %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 3, '58': 64}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58
*/
