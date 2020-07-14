.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7066, %rsi
lea addresses_UC_ht+0x1b2a, %rdi
nop
nop
nop
nop
sub $47804, %rbp
mov $29, %rcx
rep movsl
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x6992, %r12
sub %rbp, %rbp
mov (%r12), %cx
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x2daa, %rsi
lea addresses_WT_ht+0x180cc, %rdi
nop
xor %r15, %r15
mov $92, %rcx
rep movsb
add $55459, %rsi
lea addresses_UC_ht+0xad82, %rsi
lea addresses_WT_ht+0x17daa, %rdi
nop
nop
nop
nop
add $15613, %r9
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x546a, %rdi
add $31003, %rbp
movb (%rdi), %r15b
nop
add $27594, %rbp
lea addresses_normal_ht+0x14ace, %rsi
lea addresses_A_ht+0xb82a, %rdi
nop
and %r10, %r10
mov $48, %rcx
rep movsw
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rdi
push %rdx

// Store
mov $0x7d11a600000009aa, %r8
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%r8)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0x1672a, %rdx
nop
nop
nop
add $62229, %r8
movb $0x51, (%rdx)
nop
nop
nop
nop
sub $53856, %rbp

// Store
lea addresses_WT+0x11faa, %r11
nop
nop
nop
cmp %r14, %r14
movb $0x51, (%r11)
nop
dec %rdx

// Load
lea addresses_normal+0x1d3aa, %r14
nop
nop
nop
nop
and $39135, %rbp
movb (%r14), %r8b
nop
nop
nop
nop
sub $46532, %r8

// Faulty Load
lea addresses_PSE+0xafaa, %rdx
nop
cmp $33741, %rbp
mov (%rdx), %di
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'33': 10}
33 33 33 33 33 33 33 33 33 33
*/
