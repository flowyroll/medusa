.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
lea addresses_WT_ht+0x1523c, %r8
nop
nop
nop
nop
dec %r13
mov (%r8), %eax
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x78bc, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and $41751, %rbx
movb $0x61, (%r12)
and $13327, %r11
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_D+0x75bc, %r8
nop
nop
nop
nop
nop
and %r14, %r14
movw $0x5152, (%r8)
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_WT+0xa67c, %r14
nop
xor %rcx, %rcx
mov (%r14), %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'53': 465, 'f0': 9731, '01': 79, '49': 1604, '3a': 1, '00': 39, '7c': 1, 'ff': 9909}
ff ff 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff 01 ff f0 49 49 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 53 ff f0 ff f0 ff f0 49 ff f0 ff f0 53 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff 49 ff f0 ff f0 ff f0 49 ff f0 ff 49 ff f0 ff f0 ff f0 ff f0 ff f0 53 ff f0 49 ff f0 49 ff 49 ff f0 ff f0 ff 49 ff f0 ff f0 ff f0 ff f0 ff f0 49 49 49 ff f0 ff f0 ff 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 53 49 ff f0 49 ff f0 49 ff f0 00 ff f0 ff f0 ff f0 ff f0 49 f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 f0 ff f0 49 ff f0 49 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 49 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff 01 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 f0 f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff 49 ff f0 ff f0 49 ff 49 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 53 ff f0 ff f0 ff f0 ff f0 f0 53 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff 49 ff f0 49 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 53 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 53 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff 49 49 ff f0 53 ff f0 ff f0 ff f0 ff f0 ff f0 f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 53 53 49 ff f0 f0 49 ff f0 ff f0 ff f0 ff f0 49 ff f0 53 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 53 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 53 ff f0 ff 49 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 53 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 f0 ff f0 ff f0 ff f0 ff f0 49 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 53 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 53 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 f0 ff f0 ff f0 ff f0 ff f0 49 49 ff f0 49 ff f0 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 49 ff f0 ff f0 ff f0 ff 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 53 ff f0 ff f0 ff 49 ff f0 ff f0
*/
