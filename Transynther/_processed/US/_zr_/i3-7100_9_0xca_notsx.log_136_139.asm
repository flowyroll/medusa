.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf253, %rbp
clflush (%rbp)
nop
nop
nop
nop
cmp $20673, %r10
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
add $3052, %r11
lea addresses_D_ht+0x5e53, %rsi
lea addresses_D_ht+0x15253, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $21, %rcx
rep movsl
nop
sub %r9, %r9
lea addresses_normal_ht+0x8ffb, %rsi
lea addresses_UC_ht+0x8a53, %rdi
xor $63864, %r9
mov $5, %rcx
rep movsq
nop
nop
nop
nop
cmp $25688, %rsi
lea addresses_WC_ht+0x15b93, %rsi
lea addresses_WT_ht+0xc0f3, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $79, %rcx
rep movsb
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0xe853, %rsi
nop
nop
nop
inc %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_UC+0x8513, %r10
nop
nop
cmp %r13, %r13
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_US+0x1e253, %r13
nop
nop
nop
nop
dec %rdx
mov (%r13), %r8d
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'00': 136}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
