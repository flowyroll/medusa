.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x8365, %rsi
lea addresses_A_ht+0x1ed65, %rdi
nop
nop
nop
nop
nop
and $4865, %rax
mov $89, %rcx
rep movsw
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x2b85, %rsi
lea addresses_UC_ht+0x16805, %rdi
nop
nop
add %r15, %r15
mov $60, %rcx
rep movsw
nop
add $21055, %rax
lea addresses_D_ht+0x40c5, %rcx
nop
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
and $38752, %rsi
lea addresses_normal_ht+0x1bac5, %rsi
lea addresses_A_ht+0xe105, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $53, %rcx
rep movsq
nop
nop
nop
nop
sub $57747, %r9
lea addresses_WC_ht+0x10045, %rsi
lea addresses_WT_ht+0x30f5, %rdi
nop
xor $33429, %r14
mov $106, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WC+0x8ac5, %rcx
nop
nop
nop
cmp %rdi, %rdi
movb (%rcx), %r15b
and $29084, %rdi

// REPMOV
lea addresses_D+0xc8c5, %rsi
lea addresses_D+0x1a6c5, %rdi
clflush (%rsi)
nop
nop
dec %rbp
mov $34, %rcx
rep movsb
nop
nop
and %r12, %r12

// Store
lea addresses_PSE+0x6c0d, %rdi
nop
cmp %rbp, %rbp
movw $0x5152, (%rdi)
nop
nop
xor $26512, %r11

// Faulty Load
mov $0x8a2d300000008c5, %rcx
nop
add $59647, %r11
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'00': 1}
00
*/
