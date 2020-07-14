.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1eede, %r11
nop
nop
nop
sub $46832, %r13
movups (%r11), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x11be6, %r12
clflush (%r12)
nop
nop
add $47760, %r8
movb (%r12), %r11b
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0xc7d6, %rsi
lea addresses_UC_ht+0xa0b6, %rdi
clflush (%rsi)
nop
xor $64846, %r8
mov $24, %rcx
rep movsl
xor $64816, %rsi
lea addresses_D_ht+0x16f9e, %rsi
lea addresses_WC_ht+0x1ef46, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $23, %rcx
rep movsw
nop
nop
nop
and $14704, %r12
lea addresses_WC_ht+0x1d164, %rsi
lea addresses_A_ht+0x1a5d6, %rdi
clflush (%rsi)
and %r8, %r8
mov $118, %rcx
rep movsw
inc %rsi
lea addresses_WC_ht+0xb4d6, %rsi
lea addresses_WT_ht+0x8b56, %rdi
nop
nop
nop
cmp %r11, %r11
mov $2, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x5656, %r13
nop
nop
nop
and %rdi, %rdi
movb (%r13), %r15b
and %rsi, %rsi
lea addresses_normal_ht+0x1d156, %r12
nop
nop
nop
add %rcx, %rcx
movb (%r12), %r11b
nop
nop
xor $28140, %r8
lea addresses_A_ht+0x87d6, %rsi
lea addresses_WC_ht+0x1b1b8, %rdi
nop
nop
nop
nop
inc %r8
mov $82, %rcx
rep movsb
xor $18071, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rsi

// Load
mov $0x2e95230000000196, %r8
nop
inc %rsi
mov (%r8), %r12w
and %r14, %r14

// Store
lea addresses_D+0x131d6, %r9
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%r9)
nop
nop
nop
nop
dec %r9

// Store
lea addresses_UC+0x1dabe, %r8
nop
nop
nop
nop
nop
sub $37906, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovaps %ymm6, (%r8)
nop
nop
cmp $26073, %rbx

// Faulty Load
lea addresses_normal+0x1b7d6, %r9
nop
nop
nop
nop
sub %rbx, %rbx
movb (%r9), %r14b
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'34': 117}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
