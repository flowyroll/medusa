.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdx
lea addresses_UC_ht+0x1cc7e, %r10
xor $41982, %rbp
mov (%r10), %r15d
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x16236, %rbp
nop
nop
nop
nop
nop
xor $43381, %rcx
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
xor $17822, %r15
lea addresses_A_ht+0x1a37e, %r10
nop
nop
dec %r8
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm2
vpextrq $1, %xmm2, %r15
dec %rcx
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi

// Store
lea addresses_WT+0x2b7e, %r9
nop
nop
nop
sub $29805, %rdi
movw $0x5152, (%r9)
nop
nop
sub %rdi, %rdi

// Load
lea addresses_D+0x1e37e, %r15
nop
nop
add $10767, %rax
mov (%r15), %rcx
nop
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_WT+0x2b7e, %r9
nop
inc %r12
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'d6': 1, 'eb': 3, '00': 5935, 'ab': 1, '70': 72, '78': 1, 'fc': 1, '67': 516, 'e0': 1, '89': 1, '86': 579, 'bd': 2, '87': 2116, '20': 225, '42': 679, '7c': 2, '6d': 46, '84': 1, 'f9': 92, '7e': 3, '61': 1, '7b': 1, 'f6': 90, 'b5': 1, '3b': 1, 'c6': 32, '32': 92, 'f8': 1, 'de': 92, '27': 92, '21': 2, '7d': 92, '25': 1, '18': 1, '8d': 1443, 'b9': 374, '0c': 61, '46': 365, '64': 2, '09': 90, '40': 2148, '88': 1, '82': 1, 'ff': 4963, '1a': 32, '49': 1, 'b6': 1, '83': 92, 'e6': 1, '23': 46, '5c': 185, '37': 1, '4d': 1, '7a': 1, '19': 1, 'bb': 183, 'f3': 3, 'aa': 90, '24': 1, '2e': 62, 'd3': 173, 'b7': 161, 'a8': 91, '59': 1, '9f': 82, '98': 229, 'ea': 1, '12': 1, '92': 160, 'a2': 3, 'ae': 1, 'ba': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 88 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 42 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 87 40 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 ff b9 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 b9 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 b9 40 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 00 83 ff 87 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 42 00 82 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 40 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 ff 7e 00 00 00 00 00 00 00 00 00 87 42 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
