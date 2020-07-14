.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xeb0c, %rax
nop
nop
nop
mfence
mov (%rax), %r12w
xor %r15, %r15
lea addresses_A_ht+0xecff, %rbp
nop
sub %r8, %r8
movw $0x6162, (%rbp)
nop
nop
nop
inc %r15
lea addresses_WC_ht+0xf7c5, %r15
nop
nop
nop
nop
nop
and $25812, %rbp
movw $0x6162, (%r15)
nop
nop
nop
cmp $6300, %r15
lea addresses_UC_ht+0x1b2ff, %rsi
lea addresses_UC_ht+0x18a1f, %rdi
nop
nop
nop
cmp %r12, %r12
mov $17, %rcx
rep movsw
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x1ea3f, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rbp
mov (%rsi), %rdx
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0xad85, %rsi
lea addresses_UC_ht+0x6983, %rdi
clflush (%rdi)
sub %r8, %r8
mov $7, %rcx
rep movsl
and %rbp, %rbp
lea addresses_A_ht+0x112ff, %r8
nop
nop
nop
nop
nop
add %rax, %rax
movb (%r8), %dl
nop
nop
nop
nop
nop
sub $44530, %rbp
lea addresses_A_ht+0x9aff, %rsi
lea addresses_UC_ht+0x16a5f, %rdi
xor $15183, %r8
mov $39, %rcx
rep movsl
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x35bf, %rax
nop
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%rax)
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rdi

// Store
lea addresses_normal+0x14abf, %r12
nop
nop
xor $57320, %rax
movw $0x5152, (%r12)
nop
inc %r13

// Faulty Load
lea addresses_A+0x2ff, %r13
nop
nop
nop
nop
inc %r10
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'44': 8195, '45': 13634}
45 45 45 45 45 44 45 44 45 44 45 44 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 44 44 44 45 44 45 44 44 45 44 45 44 45 45 44 44 44 44 45 44 44 44 45 45 45 44 45 45 45 44 45 45 44 44 45 45 44 45 45 45 45 45 44 44 45 45 44 44 45 45 45 45 45 44 44 45 45 44 45 44 45 44 45 45 45 44 44 45 44 44 45 45 44 45 44 44 45 44 44 45 45 44 45 45 45 45 45 45 45 44 45 44 45 44 45 45 44 45 45 44 44 45 44 44 45 45 44 45 44 45 45 45 45 44 44 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 44 45 44 45 45 45 45 45 45 44 44 45 44 45 45 45 44 44 45 44 45 45 45 45 45 44 45 44 45 45 45 44 45 44 45 45 45 45 44 44 45 45 45 44 44 45 44 45 44 45 45 45 44 45 45 45 44 45 45 45 45 44 44 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 44 45 44 45 45 45 45 44 45 45 45 44 45 45 45 45 44 44 45 45 44 45 45 44 45 44 45 44 45 45 45 44 44 45 45 44 45 44 45 44 44 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 45 44 45 44 45 44 45 44 44 45 45 44 44 44 45 45 44 45 45 44 45 45 45 45 45 44 45 44 45 45 45 44 45 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 45 44 45 44 45 44 45 45 45 44 44 45 44 45 44 45 45 44 44 45 45 44 45 45 45 45 44 44 45 44 45 45 44 45 45 45 45 44 44 45 45 44 44 44 45 45 44 45 45 45 45 44 45 45 45 45 44 44 45 44 45 45 44 45 45 44 45 45 45 45 44 44 45 44 45 45 44 44 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 45 44 45 45 44 45 45 44 45 44 44 45 44 44 45 44 45 44 45 44 44 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 44 45 45 44 45 45 44 45 44 44 45 44 44 45 44 45 45 44 44 44 45 44 45 44 45 45 45 44 45 45 45 45 45 45 44 45 44 45 45 45 45 44 45 44 44 45 44 45 45 45 44 45 44 44 45 45 44 44 45 45 45 44 44 44 45 45 44 45 45 44 45 45 45 44 44 45 45 45 45 44 45 44 45 45 44 45 44 44 44 45 45 44 45 45 44 45 45 45 45 45 44 45 45 44 44 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 44 45 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 45 44 45 44 44 45 44 44 45 45 44 45 45 44 45 44 44 44 45 44 45 44 44 45 45 44 44 45 44 45 44 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 44 45 44 44 45 44 45 45 44 44 44 45 44 45 45 45 44 45 44 45 45 44 45 44 45 45 45 45 45 44 44 45 44 45 45 44 45 44 45 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 44 44 45 44 45 45 44 45 45 44 45 45 45 45 44 45 44 45 45 45 45 44 45 44 45 44 45 44 45 44 45 45 45 45 44 45 44 45 45 45 45 44 44 45 44 45 45 45 44 45 44 44 45 45 44 45 44 45 45 44 45 44 45 45 44 44 45 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 44 45 45 44 45 44 45 44 44 45 45 44 45 44 44 45 45 44 45 44 44 45 45 45 45 44 45 44 44 45 44 45 44 44 44 45 45 44 45 45 44 45 45 44 45 44 45 44 44 45 44 44 45 45 44 45 45 45 45 44 45 44 45 44 45 44 44 45 45 44 44 45 45 44 44 45 45 44 45 44 44 45 45 45 45 44 44 44 45 44 45 44 45 45 44 45 44 44 45 45 45 45 44 45 45
*/
