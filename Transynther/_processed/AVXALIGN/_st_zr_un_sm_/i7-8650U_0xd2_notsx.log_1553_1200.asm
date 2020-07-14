.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19439, %r12
nop
nop
nop
nop
nop
cmp %r8, %r8
movb $0x61, (%r12)
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0xe827, %rsi
lea addresses_WC_ht+0x9039, %rdi
clflush (%rsi)
clflush (%rdi)
nop
cmp $59955, %r9
mov $99, %rcx
rep movsb
nop
nop
nop
nop
cmp $3730, %rsi
lea addresses_WC_ht+0x1e039, %rsi
lea addresses_A_ht+0xeff9, %rdi
cmp $38848, %r13
mov $10, %rcx
rep movsl
nop
cmp %r8, %r8
lea addresses_WC_ht+0x17f39, %rsi
lea addresses_D_ht+0x13fbd, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $35, %rcx
rep movsw
nop
add $57769, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_A+0x3ef9, %r12
nop
nop
nop
inc %rdx
movl $0x51525354, (%r12)
nop
nop
add $56029, %rax

// Store
mov $0x1795c00000000c39, %r9
nop
nop
nop
sub %r12, %r12
movb $0x51, (%r9)
nop
nop
nop
inc %r12

// Store
lea addresses_WT+0x13c39, %r13
nop
nop
sub %r9, %r9
movl $0x51525354, (%r13)
add %r13, %r13

// Faulty Load
mov $0x1795c00000000c39, %r9
nop
and %rbp, %rbp
movb (%r9), %dl
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'10': 1138, '51': 50, '00': 180, '54': 117, '24': 68}
10 10 10 51 00 10 10 00 10 54 10 24 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 54 10 10 10 10 10 10 10 10 54 10 10 10 54 10 10 10 10 54 10 10 10 10 00 51 10 10 24 10 10 10 10 00 24 10 00 54 00 10 10 10 10 10 10 10 10 10 10 10 10 51 10 00 54 10 10 10 10 00 10 00 10 10 10 54 10 24 51 10 10 00 24 10 10 10 10 10 10 10 10 10 10 10 00 10 24 10 10 10 51 10 10 10 10 10 24 24 00 00 54 10 10 10 10 10 10 10 10 10 00 10 54 10 00 00 00 10 24 24 10 10 00 54 10 10 10 10 10 10 54 10 54 10 00 10 10 00 10 51 10 10 10 10 10 54 10 10 10 00 10 10 10 10 10 10 10 10 00 54 10 54 10 10 00 10 10 10 54 10 10 10 10 00 10 54 00 10 00 10 00 10 54 10 51 10 10 10 10 51 10 10 10 10 10 10 10 10 00 10 10 10 10 10 00 10 00 10 10 10 51 10 10 10 10 24 10 00 10 10 10 00 54 10 10 10 10 00 00 51 10 10 10 10 00 10 10 10 00 10 10 10 10 10 10 10 51 10 24 10 10 10 54 10 51 10 10 10 24 10 10 54 00 10 51 00 10 10 10 00 10 10 10 54 10 10 10 10 10 10 00 10 10 10 10 10 10 10 10 51 10 10 10 54 10 10 10 10 51 10 10 10 10 10 10 51 10 10 10 10 10 00 10 00 10 10 00 54 24 10 24 10 10 10 10 10 10 51 10 10 10 10 10 24 10 00 10 10 10 10 10 10 00 10 10 10 10 10 24 10 10 54 00 10 54 10 10 10 10 10 10 10 10 10 00 10 10 10 10 00 10 10 10 10 00 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 00 00 10 10 10 51 10 10 00 24 00 10 00 10 10 10 10 00 10 00 10 10 00 10 10 10 00 51 10 00 10 10 10 10 00 10 00 10 54 00 00 10 51 00 54 10 54 10 00 00 10 10 00 10 10 10 10 10 00 10 51 10 10 00 00 54 10 00 10 10 10 10 10 10 10 10 10 10 00 10 10 24 10 10 10 10 10 10 54 00 10 10 54 54 10 54 10 10 10 10 10 10 10 10 10 10 54 10 10 10 54 10 24 10 00 10 10 10 00 10 10 54 10 10 10 00 10 51 54 10 10 10 10 10 10 10 10 10 10 00 10 10 10 00 10 10 10 51 10 10 10 10 10 10 10 10 10 10 10 10 10 10 00 10 10 00 10 10 10 10 10 10 10 10 10 10 24 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 24 10 10 10 10 00 51 10 10 10 10 00 10 00 00 10 10 10 10 10 00 10 00 10 10 10 10 10 10 00 10 10 51 10 10 10 10 00 10 54 10 54 10 10 10 10 10 24 00 10 10 00 54 10 10 10 54 10 54 10 54 10 54 10 10 10 10 54 10 54 10 10 54 10 00 10 10 54 10 10 10 10 10 10 10 10 54 10 10 10 51 10 00 54 10 10 10 00 10 10 10 24 10 10 00 00 00 00 00 10 10 10 10 24 10 10 24 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 54 10 10 24 10 10 00 10 00 10 10 10 10 24 54 10 54 10 24 10 10 10 10 10 10 10 10 10 10 00 10 10 00 54 10 10 10 10 10 10 10 10 10 10 10 10 10 00 10 54 10 00 10 10 00 10 10 10 10 10 51 00 10 10 51 10 10 10 10 10 51 51 10 10 10 00 10 24 10 10 54 54 00 10 24 10 10 51 10 10 54 00 10 54 10 10 24 10 10 10 00 54 24 24 10 10 10 10 10 10 10 10 10 10 10 00 10 10 10 10 10 10 10 10 10 10 00 10 10 54 54 10 54 10 10 10 10 10 00 10 54 10 10 10 00 10 10 10 10 54 10 24 10 54 10 10 10 10 10 10 00 10 10 54 51 10 10 00 24 10 00 10 10 10 10 10 54 54 10 10 10 51 51 24 10 24 24 10 10 00 10 10 10 10 24 10 24 10 10 10 10 54 10 10 10 10 10 10 10 10 10 10 00 10 10 10 54 10 10 10 10 10 10 10 10 54 24 00 00 10 51 10 00 10 10 10 54 10 10 10 10 10 00 10 10 00 54 00 10 10 10 10 10
*/
