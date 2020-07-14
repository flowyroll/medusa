.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x8d3c, %r9
nop
nop
xor $56492, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xb3cc, %rsi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
xor $27260, %r12
lea addresses_UC_ht+0x16e70, %r12
and %rsi, %rsi
movw $0x6162, (%r12)
nop
nop
nop
nop
and $34168, %r9
lea addresses_WC_ht+0x5900, %rsi
lea addresses_WT_ht+0x141cc, %rdi
nop
nop
nop
add %r15, %r15
mov $54, %rcx
rep movsw
nop
nop
inc %rax
lea addresses_D_ht+0x12b5c, %rsi
lea addresses_UC_ht+0x14a5c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r15
mov $113, %rcx
rep movsq
nop
xor $27035, %rcx
lea addresses_WT_ht+0x150cc, %rsi
and $35143, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub $44932, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xe0cc, %rsi
lea addresses_WT+0xa97e, %rdi
nop
nop
sub %r11, %r11
mov $105, %rcx
rep movsl
xor %rsi, %rsi

// Store
mov $0x139a5700000002cc, %r9
nop
nop
nop
nop
nop
sub $9052, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
nop
xor $46642, %rdi

// Faulty Load
lea addresses_D+0x1accc, %rbx
nop
nop
dec %rdi
mov (%rbx), %r9d
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'a0': 1}
a0
*/
