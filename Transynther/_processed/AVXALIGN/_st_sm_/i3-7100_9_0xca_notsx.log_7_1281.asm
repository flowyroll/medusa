.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_UC_ht+0x1519e, %r9
nop
add %rbx, %rbx
movb $0x61, (%r9)
nop
nop
cmp $51590, %rdx
lea addresses_normal_ht+0xce9e, %rcx
nop
nop
inc %r9
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rdx
nop
cmp $24325, %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x16906, %rsi
lea addresses_UC+0x69e, %rdi
clflush (%rsi)
nop
nop
nop
inc %r12
mov $59, %rcx
rep movsl
nop
dec %rdi

// Store
lea addresses_normal+0x269e, %r8
nop
nop
nop
sub %r14, %r14
movl $0x51525354, (%r8)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_normal+0x269e, %r8
clflush (%r8)
nop
nop
nop
nop
and $52433, %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
dec %r8

// REPMOV
lea addresses_US+0x405e, %rsi
lea addresses_WT+0x1c49e, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $33, %rcx
rep movsq
nop
nop
nop
sub $33835, %r14

// Faulty Load
lea addresses_normal+0x269e, %r12
nop
nop
nop
nop
nop
and $41592, %rax
mov (%r12), %esi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_US', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 7}
54 54 54 54 54 54 54
*/
