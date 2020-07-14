.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbx
push %rdx
lea addresses_D_ht+0x24c3, %r15
nop
nop
nop
sub %r10, %r10
movb $0x61, (%r15)
nop
add $6509, %r9
lea addresses_UC_ht+0x4fb3, %rbx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
and %rbx, %rbx
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x1bc63, %rsi
lea addresses_normal+0x12263, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $12, %rcx
rep movsw
and $60120, %rdi

// Load
lea addresses_UC+0xc063, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rdi), %r14d
nop
nop
nop
nop
add %rdx, %rdx

// Store
mov $0x6a3, %rdi
nop
nop
sub $36867, %r14
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
sub $40006, %rcx

// Faulty Load
mov $0x5630a10000000263, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rsi), %ecx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'0e': 1, '32': 9662, '00': 637, '5f': 13}
0e 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 00 32 32 32 32 32 32 00 32 32 32 32 32 00 32 32 32 32 32 32 00 32 00 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 00 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 00 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
