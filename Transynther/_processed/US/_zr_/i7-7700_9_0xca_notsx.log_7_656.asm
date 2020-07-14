.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rsi
lea addresses_WT_ht+0xe4d5, %rcx
nop
nop
add $27173, %r12
mov (%rcx), %r8d
cmp $50818, %r14
lea addresses_UC_ht+0x189d5, %r10
nop
nop
nop
nop
sub $42975, %rbp
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
add $60137, %r14
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0xdc75, %rcx
nop
dec %r11
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_UC+0x1b5d5, %r15
nop
nop
nop
add $22878, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
nop
nop
nop
nop
inc %r15

// REPMOV
lea addresses_normal+0x13cd5, %rsi
lea addresses_PSE+0xe7d5, %rdi
nop
nop
nop
add $30278, %r10
mov $106, %rcx
rep movsl
nop
add $60116, %r15

// Store
lea addresses_WT+0x15481, %rsi
clflush (%rsi)
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%rsi)
nop
inc %rdi

// Store
lea addresses_WT+0x185d5, %r10
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_US+0x1dd5, %r15
add $15001, %r11
mov (%r15), %edi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 7}
00 00 00 00 00 00 00
*/
