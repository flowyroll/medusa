.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x17335, %rsi
lea addresses_WC_ht+0x132ad, %rdi
nop
nop
nop
nop
cmp $24604, %r8
mov $100, %rcx
rep movsl
nop
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi

// Store
mov $0x9ed, %r12
nop
nop
nop
nop
nop
add %r11, %r11
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_D+0xe54d, %r9
sub %rdi, %rdi
movw $0x5152, (%r9)
cmp %r12, %r12

// Load
mov $0x4e5c9200000003ed, %r9
nop
nop
xor $16916, %rsi
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
inc %r11

// Store
mov $0x6b84510000000179, %r13
nop
nop
nop
nop
add $5715, %r11
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
nop
nop
sub $44904, %r11

// Faulty Load
lea addresses_UC+0x1b9ed, %r9
nop
nop
and %r11, %r11
movups (%r9), %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': True, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'79': 1, 'eb': 119, '20': 1, 'b2': 42, 'dc': 79, 'ef': 1, 'e5': 77, 'e0': 71, '55': 33, 'ee': 1, 'a3': 1, 'e1': 1, '4d': 116, '6a': 38, '42': 1248, 'a4': 86, 'e9': 72, 'e8': 237, '00': 4667, '51': 34, 'f9': 58, '3a': 87, '3c': 161, '61': 1, '2f': 1, '0d': 1, 'c6': 238, '6c': 15, '32': 2, '54': 34, '21': 595, '3e': 1, '26': 207, '68': 159, '25': 45, '46': 34, 'f1': 216, '02': 82, '14': 1, 'df': 158, '40': 1589, '85': 1518, 'ff': 7137, '49': 38, 'dd': 84, 'ce': 3, '23': 78, 'a7': 83, 'b3': 77, '43': 85, '37': 2, '77': 1, '7a': 38, '19': 85, 'f3': 163, '34': 33, '24': 29, '30': 564, 'db': 439, '78': 339, '38': 164, 'bd': 1, 'ea': 76, 'af': 1, 'ba': 146, 'ae': 2, '6b': 33}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 42 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 42 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 42 00 7a 00 7a 00 7a 00 7a 00 ff 00 7a 00 7a 00 7a 00 7a 00 7a 00 7a 00 7a 00 7a 00 ff 00 7a 00 7a 00 7a ff 00 7a 00 7a 00 7a 00 7a 00 7a ff ff ff 00 7a 00 7a 00 ff ff ff 00 7a 00 7a 00 7a 00 ff 00 7a 00 7a 00 7a 00 7a 00 7a 00 7a ff 00 ff 00 7a 00 7a 00 7a 00 7a 00 7a 00 7a 00 7a ff 00 00 ff 00 00 00 00 ff ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 77 40 00 ff ff 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 ff ff 00 00 00 00 00 00 00 ff 00 00 00 00 ff ff ff 00 00 00 00 ff ff 00 b2 42 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
*/
