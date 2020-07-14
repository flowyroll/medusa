.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rsi

// Store
mov $0xe20, %r8
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WC+0x9c4a, %rax
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovaps %ymm7, (%rax)
nop
dec %r15

// Store
mov $0x741b7d00000009f0, %r15
nop
add %rsi, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
add $37918, %r10

// Faulty Load
lea addresses_D+0xa4a, %r15
nop
nop
nop
nop
nop
sub %r10, %r10
movntdqa (%r15), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 43}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
