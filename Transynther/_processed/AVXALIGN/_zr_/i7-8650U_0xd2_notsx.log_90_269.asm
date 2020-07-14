.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ef46, %rsi
lea addresses_WT_ht+0x13546, %rdi
nop
nop
nop
and %r10, %r10
mov $33, %rcx
rep movsw
nop
and %rax, %rax
lea addresses_WC_ht+0xc8f1, %rbp
nop
nop
nop
nop
nop
xor $13906, %rcx
mov (%rbp), %rsi
nop
and %rdi, %rdi
lea addresses_WT_ht+0x2f46, %rsi
lea addresses_normal_ht+0xa986, %rdi
nop
nop
nop
nop
and $31526, %rax
mov $44, %rcx
rep movsq
nop
nop
nop
nop
cmp $1026, %rcx
lea addresses_WT_ht+0xc146, %r10
nop
nop
nop
add %rbx, %rbx
mov (%r10), %rsi
nop
nop
cmp $52890, %rdi
lea addresses_normal_ht+0x14756, %r10
nop
xor %rdi, %rdi
mov (%r10), %eax
nop
add $40050, %rdi
lea addresses_normal_ht+0x1db96, %rcx
dec %r10
mov (%rcx), %si
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0xf7a6, %rsi
lea addresses_normal_ht+0x1846, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $79, %rcx
rep movsw
cmp %rsi, %rsi
lea addresses_WT_ht+0x1ca46, %rbx
nop
nop
nop
nop
nop
xor %r10, %r10
movb (%rbx), %cl
nop
sub $29828, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x134d2, %rsi
lea addresses_RW+0x1aa68, %rdi
nop
nop
cmp %r13, %r13
mov $124, %rcx
rep movsw
nop
nop
nop
cmp $24451, %r10

// Store
mov $0x4b270c0000000a74, %r13
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r13)
nop
nop
add $23166, %rdi

// Faulty Load
lea addresses_D+0x1b46, %rcx
add $41431, %rax
movntdqa (%rcx), %xmm4
vpextrq $0, %xmm4, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 90}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
