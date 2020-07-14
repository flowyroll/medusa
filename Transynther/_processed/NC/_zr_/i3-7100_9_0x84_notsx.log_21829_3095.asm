.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1d29a, %rbx
nop
nop
nop
add $28379, %rbp
movb (%rbx), %al
nop
nop
nop
nop
nop
sub $34881, %r14
lea addresses_UC_ht+0x188da, %r11
nop
nop
nop
add $37674, %r9
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
cmp $42472, %r9
lea addresses_A_ht+0xf248, %r9
nop
nop
nop
nop
add %rax, %rax
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rbp
xor $23253, %rax
lea addresses_UC_ht+0xf8da, %rsi
lea addresses_normal_ht+0x6eed, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $50, %rcx
rep movsl
nop
nop
cmp $52699, %r11
lea addresses_WT_ht+0x141da, %rsi
nop
nop
nop
nop
sub %rbp, %rbp
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
mfence
lea addresses_UC_ht+0xcdda, %r14
nop
sub %rbp, %rbp
movw $0x6162, (%r14)
nop
nop
nop
sub $36612, %r14
lea addresses_D_ht+0xcc82, %rsi
lea addresses_UC_ht+0x1195a, %rdi
and %rax, %rax
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1995a, %rsi
lea addresses_WT_ht+0x9772, %rdi
nop
nop
nop
nop
nop
cmp $51245, %rdx
mov $27, %rcx
rep movsq
add $57269, %rax
lea addresses_UC_ht+0xe9da, %rbx
clflush (%rbx)
nop
nop
sub %rbp, %rbp
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
nop
and $13058, %rdi
lea addresses_D_ht+0x9f62, %rsi
lea addresses_normal_ht+0x1096a, %rdi
nop
nop
nop
nop
dec %r11
mov $71, %rcx
rep movsw
nop
nop
nop
and $53045, %rax
lea addresses_UC_ht+0x1d7da, %rsi
lea addresses_WC_ht+0xf3da, %rdi
nop
nop
nop
inc %r11
mov $17, %rcx
rep movsl
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x1d430, %rbx
nop
and %rax, %rax
mov (%rbx), %r9w
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xd5f2, %rsi
lea addresses_UC_ht+0xd9da, %rdi
nop
nop
and %rbp, %rbp
mov $101, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x965a, %rsi
lea addresses_A_ht+0x585a, %rdi
nop
nop
dec %rbx
mov $73, %rcx
rep movsb
nop
nop
nop
and $57793, %rdx
lea addresses_WC_ht+0x169da, %rsi
lea addresses_D_ht+0x17307, %rdi
xor $19790, %rax
mov $109, %rcx
rep movsq
nop
nop
nop
nop
xor $42929, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi

// Store
lea addresses_A+0x85aa, %rbp
nop
cmp %rcx, %rcx
movb $0x51, (%rbp)
nop
sub $49777, %rcx

// Faulty Load
mov $0x4fb22100000009da, %rdi
nop
nop
nop
nop
nop
sub $53791, %r13
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
