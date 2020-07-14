.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x811b, %rsi
lea addresses_A_ht+0xb247, %rdi
nop
nop
nop
nop
and $38138, %r13
mov $46, %rcx
rep movsq
nop
nop
nop
cmp $65293, %rcx
lea addresses_UC_ht+0x14d67, %rsi
lea addresses_A_ht+0x1a947, %rdi
clflush (%rdi)
nop
nop
nop
and %r11, %r11
mov $35, %rcx
rep movsw
nop
xor %r11, %r11
lea addresses_normal_ht+0x1eb47, %rdi
nop
nop
nop
nop
nop
sub $15299, %rsi
mov (%rdi), %r13w
nop
nop
nop
nop
nop
sub $35585, %rdi
lea addresses_A_ht+0x70c7, %rbp
nop
nop
nop
nop
sub $38363, %rdx
movw $0x6162, (%rbp)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x11487, %rsi
lea addresses_WC_ht+0xf89f, %rdi
nop
nop
nop
nop
and $23128, %rbx
mov $49, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $53331, %r11
lea addresses_WC_ht+0x5b47, %rdi
nop
nop
nop
nop
cmp $31180, %r13
movl $0x61626364, (%rdi)
dec %r11
lea addresses_normal_ht+0x1efe3, %rsi
lea addresses_A_ht+0x15107, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r11, %r11
mov $11, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0xdb47, %r12
nop
nop
nop
add %rsi, %rsi
mov (%r12), %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
