.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rcx
push %rdi
lea addresses_A_ht+0x115ff, %rdi
nop
nop
nop
nop
and $16911, %r14
movl $0x61626364, (%rdi)
nop
and %rcx, %rcx
pop %rdi
pop %rcx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x5e9f, %r14
nop
nop
add %rsi, %rsi
movl $0x51525354, (%r14)
nop
add %r13, %r13

// Store
lea addresses_A+0x1fa9f, %r15
nop
sub $19208, %rcx
movb $0x51, (%r15)
nop
nop
nop
nop
sub $56001, %rcx

// Load
lea addresses_A+0x9e9f, %r13
cmp $328, %rbp
mov (%r13), %si
nop
nop
nop
nop
xor $56137, %rbp

// Store
lea addresses_US+0x229f, %r13
nop
nop
nop
nop
xor %r14, %r14
movw $0x5152, (%r13)
nop
nop
nop
nop
sub $25493, %rcx

// REPMOV
lea addresses_RW+0x1413f, %rsi
lea addresses_PSE+0x2e9f, %rdi
sub %rdx, %rdx
mov $106, %rcx
rep movsl
nop
nop
nop
nop
cmp $15127, %r13

// Faulty Load
lea addresses_A+0x9e9f, %rcx
lfence
mov (%rcx), %r15d
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'81': 1}
81
*/
