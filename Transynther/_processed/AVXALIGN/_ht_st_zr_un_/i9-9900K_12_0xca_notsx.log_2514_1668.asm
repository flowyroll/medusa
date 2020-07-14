.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x92f3, %rsi
lea addresses_normal_ht+0x1aa73, %rdi
nop
nop
inc %rdx
mov $12, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xbcb3, %rsi
sub %r13, %r13
movw $0x6162, (%rsi)
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1d8ff, %rdx
and %r13, %r13
movw $0x6162, (%rdx)
nop
sub $14834, %rsi
lea addresses_normal_ht+0x12c9b, %rdi
nop
nop
nop
nop
cmp $5468, %rcx
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r13
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdx

// Load
lea addresses_PSE+0x125b3, %r12
sub $47279, %r8
vmovntdqa (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x5af3, %r13
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r13)
and $49514, %r13

// Store
lea addresses_WT+0x8403, %r12
nop
nop
nop
nop
and %r13, %r13
movb $0x51, (%r12)
nop
nop
sub $34869, %r11

// Faulty Load
mov $0xaf3, %rdx
nop
nop
nop
nop
add $48974, %r11
vmovntdqa (%rdx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdx
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'fc': 101, '16': 1, '92': 1, 'f8': 104, 'be': 1, '24': 1, 'c4': 105, 'e2': 111, 'a4': 1, '60': 1, '0a': 1, 'b2': 1, 'ce': 7, 'f6': 111, 'f4': 122, '84': 1, 'e8': 117, '00': 4, 'fa': 106, 'd6': 111, '1c': 1, '3e': 1, 'e0': 105, '4a': 1, '48': 1, 'ca': 2, 'ec': 123, 'f2': 103, 'b6': 1, 'c6': 93, 'da': 125, 'ee': 92, 'e6': 107, 'ea': 115, 'd4': 120, 'de': 4, 'e4': 112, 'fe': 100, 'd8': 101, 'f0': 103, '0e': 1, 'c8': 95}
f2 fa e2 ea e8 d4 fc e0 ea da e8 fa f4 d6 f2 c4 f2 d4 c4 d6 f8 e0 fe fc ea f0 f2 c8 fe f4 fc fc f8 e2 e4 f6 e2 da c6 e0 fa f6 e2 da f0 ee d6 d6 f4 e6 f4 ce f8 ce f4 fc c6 fa fe d4 ec e8 ee ec e4 ee c6 c8 e4 f6 da e4 f0 f4 f8 f8 e2 e8 da c6 da e8 f8 d6 d8 e2 da f2 ec c4 f2 f0 f6 f2 e8 da f0 e0 fc fe e0 f2 ec ee e6 f4 f0 d6 fe fe f4 e0 ce c4 f2 d4 f4 e2 fc f6 e6 f6 e8 e0 c4 d8 f8 e6 e6 d4 c8 e6 f8 f0 e6 f4 ee d6 e6 d6 c4 ee e2 ec e6 f4 ee f8 f0 fe f2 ce f8 c4 f8 c6 fa f4 ec ee f8 e0 d8 fc fe f4 d8 f4 e4 f8 fe ea fe ea e6 f0 f6 fa ec c6 ea ec f0 f6 c4 f2 ca fc f4 e2 fa c6 fa f0 fa e8 c6 da c6 ec fc f6 e8 e6 ee d4 d4 d6 ec f4 c6 e0 ea f8 f0 e6 f4 c4 fe d6 d6 c4 f8 fa f6 c4 ec c6 d4 ea f0 f6 f4 d8 e2 e6 e6 d8 f2 f8 d4 f6 d4 e4 e4 fe f2 d6 d4 f0 fa fa da fa d8 c8 fe da e4 e8 e2 ea f8 e6 c6 e4 e6 fe f4 fe e0 fe fc f2 e4 d6 e6 f2 f8 e4 ec fc ee e6 e0 ea d4 fe c8 d6 c8 da e8 e8 d6 fc c4 ee ec d4 e2 c8 c4 e2 c4 e8 d4 c6 ea c4 e8 d8 c4 c4 e8 fa ea e6 fc d6 e0 e2 f6 f4 ea e2 ea da fe e4 c4 da c4 ee fc c6 c8 ec d6 e2 f0 f6 e0 f8 e2 e2 f0 c8 fe e0 d6 f0 d4 e0 d8 da e0 e2 e8 d8 da e8 d6 e2 ea ec f6 e0 ec f4 c4 d8 ee fc e4 da e6 f2 fa fe f4 fa d8 ee f2 ea ea ee e8 f6 f2 d6 d8 e2 f2 e4 d8 f8 d4 d6 fc ec f0 fe d8 f8 ee e8 c6 ec c8 da e6 e8 f0 c6 fe fc e8 ea d8 da d8 f8 ec f6 e8 f2 da fe c4 da fa f8 d8 d8 f8 f8 d8 da d4 f8 f6 e8 f0 f4 e4 e6 f6 da e8 f6 e4 f0 fa fa da e0 e4 d6 c8 ec e8 d4 fa da f0 e8 fc e2 d6 f2 f0 e6 f0 f2 d4 d4 da c8 c4 c6 d6 d6 d4 d4 c8 e6 fe fe c8 f4 e4 f0 ec da ec d4 f4 d6 f2 e0 c8 f8 ee ec d4 e2 c4 e2 f2 e2 fa e0 da fe d4 f4 e4 fe d8 e4 f6 d8 c8 e4 c6 da d6 d4 c4 c4 ea e8 ea fe d6 f8 c6 f4 f0 e6 d6 f4 c8 d8 fa f2 f4 e0 f4 f6 84 c8 e8 d4 e0 fc e2 d4 fe e6 d6 f6 fe ee f8 e4 ea e6 f0 ea f8 d8 c8 e2 ec ea fa f8 d6 fa d8 fe ec e0 c8 f8 ec f2 fa f6 e2 d6 d6 ea c4 d4 ec e6 f6 fa c4 e6 ec c4 d8 e8 f0 fc e8 f6 e8 e6 f6 c8 f2 fa e0 d8 f6 e6 ee ec e2 fe ee e2 d4 e4 f4 c6 e6 f6 ec d6 c4 fa f0 f2 e2 d6 f2 e0 f6 e8 ee da f2 f6 e4 da e4 da ee d6 e4 e2 ee fc e6 e4 ee e2 d8 d4 ec f6 fe e6 d4 f0 e2 e4 ec fa f4 e6 ea ee ec e6 ea c4 d6 e8 f0 e2 c6 d6 f0 fc c8 fa e2 ee d8 ea c6 e0 f4 e8 f6 e8 ec da d8 e4 f2 fc e8 c8 d4 ea da ea ec ea c4 f8 f6 fc fa fa fc fa e2 c4 fc f2 ee f0 e4 c4 f2 d8 ea ea e0 f4 ee ec da e0 f0 f4 d4 e8 f4 da e4 f4 da da d6 fe fa d8 c8 e4 fc e6 e8 e8 f8 e0 ea e2 f4 fa ec f8 da da d4 e8 a4 f4 f8 d6 fc e8 c4 e8 f2 ee d4 e6 e4 f8 d6 fa fc c6 ee fe e4 c8 f0 e4 ea ec ec f0 fe f2 ec fe e8 fe d4 f4 fe fa c6 d8 f8 da e6 f8 f6 e8 fa e2 da ee d4 c6 f4 ca c6 e6 f2 d6 ec f4 ec c8 c4 d6 f0 e2 e4 e8 d8 da fc da c6 e6 f8 e8 e4 fc c8 f8 ee e2 d4 e4 e2 da d6 fa e2 e6 c6 e4 f2 fa fe e0 fa d4 fc ec da da e6 c6 d8 e0 f2 da de f6 e4 f4 ec ec e8 f0 fe e0 f2 d6 e8 da ec f0 f2 f8 e8 f8 e0 da da ee c8 c8 ea fa da da e2 d8 f2 e0 e4 e0 f4 f8 e4 d4 c8 e2 e6 da f8 f0 c6 c4 ea f4 d4 fe da ec f8 f4 c8 e4 e4 da ec fa d6 fa e6 fc e4 fe f6 e4 e0 e0 ea e4 e0 e4 ea 00 d8 f6 f8 e0 e8 d4 e6 ec e6 f6 f6 ea d4 c4 d4 f0 ee f4 c8 e8 e2 d6 e8 f2 e8 e4 fa e4 fe f8 ec e6 e8 f8 f0 f2 e0 f4
*/
