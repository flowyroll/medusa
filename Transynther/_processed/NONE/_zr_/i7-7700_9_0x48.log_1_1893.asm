.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x10e1a, %rsi
lea addresses_normal_ht+0x36ca, %rdi
nop
nop
nop
sub $2402, %r15
mov $59, %rcx
rep movsw
nop
nop
nop
nop
nop
add $45475, %rdi
lea addresses_D_ht+0x1255a, %rsi
nop
nop
nop
sub %r10, %r10
movb $0x61, (%rsi)
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx

// Store
mov $0x3434ed0000000dda, %rcx
nop
nop
nop
nop
and %rbp, %rbp
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
xor $19010, %r9

// Store
lea addresses_D+0x1205a, %r10
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
nop
dec %r15

// Store
lea addresses_WT+0x499a, %r8
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
dec %rbp

// Store
lea addresses_WC+0x12d6, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
xor $15185, %r15

// Store
lea addresses_UC+0x16f5a, %rbp
nop
nop
nop
nop
nop
cmp $37279, %rcx
movl $0x51525354, (%rbp)
nop
sub $56630, %rcx

// Faulty Load
lea addresses_WC+0x1555a, %r15
cmp %r10, %r10
mov (%r15), %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'00': 1}
00
*/
