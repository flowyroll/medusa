.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xaf9d, %rax
nop
nop
and $25186, %rbx
mov (%rax), %r15
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0xb143, %r10
nop
nop
nop
inc %rsi
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm1
vpextrq $1, %xmm1, %rdi
nop
add $1716, %rbx
lea addresses_D_ht+0x101c3, %rsi
lea addresses_WT_ht+0x18243, %rdi
nop
nop
nop
nop
xor $49906, %r15
mov $43, %rcx
rep movsl
and $45637, %rdi
lea addresses_WC_ht+0x19243, %rsi
lea addresses_UC_ht+0x105c3, %rdi
nop
nop
nop
xor %rax, %rax
mov $23, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_UC_ht+0x18aa3, %r10
nop
nop
nop
nop
and %rbp, %rbp
movb (%r10), %r15b
sub %rbx, %rbx
lea addresses_normal_ht+0x11043, %r10
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r10), %eax
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x19a43, %rdi
nop
dec %rsi
movl $0x61626364, (%rdi)
nop
and $7883, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rsi

// Faulty Load
mov $0x512b7b0000000a43, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r11
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'fc': 2, '46': 2605, '00': 9825, '47': 8}
00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 00 46 46 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 47 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 00 46 46 46 46 46 00 46 00 46 46 46 46 00 00 46 46 46 46 00 00 46 00 00 00 00 00 00 46 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 00 00 00 46 00 00 46 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 46 46 00 46 00 00 00 46 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 46 46 46 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 46 00 46 00 46 00 46 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 00 00 00 46 00 00 00 46 46 00 00 00 46 46 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 46 46 00 00 46 46 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 46 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 46 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 00 46 00 00 46 00 00 00 46 46 46 00 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 46 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 46 00 00 46 46 46 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00
*/
