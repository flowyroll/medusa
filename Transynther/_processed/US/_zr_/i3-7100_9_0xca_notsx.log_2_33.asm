.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xbe36, %rsi
lea addresses_D_ht+0x6ba6, %rdi
nop
nop
nop
nop
add $16216, %r8
mov $109, %rcx
rep movsq
add %rbp, %rbp
lea addresses_WC_ht+0x1ab1e, %rbx
nop
nop
nop
nop
and $32495, %r13
mov (%rbx), %ecx
nop
xor %rbp, %rbp
lea addresses_WC_ht+0xf26e, %rsi
nop
and $26272, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x3bca, %rsi
lea addresses_WT_ht+0xb466, %rdi
and $14479, %r10
mov $108, %rcx
rep movsq
nop
nop
nop
nop
xor %r13, %r13
lea addresses_A_ht+0xf19e, %rbx
nop
nop
inc %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rbx)
nop
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x5b1e, %rsi
mov $0xf1e, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $63, %rcx
rep movsl
nop
nop
nop
and $51994, %r10

// Faulty Load
lea addresses_US+0x5b1e, %r10
clflush (%r10)
nop
and %rdi, %rdi
mov (%r10), %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 8, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'00': 2}
00 00
*/
