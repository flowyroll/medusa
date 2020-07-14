.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x15f50, %r15
sub $25833, %r9
mov (%r15), %rsi
nop
dec %rdx
lea addresses_UC_ht+0xb898, %rax
nop
nop
and $25431, %r9
mov (%rax), %r10d
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x1c2d8, %rsi
lea addresses_WC_ht+0x11fb8, %rdi
clflush (%rsi)
and $38756, %rdx
mov $45, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x38, %rdi
nop
nop
nop
nop
nop
cmp $59173, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp $54076, %r9
lea addresses_WT_ht+0x1ee18, %rsi
lea addresses_WC_ht+0x13fb8, %rdi
nop
add $8255, %rdx
mov $20, %rcx
rep movsb
nop
nop
nop
nop
and $10121, %rcx
lea addresses_normal_ht+0x5188, %r15
nop
nop
nop
nop
xor $31385, %rax
movups (%r15), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
inc %rsi
lea addresses_D_ht+0xdbfa, %r15
clflush (%r15)
nop
nop
nop
nop
and %rdi, %rdi
mov (%r15), %rsi
xor $23477, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xc28, %rsi
lea addresses_normal+0x1ffb8, %rdi
nop
nop
and $26315, %r10
mov $123, %rcx
rep movsw
sub %r10, %r10

// Store
lea addresses_US+0x3338, %r10
nop
nop
nop
nop
nop
xor $13639, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
sub %rax, %rax

// Faulty Load
mov $0x58709c00000007b8, %rax
nop
nop
nop
sub %r10, %r10
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 6}
00 00 00 00 00 00
*/
