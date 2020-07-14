.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16fed, %rsi
lea addresses_WT_ht+0x1dfc9, %rdi
clflush (%rsi)
nop
nop
nop
add $11928, %r8
mov $49, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xee9, %r11
nop
nop
nop
dec %rbp
movups (%r11), %xmm0
vpextrq $1, %xmm0, %rax
nop
cmp %rax, %rax
lea addresses_A_ht+0x4e9, %rcx
nop
cmp $24485, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
cmp $30426, %r11
lea addresses_WC_ht+0x5ae9, %rsi
lea addresses_UC_ht+0x1a51d, %rdi
nop
nop
xor %r14, %r14
mov $114, %rcx
rep movsw
inc %rsi
lea addresses_D_ht+0x134d9, %r8
nop
sub $5604, %rax
movb (%r8), %r14b
nop
sub %rbp, %rbp
lea addresses_D_ht+0xd6e9, %rsi
lea addresses_normal_ht+0xaee9, %rdi
nop
nop
nop
nop
nop
add $1640, %rbp
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $55686, %r8
lea addresses_normal_ht+0x89f5, %r14
nop
dec %r11
movw $0x6162, (%r14)
nop
nop
sub $59622, %rdi
lea addresses_D_ht+0x1e219, %rsi
lea addresses_UC_ht+0x3841, %rdi
nop
nop
add %r8, %r8
mov $100, %rcx
rep movsw
nop
nop
nop
add $32429, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdx

// Store
mov $0x4069d60000000ee9, %r9
nop
nop
inc %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r9)
nop
sub %rbp, %rbp

// Faulty Load
mov $0x4069d60000000ee9, %r11
nop
cmp %rdx, %rdx
mov (%r11), %r15w
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'58': 1139, '5f': 20010, 'ff': 1, '00': 679}
00 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 58 5f 5f 5f 5f 5f 5f 5f 00 5f 58 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 00 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 00 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f
*/
