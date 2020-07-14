.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d79, %r13
nop
nop
sub %rbx, %rbx
movups (%r13), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
nop
xor $51879, %r14
lea addresses_A_ht+0x15221, %r14
add $21310, %rcx
mov (%r14), %r11
sub %r8, %r8
lea addresses_A_ht+0x6fa1, %r14
dec %rdi
movb $0x61, (%r14)
and %rdi, %rdi
lea addresses_UC_ht+0x9081, %r13
nop
nop
nop
nop
nop
cmp $30707, %r14
movb (%r13), %r8b
nop
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0xc8ab, %rsi
lea addresses_WT_ht+0x8e1, %rdi
clflush (%rsi)
clflush (%rdi)
sub $46839, %r8
mov $96, %rcx
rep movsq
nop
nop
nop
nop
add $24730, %r13
lea addresses_A_ht+0x10701, %r11
nop
nop
nop
cmp $23438, %rbx
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0x14fe1, %r10
sub $31630, %rbx
vmovaps (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'e2': 1, 'b0': 1, '96': 1, 'f2': 2, '75': 1, 'd0': 1, 'a0': 1, 'ea': 2, '73': 31, '59': 1, '4d': 1, 'ca': 1, '22': 1, '36': 1, '9b': 1, 'bc': 1, '6a': 1, 'aa': 1, 'b2': 1, 'ab': 1, 'ba': 1, '41': 1, '57': 1, '11': 1, '0e': 1, '60': 6533, '6e': 1, 'c0': 1, 'a2': 1, '94': 1, '45': 1121, 'd5': 1, 'de': 1, 'd4': 1, '7f': 1, '38': 1, 'fe': 1, 'fc': 1, 'da': 1, '34': 1, '93': 1, 'e0': 1, '90': 1, '72': 9, 'e4': 1, '00': 695, '99': 1, 'ec': 1, '9f': 1, '8e': 1, 'ff': 1, '46': 1, 'd6': 1, '0c': 1, '9a': 1, 'c5': 1, '43': 1, '86': 1, '74': 2}
60 60 45 60 60 60 60 00 60 60 60 60 60 60 00 60 60 45 60 60 60 60 60 45 60 60 60 60 60 60 60 60 45 45 60 60 60 60 00 45 60 60 60 60 60 60 00 60 60 45 60 60 60 60 60 60 45 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 00 60 60 60 45 60 60 60 72 60 60 60 60 60 60 60 60 60 45 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 72 45 60 60 60 60 60 60 60 60 60 45 60 60 45 60 00 45 60 60 60 60 60 60 45 60 60 00 60 60 60 60 45 60 60 60 00 60 60 60 45 60 60 60 60 60 60 60 60 60 60 60 60 60 60 45 60 60 00 60 60 60 60 60 60 60 45 60 60 60 60 45 60 60 60 60 60 60 60 60 60 60 60 45 60 60 60 60 60 60 00 60 45 00 60 60 60 60 00 00 60 60 60 60 60 60 60 60 60 45 60 60 60 60 60 00 73 60 60 60 60 60 45 60 60 60 60 60 60 60 60 60 45 60 60 60 60 60 45 60 00 60 60 60 00 60 60 45 60 60 00 45 60 60 60 60 60 60 60 60 60 45 60 60 60 60 60 45 45 60 60 00 60 45 60 60 60 60 60 60 60 60 45 60 00 00 60 60 60 45 60 60 60 60 60 60 60 60 60 60 60 60 60 60 45 60 60 60 00 60 45 00 60 60 60 60 60 60 60 60 60 60 45 60 00 00 60 60 60 60 60 00 60 60 45 60 00 60 60 60 60 60 00 60 60 45 60 60 60 00 60 45 60 60 60 60 60 00 60 00 45 60 00 60 60 60 00 60 60 45 60 60 45 45 60 60 60 45 60 00 45 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 45 60 00 60 45 45 60 60 00 00 60 60 60 60 60 60 60 60 45 45 00 60 60 60 60 60 45 60 60 60 60 60 00 00 60 60 60 60 60 00 45 60 60 60 60 60 45 60 60 60 60 60 60 00 45 60 60 45 60 60 00 60 60 00 00 00 60 60 60 60 45 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 45 60 60 45 45 60 60 60 60 60 45 60 60 60 00 60 60 60 60 60 60 60 00 60 60 45 60 60 60 60 60 60 45 60 60 60 60 60 60 45 60 60 60 60 60 60 60 60 60 60 60 60 60 45 60 60 60 60 60 60 60 00 45 60 60 60 45 60 60 60 45 45 60 60 60 60 60 60 60 60 60 60 60 45 60 00 60 60 60 45 60 60 60 45 60 60 60 60 60 60 45 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 45 00 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 45 60 00 60 60 60 60 45 60 60 60 60 60 60 45 45 60 60 60 60 00 60 60 60 45 00 60 60 60 00 60 00 45 60 60 60 60 60 60 60 60 45 60 60 00 60 60 45 60 60 60 60 45 60 60 60 60 60 60 60 60 60 60 60 45 60 60 60 60 60 45 60 60 60 60 60 60 45 45 45 60 60 45 60 60 60 60 60 60 60 60 45 60 60 60 60 45 60 00 60 60 60 60 45 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 45 60 60 60 60 60 60 60 45 60 60 00 60 60 60 60 d5 60 45 60 45 45 60 60 45 60 60 60 45 60 60 60 60 60 45 60 60 45 60 60 60 45 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 00 00 00 60 60 60 00 60 60 60 60 60 60 60 60 60 60 00 60 60 60 45 60 60 45 60 60 60 60 60 60 45 60 60 60 60 60 60 60 60 60 60 60 60 60 45 60 60 60 60 60 60 00 00 60 45 60 60 60 60 45 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 45 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 45 60 60 60 60 60 60 60 60 60 45 60 60 60 00 60 60 60 60 60 00 60 60 45 60 60 60 60 60 60 60 60 60 60 45 60 45 60 60 60 60 60 60 60 60 60 00 60 00 60 60 60 60 45 60 60 60 60 00 60 60 45 60 60 60 00 60 60 60 45 60 60 60 60
*/
