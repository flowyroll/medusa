.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1e9bf, %rsi
lea addresses_normal_ht+0x650f, %rdi
nop
nop
nop
lfence
mov $116, %rcx
rep movsw
nop
nop
nop
nop
inc %rbp
lea addresses_D_ht+0x1a6bf, %r14
nop
nop
nop
nop
cmp %r12, %r12
mov (%r14), %si
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1e89f, %rdx
nop
nop
nop
nop
mfence
movw $0x6162, (%rdx)
sub $45971, %r12
lea addresses_D_ht+0x1adbf, %r14
clflush (%r14)
nop
nop
nop
nop
nop
cmp $46541, %rbp
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x18fbf, %rcx
nop
inc %r14
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x60bf, %r12
nop
nop
nop
xor $57098, %rsi
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
add $54334, %rbp
lea addresses_D_ht+0xd687, %rdx
nop
nop
nop
cmp %r14, %r14
movw $0x6162, (%rdx)
nop
xor $40440, %rdi
lea addresses_WC_ht+0x1dbbf, %rsi
lea addresses_normal_ht+0x10fbf, %rdi
nop
nop
nop
inc %r11
mov $56, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $59507, %r14
lea addresses_WT_ht+0x3bbf, %r12
nop
nop
nop
nop
cmp $8812, %rdi
mov (%r12), %cx
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xa03b, %rbx
nop
xor %r13, %r13
movb $0x51, (%rbx)
cmp %r10, %r10

// Load
lea addresses_A+0x1019f, %rcx
nop
dec %r11
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r13
nop
xor %rax, %rax

// REPMOV
lea addresses_WC+0x1ebcf, %rsi
mov $0x6d27ae00000007fd, %rdi
nop
inc %r11
mov $33, %rcx
rep movsl
nop
cmp $16176, %r12

// Faulty Load
lea addresses_A+0x47bf, %r12
nop
nop
nop
and $65384, %rax
mov (%r12), %r11w
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'48': 1, '00': 117, '47': 1}
00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00
*/
