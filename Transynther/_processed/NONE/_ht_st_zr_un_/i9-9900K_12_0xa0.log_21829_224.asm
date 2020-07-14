.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1b59a, %rsi
lea addresses_UC_ht+0x1864a, %rdi
clflush (%rsi)
cmp $42664, %r12
mov $13, %rcx
rep movsl
nop
cmp $40136, %r9
lea addresses_WT_ht+0x1624a, %rsi
lea addresses_D_ht+0x149fa, %rdi
clflush (%rdi)
nop
dec %r8
mov $104, %rcx
rep movsl
nop
nop
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x17e4a, %r12
clflush (%r12)
nop
nop
nop
nop
dec %r13
movb $0x51, (%r12)
and $14761, %r14

// Load
mov $0xa52, %rsi
nop
add $62232, %r15
mov (%rsi), %ecx
nop
nop
nop
nop
cmp $8160, %rcx

// Load
lea addresses_WT+0x1f8d2, %r12
sub %rdx, %rdx
mov (%r12), %r14w
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_A+0x7e4a, %r12
nop
nop
nop
nop
cmp $46582, %rdx
movups (%r12), %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'20': 70, 'ab': 138, '3b': 35, '56': 4, 'e5': 1, '67': 52, '44': 26, 'fb': 36, '5b': 1287, '5e': 4, 'fd': 32, '00': 2228, '42': 395, 'f3': 1, 'c5': 1, '0e': 5, '61': 5, 'b3': 1104, '0f': 6, '8b': 83, 'fa': 33, '96': 1, '6c': 8, '5c': 407, '41': 222, 'd2': 22, 'c7': 7, '25': 9, 'fc': 18, 'f7': 11, '8f': 746, '68': 30, 'ed': 13, '22': 15, '46': 5873, 'e1': 83, '14': 28, '1c': 14, 'df': 108, '40': 129, 'e4': 70, 'ff': 6388, 'e9': 163, 'bc': 1, 'ac': 12, '98': 1, '08': 16, 'ce': 29, 'a7': 502, 'e3': 23, '37': 24, '77': 8, '2a': 10, 'cc': 533, '48': 28, 'a5': 1, '49': 59, '93': 1, '17': 11, 'af': 237, '81': 55, '66': 328, '1b': 1, '9b': 1, '76': 30, 'ba': 7}
00 00 25 00 25 00 25 00 25 00 25 00 25 00 25 00 25 00 25 00 00 00 fb 00 fb 00 fb 00 fb 00 fb 00 fb 00 fb 00 fb 00 fb 00 fb 00 fb 00 fb 5c 00 fb 00 fb 00 fb 00 fb 00 fb 5c 00 fb 00 fb 00 fb 5c 00 fb 00 fb 00 fb 00 fb 00 fb 00 fb 00 fb 5c 5c 00 5c 00 fb 00 fb 00 fb 00 fb 00 46 00 fb 00 fb 00 fb 00 fb 00 fb 00 00 00 00 00 00 00 00 00 00 fa 00 00 00 00 fa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fa 00 00 00 00 00 00 00 00 00 00 fa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 42 42 ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa ff fa fa ff fa ff ff ff ff ff ff ff ff ff ff ff ff 46 ff 46 ff 46 ff 46 ff ff 46 ff 46 ff 46 ff ff 46 ff 46 ff ff ff 46 ff ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 46 ff ff 46 ff 46 ff 46 ff 46 ff 46 42 42 42 42 46 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 46 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 46 42 46 42 42 42 42 42 42 42 42 42 46 46 42 42 42 46 42 42 42 42 42 42 42 42 42 42 42 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 46 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 46 ff 46 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff b3 ff b3 ff b3 b3 ff b3 ff b3 ff b3 ff b3 ff b3 ff b3 ff b3 ff b3 b3 ff b3 ff b3 ff b3 ff b3 ff b3 ff b3 ff b3 ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 46 ff 46 ff 46 ff 46 ff 46 42 46 b3 46 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 46 b3 b3 b3 b3 b3 b3 46 b3 b3 b3 b3 b3 46 b3 b3 b3 b3 b3 b3 b3 b3 b3 46 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 46 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 42 42 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 46 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 46 b3 b3 46 b3 b3 00 00 00 00 00 00 00 00 00 00 00 00 00 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 42 46 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 46 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
