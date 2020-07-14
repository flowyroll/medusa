.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x14691, %r13
nop
nop
add $20802, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x17851, %rsi
lea addresses_WC_ht+0x5e49, %rdi
add %r12, %r12
mov $34, %rcx
rep movsb
and %rdi, %rdi
lea addresses_WC_ht+0x1eed1, %rdx
inc %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x16011, %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rsi), %r12
nop
nop
nop
nop
nop
add $52423, %r13
lea addresses_A_ht+0x1d331, %rcx
nop
nop
xor $2084, %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add $14037, %rsi
lea addresses_WC_ht+0xfc11, %rsi
lea addresses_UC_ht+0x7f81, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $17, %rcx
rep movsl
nop
nop
nop
cmp $24689, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x2911, %rdi
nop
nop
nop
nop
nop
xor $7741, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rdi)
nop
cmp %r15, %r15

// Store
lea addresses_D+0xcd11, %r9
nop
nop
cmp %r13, %r13
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
dec %rdi

// REPMOV
lea addresses_D+0x15391, %rsi
lea addresses_D+0x494d, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $59, %rcx
rep movsw
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_US+0x2911, %rdi
nop
nop
nop
nop
nop
sub $54284, %rax
movb (%rdi), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'58': 3, '00': 394}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
