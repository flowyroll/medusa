.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1420b, %rsi
lea addresses_WC_ht+0xe04b, %rdi
nop
nop
cmp %r11, %r11
mov $48, %rcx
rep movsl
nop
sub %rbp, %rbp
lea addresses_normal_ht+0xd10b, %rbp
nop
nop
xor %r12, %r12
movb (%rbp), %r14b
nop
nop
nop
nop
sub $38480, %rsi
lea addresses_UC_ht+0x355b, %rsi
clflush (%rsi)
nop
and %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
cmp $27425, %rbp
lea addresses_D_ht+0x1780b, %r11
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1aa0b, %rsi
lea addresses_D_ht+0x14e13, %rdi
nop
nop
dec %r10
mov $101, %rcx
rep movsw
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0xd21b, %rsi
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm7
and $0xffffffffffffffc0, %rsi
vmovaps %ymm7, (%rsi)
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rdx

// Faulty Load
lea addresses_US+0x10a0b, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
add $50911, %r14
mov (%rdx), %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 3}}
{'00': 204}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
