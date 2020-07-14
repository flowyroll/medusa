.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x23f, %rsi
lea addresses_WT_ht+0x1dfbf, %rdi
nop
nop
nop
add %r8, %r8
mov $105, %rcx
rep movsq
nop
nop
add $23925, %rax
lea addresses_WC_ht+0x9887, %rcx
nop
nop
xor %rsi, %rsi
movb $0x61, (%rcx)
inc %rcx
lea addresses_D_ht+0x17d57, %rbp
clflush (%rbp)
cmp %rbx, %rbx
mov (%rbp), %r8d
cmp $37906, %rax
lea addresses_D_ht+0x168bf, %rsi
lea addresses_normal_ht+0x2bf, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $81, %rcx
rep movsl
inc %rsi
lea addresses_A_ht+0xc057, %rcx
add %rbp, %rbp
mov (%rcx), %r8d
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x353f, %rsi
lea addresses_WC_ht+0x7337, %rdi
add $6417, %rdx
mov $57, %rcx
rep movsb
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x4abf, %rsi
lea addresses_UC_ht+0xdf1f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $10178, %rbx
mov $71, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x62bf, %rsi
lea addresses_D_ht+0x1a0bf, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $49, %rcx
rep movsw
nop
nop
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbx
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x6bf, %r10
nop
nop
nop
nop
inc %rbx
mov (%r10), %edi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'00': 6027, '49': 864, 'ff': 542, '47': 37, '44': 6, '52': 21, 'a2': 1, '46': 14, '45': 2, 'dc': 1}
00 00 00 00 49 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 ff ff 00 ff 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 ff ff 00 ff 00 00 00 00 00 00 00 00 00 00 49 ff 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 ff 00 00 49 00 ff 00 00 00 00 00 ff 00 49 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 49 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 ff 49 00 00 00 00 00 00 00 00 00 ff 00 49 00 00 00 00 00 00 ff 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 ff 00 49 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 49 49 00 00 00 00 00 00 00 49 00 00 ff 00 49 00 49 00 00 00 ff 00 00 49 ff 00 ff 00 00 00 00 00 49 00 ff 00 00 49 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff 00 49 00 00 00 00 00 49 00 ff 00 00 00 00 47 ff 00 00 00 00 ff 00 49 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 49 00 00 00 49 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 ff 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 ff 00 00 ff 00 ff 00 00 00 00 49 00 00 ff 00 44 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 49 00 ff 00 00 49 00 00 00 00 00 ff 00 ff 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 00 ff 00 00 00 00 00 00 00 00 00 49 ff 00 00 00 00 ff 00 00 00 00 49 00 49 49 ff 00 00 49 00 00 00 ff 00 00 00 00 49 00 00 49 00 00 00 00 00 47 00 00 00 49 00 00 00 49 00 00 ff 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 52 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 ff 00 49 00 00 00 00 00 00 ff 00 ff 00 49 00 00 00 00 ff 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 52 00 ff 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 49 00 00 00 00 00 ff 00 49 00 00 49 00 00 00 49 ff 00 00 49 ff ff 00 ff 00 00 00 00 00 49 00 49 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 49 00 00 49 00 00 00 ff 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 ff 00 00 49 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 49 00 49 ff 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 ff 00 00 00 00 00 00 00 00 49 00 49 ff ff 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00
*/
