.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1106c, %rsi
nop
nop
nop
nop
nop
inc %r8
movl $0x61626364, (%rsi)
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x12eec, %rsi
lea addresses_WC_ht+0x1d224, %rdi
xor $49363, %rax
mov $0, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x174ec, %rsi
nop
nop
nop
nop
nop
sub %rbx, %rbx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r8
and %rax, %rax
lea addresses_A_ht+0x3d6c, %rsi
lea addresses_UC_ht+0x14ec, %rdi
nop
sub $13629, %r10
mov $6, %rcx
rep movsl
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0x104ec, %r10
nop
nop
nop
nop
nop
xor $3892, %rcx
movw $0x6162, (%r10)
nop
nop
and $39956, %rsi
lea addresses_A_ht+0x121ec, %rbx
nop
nop
nop
nop
inc %rcx
movw $0x6162, (%rbx)
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x17bac, %rsi
lea addresses_UC+0x198ec, %rdi
xor $37514, %rax
mov $63, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x10eec, %r10
nop
nop
nop
and %r15, %r15
movb $0x51, (%r10)
nop
nop
nop
xor %r15, %r15

// Load
lea addresses_RW+0x9c, %rax
nop
nop
nop
and %r8, %r8
mov (%rax), %r15d
and $37077, %r8

// Store
lea addresses_UC+0x137ec, %rsi
nop
nop
nop
nop
nop
and %rax, %rax
movl $0x51525354, (%rsi)
nop
add %rdi, %rdi

// Faulty Load
mov $0x60feb200000004ec, %r8
xor $45110, %r10
mov (%r8), %eax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'00': 1}
00
*/
