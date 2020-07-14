.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x9786, %rbp
nop
nop
nop
xor $64633, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x1bd72, %rsi
xor %r12, %r12
movb (%rsi), %r10b
nop
nop
nop
nop
add $41043, %r12
lea addresses_A_ht+0x3ec6, %rsi
lea addresses_D_ht+0x159e0, %rdi
nop
nop
nop
add $15862, %r10
mov $37, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x7486, %r12
xor %rbp, %rbp
mov (%r12), %rsi
nop
nop
cmp $43240, %rsi
lea addresses_UC_ht+0xfe36, %rcx
clflush (%rcx)
sub %rbp, %rbp
mov (%rcx), %si
nop
nop
nop
nop
nop
add $40741, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x2a51bc0000000d9e, %rbx
and %r15, %r15
movl $0x51525354, (%rbx)
sub %rdx, %rdx

// Store
lea addresses_UC+0x56a6, %r10
nop
sub %rbp, %rbp
movl $0x51525354, (%r10)
dec %rsi

// Store
lea addresses_WC+0x1156a, %rdi
nop
nop
nop
xor $17394, %rdx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0x5606, %rdi
nop
nop
xor $64739, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
add $56449, %rdi

// Faulty Load
lea addresses_normal+0x19706, %rdx
nop
xor %rsi, %rsi
movb (%rdx), %r15b
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4}}
{'34': 18}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
