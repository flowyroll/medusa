.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_PSE+0xbe3c, %r15
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovaps %ymm5, (%r15)
nop
nop
nop
nop
nop
cmp $26675, %r12

// Load
lea addresses_WC+0xbfba, %rbp
nop
nop
nop
nop
nop
add $27817, %r13
mov (%rbp), %r15
nop
nop
sub %r9, %r9

// Store
mov $0x6749ed0000000e27, %r9
nop
nop
nop
nop
inc %rsi
movw $0x5152, (%r9)
nop
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_WT+0x463a, %r13
nop
nop
nop
nop
xor $48279, %rbp
movups (%r13), %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
