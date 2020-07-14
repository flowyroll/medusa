.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x5be9, %r15
nop
and $52609, %r11
movb (%r15), %dl
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x499, %rsi
lea addresses_UC_ht+0x1aa19, %rdi
nop
xor $32304, %r14
mov $15, %rcx
rep movsb
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1c3c9, %rsi
add $49633, %r15
movb $0x61, (%rsi)
cmp %r14, %r14
lea addresses_D_ht+0x15bc9, %rsi
lea addresses_UC_ht+0x137c9, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rdx, %rdx
mov $49, %rcx
rep movsb
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x18c9, %r14
nop
cmp $32048, %rsi
movb $0x61, (%r14)
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x27c9, %rcx
xor $20418, %r15
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
nop
sub $55873, %r11
lea addresses_D_ht+0x1dfc9, %rsi
lea addresses_D_ht+0x2989, %rdi
nop
nop
and %r11, %r11
mov $17, %rcx
rep movsl
nop
add %rsi, %rsi
lea addresses_D_ht+0x13f1b, %rdx
clflush (%rdx)
nop
nop
nop
nop
add %rsi, %rsi
mov (%rdx), %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x68f7, %r14
inc %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r14)
nop
xor $17205, %r15
lea addresses_WT_ht+0x133a1, %rsi
lea addresses_D_ht+0xc201, %rdi
xor %rdx, %rdx
mov $92, %rcx
rep movsq
nop
nop
nop
add $60190, %r11
lea addresses_D_ht+0x8bc9, %rsi
nop
dec %rdi
movb $0x61, (%rsi)
nop
nop
nop
and $16236, %r11
lea addresses_UC_ht+0x11351, %rsi
lea addresses_normal_ht+0x1b9f9, %rdi
xor %rdx, %rdx
mov $31, %rcx
rep movsw
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x193c9, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
and %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rsi

// Store
lea addresses_WT+0x18385, %rbp
nop
nop
nop
nop
lfence
movb $0x51, (%rbp)
nop
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_US+0x19fc9, %rsi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%rsi), %r12w
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 8}
00 00 00 00 00 00 00 00
*/
