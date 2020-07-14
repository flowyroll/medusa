.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c61b, %r15
nop
nop
nop
and $54722, %rcx
movl $0x61626364, (%r15)
nop
nop
sub $15215, %rbx
lea addresses_WC_ht+0x1c73b, %rsi
lea addresses_A_ht+0x11a1b, %rdi
nop
nop
nop
and %r12, %r12
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x7bdb, %r12
clflush (%r12)
nop
nop
nop
and $3205, %rcx
movw $0x6162, (%r12)
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0x3a1b, %r8
nop
cmp %rbx, %rbx
mov (%r8), %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rbx
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 47}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
