.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0xcd35, %r11
nop
nop
and %rsi, %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_D+0x13a35, %rdx
clflush (%rdx)
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
nop
add $65017, %rsi

// Store
lea addresses_WT+0x82b5, %rsi
nop
nop
inc %r14
movw $0x5152, (%rsi)
nop
nop
and $42024, %rdi

// Store
lea addresses_normal+0x1d249, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor $8403, %rdi
movb $0x51, (%r14)
nop
nop
and %r13, %r13

// Load
mov $0x4ed8550000000635, %r13
nop
nop
nop
xor $55229, %rdx
mov (%r13), %ecx
nop
nop
nop
cmp $35874, %r14

// Store
lea addresses_RW+0xafb5, %rdx
nop
nop
cmp $18336, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
and $80, %rsi

// Store
lea addresses_US+0xbdb5, %rcx
nop
nop
nop
sub $26365, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rcx)
dec %rdx

// Store
mov $0x235, %rsi
nop
xor %rdx, %rdx
movw $0x5152, (%rsi)
nop
nop
add %r11, %r11

// Store
lea addresses_A+0x13bf5, %r14
nop
nop
sub %r11, %r11
movw $0x5152, (%r14)
nop
add $8345, %r11

// Store
lea addresses_WT+0x63, %rdx
nop
dec %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovntdq %ymm6, (%rdx)
nop
nop
nop
nop
dec %r11

// Faulty Load
mov $0x4ed8550000000635, %rcx
nop
nop
and $18372, %r11
mov (%rcx), %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': True, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
