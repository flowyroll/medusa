.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xda0e, %r8
nop
nop
nop
dec %r14
mov (%r8), %r9d
mfence
lea addresses_WC_ht+0x13f0e, %rsi
lea addresses_D_ht+0x1407e, %rdi
nop
add %r12, %r12
mov $34, %rcx
rep movsq
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xc6f8, %rsi
lea addresses_normal_ht+0x3c36, %rdi
and $14489, %rbx
mov $87, %rcx
rep movsq
nop
add $36995, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdx

// Store
lea addresses_WC+0xaa8e, %r13
clflush (%r13)
cmp $62972, %r15
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_US+0x1bf0e, %rax
nop
xor %r12, %r12
movb (%rax), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'00': 1}
00
*/
