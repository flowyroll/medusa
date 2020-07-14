.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rdi
push %rsi

// Store
mov $0x183bd600000008f6, %rsi
nop
nop
sub $58073, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
add %r13, %r13

// Store
lea addresses_PSE+0x1095b, %r8
inc %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovaps %ymm6, (%r8)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_UC+0x15680, %r9
nop
nop
xor %rsi, %rsi
movl $0x51525354, (%r9)
nop
sub $28005, %r14

// Load
mov $0x7a5d9a00000008f6, %r14
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r14), %rbp
dec %rdi

// Load
lea addresses_D+0x120f6, %rdi
nop
sub $22167, %r14
mov (%rdi), %r13
nop
nop
nop
nop
nop
dec %r14

// Store
lea addresses_WT+0x3b9e, %r8
nop
nop
xor $42660, %r9
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_D+0x120f6, %r13
clflush (%r13)
nop
nop
nop
xor %rbp, %rbp
movaps (%r13), %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
