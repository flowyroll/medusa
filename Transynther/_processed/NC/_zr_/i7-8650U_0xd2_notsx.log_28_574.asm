.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x17128, %rsi
lea addresses_WT_ht+0x69a, %rdi
dec %rax
mov $114, %rcx
rep movsb
sub %rcx, %rcx
lea addresses_A_ht+0x34a8, %rbp
clflush (%rbp)
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
dec %r8
lea addresses_WC_ht+0x375c, %rcx
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
add $55917, %rax
lea addresses_A_ht+0x62bf, %rsi
lea addresses_A_ht+0x1aaa8, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $23064, %rdx
lea addresses_A_ht+0x123b0, %rsi
nop
cmp %rdx, %rdx
movb (%rsi), %r14b
add %rcx, %rcx
lea addresses_WT_ht+0x37a8, %rax
add $26563, %rdi
mov (%rax), %r14d
nop
nop
nop
and $47706, %rbp
lea addresses_WT_ht+0x3fe0, %rsi
nop
nop
nop
nop
nop
add $55483, %rdi
movb (%rsi), %r14b
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x1068, %rcx
nop
nop
nop
nop
dec %r14
movb $0x61, (%rcx)
nop
nop
nop
nop
add $20938, %rdi
lea addresses_WT_ht+0x114a8, %rsi
lea addresses_D_ht+0x1a8a8, %rdi
nop
nop
nop
nop
nop
cmp $60129, %rax
mov $84, %rcx
rep movsw
nop
nop
inc %r14
lea addresses_WT_ht+0x163a8, %r14
nop
nop
nop
nop
sub $59046, %rsi
mov (%r14), %r8d
add %rax, %rax
lea addresses_WC_ht+0x1d3e8, %rdx
nop
add $51904, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1a68, %rsi
lea addresses_WC_ht+0x1a6a8, %rdi
nop
nop
cmp $60506, %r8
mov $25, %rcx
rep movsq
nop
nop
inc %rcx
lea addresses_A_ht+0x1cdc8, %rax
add %rbp, %rbp
mov (%rax), %r14
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x1cac8, %rdx
nop
cmp %rcx, %rcx
movw $0x6162, (%rdx)
sub $58436, %r8
lea addresses_WT_ht+0x100c8, %rbp
xor %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, (%rbp)
nop
and $26227, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WC+0x14728, %r14
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r14), %r11b
dec %r14

// Store
lea addresses_PSE+0x5a0c, %rax
nop
nop
nop
lfence
movb $0x51, (%rax)
nop
nop
nop
dec %r14

// Load
lea addresses_RW+0xfe08, %rcx
clflush (%rcx)
nop
nop
nop
sub $53867, %rdx
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
nop
sub $7451, %r11

// Faulty Load
mov $0x4e57a60000000ca8, %r11
nop
nop
and $53281, %rax
mov (%r11), %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 28}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
