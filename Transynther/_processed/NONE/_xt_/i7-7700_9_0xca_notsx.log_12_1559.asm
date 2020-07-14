.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1aedc, %r13
clflush (%r13)
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
xor $14886, %r9
lea addresses_UC_ht+0x17bfb, %rsi
lea addresses_A_ht+0x10bfb, %rdi
nop
xor $52127, %rbp
mov $51, %rcx
rep movsl
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x15cc3, %r9
nop
nop
nop
nop
nop
and $63569, %r13
mov (%r9), %cx
nop
and $7770, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx

// Load
mov $0x4f9c1d0000000866, %rax
nop
nop
nop
nop
nop
and %r12, %r12
mov (%rax), %rcx
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_D+0x7919, %r15
clflush (%r15)
nop
cmp $11640, %r13
movl $0x51525354, (%r15)
nop
nop
nop
inc %rbp

// Store
lea addresses_PSE+0x131b, %rcx
nop
nop
add %r15, %r15
movl $0x51525354, (%rcx)
nop
cmp $47618, %r8

// Faulty Load
lea addresses_PSE+0x15bfb, %r8
nop
nop
nop
nop
inc %rcx
mov (%r8), %r15w
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'33': 12}
33 33 33 33 33 33 33 33 33 33 33 33
*/
