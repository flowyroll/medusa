.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rsi
lea addresses_normal_ht+0x1cd69, %rsi
nop
nop
xor $1004, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi

// Store
lea addresses_RW+0x1c9c9, %rcx
nop
nop
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%rcx)
nop
nop
nop
sub %r15, %r15

// Load
lea addresses_UC+0x17cf9, %r12
nop
nop
inc %rdi
mov (%r12), %r15d
and $37715, %rcx

// Store
lea addresses_D+0x4499, %rdi
clflush (%rdi)
nop
nop
and $49664, %r15
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_A+0xa799, %r12
nop
nop
nop
nop
nop
add $485, %r10
mov (%r12), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'00': 1}
00
*/
