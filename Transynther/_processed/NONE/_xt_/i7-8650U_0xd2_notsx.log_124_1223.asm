.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11ead, %rcx
nop
nop
add $53359, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
and $35267, %r9
lea addresses_WT_ht+0x171ad, %rdi
nop
nop
cmp $14234, %rbp
movb (%rdi), %al
xor $36709, %r10
lea addresses_normal_ht+0x342d, %rsi
lea addresses_WC_ht+0x8ef5, %rdi
clflush (%rdi)
nop
nop
and $30736, %rbp
mov $96, %rcx
rep movsl
nop
nop
nop
nop
nop
add $7895, %rsi
lea addresses_normal_ht+0x114ad, %rax
nop
nop
nop
inc %rdi
movl $0x61626364, (%rax)
sub %rdi, %rdi
lea addresses_normal_ht+0xd601, %rsi
lea addresses_D_ht+0xb775, %rdi
and %r10, %r10
mov $49, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x18f6d, %rsi
lea addresses_D_ht+0x8135, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $91, %rcx
rep movsb
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x1168f, %rsi
lea addresses_D_ht+0xd403, %rdi
nop
nop
nop
nop
and $39644, %rbp
mov $125, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x866d, %rsi
clflush (%rsi)
nop
nop
nop
nop
dec %r10
mov (%rsi), %r14d
nop
nop
inc %rdi
lea addresses_WT_ht+0x12bf9, %rdi
nop
nop
nop
nop
inc %r14
mov (%rdi), %esi
nop
xor %rax, %rax
lea addresses_WT_ht+0x75cf, %rcx
nop
nop
nop
nop
lfence
movl $0x61626364, (%rcx)
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0x1e0ad, %r10
nop
xor $24282, %rdi
movb $0x51, (%r10)
xor $53631, %r10

// Load
lea addresses_UC+0x10ad, %r13
nop
nop
and %rdx, %rdx
mov (%r13), %di
nop
nop
nop
xor $49343, %r10

// Load
lea addresses_UC+0x10ad, %rdx
nop
nop
nop
and $52971, %r15
mov (%rdx), %di
nop
nop
xor $4254, %r13

// Faulty Load
lea addresses_UC+0x10ad, %r10
nop
nop
nop
dec %rbx
mov (%r10), %r14d
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'37': 124}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
