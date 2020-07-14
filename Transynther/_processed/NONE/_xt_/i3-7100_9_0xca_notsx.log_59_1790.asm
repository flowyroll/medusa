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
push %rbp
push %rsi

// Store
mov $0x54ee50000000c1e, %r10
clflush (%r10)
nop
sub %r9, %r9
movw $0x5152, (%r10)
nop
nop
add $34501, %r9

// Load
lea addresses_WC+0xddda, %r8
nop
nop
nop
cmp $11876, %r11
mov (%r8), %r10d
nop
add $4437, %r11

// Store
lea addresses_D+0xed9a, %r9
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
and $57867, %r8

// Faulty Load
lea addresses_PSE+0xe1da, %r10
nop
xor %rsi, %rsi
movb (%r10), %r9b
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 59}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
