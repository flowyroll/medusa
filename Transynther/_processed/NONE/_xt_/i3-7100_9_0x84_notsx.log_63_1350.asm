.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdx
lea addresses_WC_ht+0x69e, %r14
nop
nop
nop
nop
add $63194, %rbp
movups (%r14), %xmm0
vpextrq $1, %xmm0, %r15
nop
dec %rcx
lea addresses_A_ht+0x1ac9e, %r9
nop
add %r14, %r14
mov (%r9), %edx
and $6897, %r15
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x1ea9e, %r13
xor $19823, %r11
movl $0x51525354, (%r13)
nop
nop
nop
nop
and %r11, %r11

// REPMOV
lea addresses_D+0x1679e, %rsi
lea addresses_A+0x10f9e, %rdi
nop
xor %r10, %r10
mov $63, %rcx
rep movsl
nop
nop
nop
nop
sub $30359, %rsi

// Store
lea addresses_A+0x1a1c6, %r15
clflush (%r15)
nop
nop
nop
nop
nop
xor $54231, %r11
movb $0x51, (%r15)
nop
nop
nop
xor $58061, %r15

// REPMOV
lea addresses_normal+0x15eba, %rsi
lea addresses_A+0xd39e, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $118, %rcx
rep movsb
nop
nop
nop
cmp $14691, %rcx

// REPMOV
lea addresses_D+0x1679e, %rsi
mov $0x56d72f0000000f9e, %rdi
nop
xor $46585, %r10
mov $52, %rcx
rep movsb
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_D+0x1679e, %r13
nop
nop
nop
add $43740, %r10
movb (%r13), %r11b
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_NC', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 63}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
