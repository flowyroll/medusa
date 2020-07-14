.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rdx
lea addresses_A_ht+0x277a, %rdx
nop
cmp $23004, %r8
mov (%rdx), %r10w
nop
nop
sub $54082, %rbx
lea addresses_UC_ht+0x6a7e, %rdx
nop
nop
nop
nop
nop
xor $56989, %r9
mov (%rdx), %r8w
nop
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x967e, %r11
nop
xor %r15, %r15
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
add $53962, %rbx
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_RW+0x1a97e, %rdx
nop
nop
nop
nop
nop
cmp $36943, %r11
movw $0x5152, (%rdx)
nop
nop
nop
nop
add %rdx, %rdx

// Load
lea addresses_D+0x817e, %rdx
nop
nop
nop
xor %rbp, %rbp
mov (%rdx), %r9w
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_A+0x1c00e, %rbp
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_US+0x1b07e, %r11
nop
nop
nop
xor $26962, %rbp
mov (%r11), %r9d
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': True, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'1f': 5, '02': 1, '15': 1, '09': 50, '0f': 64, '3a': 31, '05': 143, '1c': 37, '31': 12, '0b': 239, '04': 70, '16': 48, '1a': 3, '11': 44, '10': 115, 'ff': 3207, '00': 15539, '23': 5, '03': 1, '37': 1, '26': 1, '18': 24, '19': 37, '29': 2, '2a': 23, '34': 151, '2c': 7, '39': 1, '1b': 365, '0d': 50, '30': 524, '08': 1, '38': 57, '22': 729, '2e': 71, '01': 165, '0c': 5}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 0b 00 ff 0b 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 ff 0b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b 0c ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b 0b 00 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b 00 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b ff 0b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
