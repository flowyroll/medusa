.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x293e, %rsi
nop
nop
nop
nop
cmp $31565, %r11
mov (%rsi), %r12
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xdebe, %rsi
lea addresses_WT_ht+0x5c7e, %rdi
nop
nop
nop
nop
nop
add $55600, %r12
mov $86, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x18d3e, %rcx
nop
nop
nop
inc %rdx
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r12
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x673e, %rdx
nop
nop
nop
nop
dec %r14
movb (%rdx), %r11b
nop
nop
nop
nop
nop
and $38664, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x1c1be, %r10
nop
nop
nop
xor %rsi, %rsi
movb (%r10), %r11b
nop
nop
nop
nop
inc %r14

// Store
mov $0x6d6, %r14
clflush (%r14)
nop
inc %r11
movb $0x51, (%r14)
nop
nop
nop
dec %r14

// Store
lea addresses_WC+0x16be, %r13
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
and %r14, %r14

// REPMOV
lea addresses_RW+0x1163e, %rsi
mov $0x2ae005000000033e, %rdi
nop
nop
add %r14, %r14
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
and $56928, %rcx

// Faulty Load
mov $0x2ae005000000033e, %r13
nop
nop
inc %rcx
movb (%r13), %r11b
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 403, '79': 5536, 'b0': 1, '00': 9974, 'a0': 1, 'd0': 1}
79 00 00 00 00 79 00 00 00 00 79 00 79 00 00 00 00 79 00 79 00 00 79 00 00 79 00 00 00 00 79 00 00 79 00 79 79 00 00 79 00 00 00 79 79 79 79 00 00 00 00 79 00 00 79 00 00 79 00 00 00 00 79 00 79 00 00 00 00 79 00 00 00 79 00 79 00 00 79 00 00 79 00 79 79 79 00 00 00 79 79 00 79 00 00 00 00 79 79 79 79 00 79 00 79 00 79 79 79 00 79 00 00 79 00 00 00 00 00 00 00 00 79 00 00 00 00 00 00 79 00 79 79 00 79 79 00 79 32 79 32 79 79 00 00 00 00 00 00 79 00 00 00 00 79 79 79 00 00 00 00 00 00 00 00 00 00 00 00 79 00 00 00 79 79 00 00 79 00 79 00 00 00 79 79 00 00 00 79 00 79 79 79 00 00 79 79 00 79 00 79 00 79 00 00 00 79 00 79 00 79 79 79 79 79 79 00 00 00 00 00 00 00 79 00 79 79 00 00 00 00 00 00 00 00 79 00 32 79 79 79 79 00 79 00 79 00 79 79 79 79 79 79 00 79 00 79 00 79 00 00 00 79 00 79 00 00 79 79 79 00 00 32 00 00 00 79 79 32 79 00 79 79 00 79 00 00 79 79 00 79 00 00 79 79 00 00 79 79 79 00 32 00 79 00 00 00 32 00 00 00 79 00 32 00 79 79 00 00 00 00 00 00 00 00 00 79 00 00 00 00 00 79 00 79 00 79 79 00 00 00 00 00 79 00 79 79 00 00 00 00 00 00 00 79 79 79 79 00 00 00 00 79 00 79 00 00 00 00 79 00 00 00 00 32 79 79 00 79 00 00 00 00 00 00 32 79 00 79 79 00 79 00 00 79 00 00 00 00 79 79 00 00 00 00 00 00 79 00 79 00 79 00 79 00 00 00 79 00 00 79 79 00 79 79 32 00 00 79 00 00 32 00 32 79 79 00 79 00 00 00 00 00 79 79 00 79 00 00 79 79 79 79 00 79 00 00 00 79 00 00 79 79 32 79 00 00 00 00 79 79 79 79 00 79 00 79 00 32 00 00 79 79 79 79 00 79 00 00 79 00 79 00 00 79 00 00 00 00 79 00 00 79 00 00 00 00 00 00 79 00 79 00 79 00 00 79 00 00 00 79 79 79 00 79 00 32 79 00 00 00 00 79 79 79 00 00 79 79 00 79 79 00 79 00 00 00 00 79 00 00 00 00 00 00 79 00 00 00 00 79 00 00 79 79 00 79 00 79 00 79 00 00 00 79 00 79 00 79 79 00 32 00 00 00 00 00 00 32 79 00 79 00 00 00 00 00 00 79 00 79 00 00 00 00 00 00 79 00 00 79 00 00 00 00 79 79 00 00 00 00 00 00 00 79 79 79 00 00 79 79 00 00 32 00 79 00 00 79 00 00 00 00 00 00 00 79 00 79 00 00 00 00 00 79 00 79 00 00 00 79 00 00 00 00 79 00 00 00 00 00 00 00 79 00 79 00 00 00 79 00 79 00 00 00 00 79 00 00 79 00 00 00 00 00 79 00 00 79 00 00 00 00 00 00 00 00 79 00 79 00 00 79 79 00 00 00 00 79 00 79 00 00 00 79 79 00 00 00 79 00 00 79 00 00 00 00 79 00 00 00 00 00 00 00 00 79 79 00 79 00 79 00 79 00 00 00 79 79 79 79 00 00 00 79 00 00 00 00 00 00 00 00 00 00 79 00 00 00 00 00 00 00 79 00 00 79 79 79 32 00 00 79 00 00 00 79 00 79 00 79 79 00 79 79 00 79 00 00 79 00 79 00 79 00 00 79 00 00 00 79 00 00 00 79 00 00 00 79 00 00 00 79 00 00 00 00 00 00 79 00 79 00 79 00 79 79 79 79 00 00 00 00 00 79 00 00 79 79 00 00 00 79 00 00 00 00 79 79 00 00 00 00 00 00 00 00 00 79 00 00 00 00 79 00 79 00 79 79 79 00 79 79 00 00 00 79 00 79 00 79 79 79 00 00 00 79 79 00 00 00 79 00 79 79 00 79 00 79 00 00 79 00 00 00 79 79 79 00 79 00 00 00 00 00 79 79 00 00 79 00 00 00 00 00 00 00 00 00 00 00 79 00 00 79 00 00 00 00 00 00 00 79 00 79 79 00 79 00 00 79 00 00 00 79 79 79 00 00 79 00 00 00 00 00 79 00 79 00 00 00 00 79 00 00 79 00 79 79 00
*/
