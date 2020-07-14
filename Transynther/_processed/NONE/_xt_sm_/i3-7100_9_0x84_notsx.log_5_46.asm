.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1b559, %rsi
lea addresses_PSE+0x13ee9, %rdi
nop
nop
xor $38152, %r11
mov $55, %rcx
rep movsq
nop
nop
nop
xor %r8, %r8

// Store
mov $0x5172ae0000000cb0, %rcx
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
xor %r14, %r14

// Store
mov $0x5628300000003f8, %rsi
nop
nop
sub %r14, %r14
movb $0x51, (%rsi)
nop
nop
nop
dec %r8

// Store
mov $0xee0, %rdi
nop
sub $10788, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovaps %ymm1, (%rdi)
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_A+0x107f8, %r9
nop
nop
sub $22622, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r9)
cmp %r8, %r8

// Store
mov $0x3e1ba200000007f8, %r14
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%r14)
nop
nop
nop
cmp $61657, %rcx

// Store
lea addresses_US+0x47f8, %r9
nop
nop
nop
sub $21690, %r11
movb $0x51, (%r9)
nop
nop
nop
inc %rcx

// Store
mov $0xbf8, %r8
clflush (%r8)
cmp %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_A+0x107f8, %rdi
nop
cmp %r9, %r9
movb (%rdi), %r8b
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'51': 5}
51 51 51 51 51
*/
