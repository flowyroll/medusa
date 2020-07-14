.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7ae4, %rsi
lea addresses_A_ht+0x18e98, %rdi
nop
nop
nop
nop
add $35130, %r15
mov $31, %rcx
rep movsl
nop
cmp $9471, %rbp
lea addresses_A_ht+0x77c, %rdx
nop
nop
nop
xor %rax, %rax
mov (%rdx), %cx
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xbd7c, %rdi
clflush (%rdi)
nop
nop
inc %rdx
movb $0x61, (%rdi)
nop
dec %rsi
lea addresses_WC_ht+0x12424, %rsi
lea addresses_normal_ht+0x177fc, %rdi
sub %r9, %r9
mov $0, %rcx
rep movsq
nop
nop
nop
nop
nop
add $61239, %rbp
lea addresses_A_ht+0x777c, %rax
nop
nop
nop
sub $34626, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%rax)
nop
nop
nop
and $10343, %r15
lea addresses_WT_ht+0x1a77c, %rdx
cmp %rsi, %rsi
movw $0x6162, (%rdx)
nop
nop
nop
mfence
lea addresses_WT_ht+0xae32, %rdx
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x15c5c, %rsi
lea addresses_D_ht+0x7c, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $102, %rcx
rep movsl
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0xa97c, %rsi
lea addresses_A_ht+0xaf7c, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $9, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x44, %r15
nop
and $44010, %rsi
movw $0x6162, (%r15)
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x8b7c, %rax
nop
nop
nop
nop
nop
dec %rdx
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
lfence
lea addresses_UC_ht+0x207c, %rax
nop
nop
nop
nop
add $56766, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
nop
xor $63147, %rdx
lea addresses_WC_ht+0x6d5c, %rsi
lea addresses_normal_ht+0x223c, %rdi
nop
dec %rbp
mov $18, %rcx
rep movsb
nop
nop
nop
cmp $33851, %rsi
lea addresses_UC_ht+0xe17c, %rdi
nop
nop
nop
add $59778, %r15
mov (%rdi), %rax
nop
inc %rdx
lea addresses_A_ht+0x104fc, %rsi
lea addresses_WT_ht+0xff04, %rdi
xor $8374, %rdx
mov $80, %rcx
rep movsw
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rdx

// Faulty Load
lea addresses_US+0x18f7c, %r11
cmp %r9, %r9
vmovntdqa (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'48': 29, '46': 4, '49': 24, '45': 460, '00': 100, '08': 1}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 49 45 45 45 45 00 45 45 45 00 00 00 45 45 45 45 00 45 00 00 45 45 45 00 45 45 45 45 00 45 45 00 00 45 45 45 00 45 00 00 00 45 45 45 00 45 45 49 45 45 48 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 48 48 45 45 45 45 45 45 49 00 45 49 00 45 00 00 00 48 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 49 45 45 45 45 45 46 45 00 45 45 45 00 49 45 45 45 45 45 00 49 48 45 45 45 45 45 45 45 45 49 45 49 00 45 48 00 45 45 45 48 45 45 00 45 45 00 45 49 45 45 45 45 45 45 45 45 45 48 45 45 45 45 49 45 45 45 48 45 45 45 48 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 00 45 45 00 45 45 49 45 45 45 45 45 00 00 00 00 49 48 45 45 45 45 00 00 00 45 45 00 45 00 00 00 45 45 45 45 49 45 45 45 00 45 00 45 45 00 45 46 45 45 45 00 45 45 48 49 48 45 00 45 00 45 08 45 45 48 00 00 00 45 00 00 00 45 49 45 45 45 00 48 45 45 45 45 45 46 45 45 45 49 00 45 00 00 45 45 45 45 45 45 45 48 00 00 49 48 48 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 00 45 45 00 45 00 45 45 45 00 46 00 49 45 45 45 45 45 00 00 48 00 45 49 45 00 45 45 00 45 45 48 45 45 45 45 45 45 45 45 48 48 45 45 45 00 45 45 45 45 45 45 45 00 00 00 45 45 45 00 45 45 48 45 45 00 45 00 45 00 45 45 45 00 00 00 45 00 45 45 45 00 00 45 00 45 45 00 45 45 45 00 45 00 45 49 45 45 45 45 45 45 45 45 45 00 49 00 45 45 45 00 49 45 45 45 45 45 45 45 45 48 00
*/
