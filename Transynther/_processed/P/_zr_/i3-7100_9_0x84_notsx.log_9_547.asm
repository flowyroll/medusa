.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdc99, %r9
clflush (%r9)
nop
nop
nop
sub %r12, %r12
mov (%r9), %ecx
nop
nop
cmp $52240, %rbp
lea addresses_D_ht+0x6e49, %r13
clflush (%r13)
and %rcx, %rcx
movb (%r13), %r14b
add %r13, %r13
lea addresses_D_ht+0x64a1, %rsi
lea addresses_D_ht+0xb849, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $120, %rcx
rep movsb
add %rdi, %rdi
lea addresses_WT_ht+0x74e9, %r13
nop
cmp $19771, %rbp
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
nop
add $50636, %rdi
lea addresses_UC_ht+0x4249, %r9
nop
nop
nop
nop
xor $39571, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x18c9, %rsi
lea addresses_D_ht+0x1e249, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $17, %rcx
rep movsl
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0x7949, %rsi
nop
nop
xor $40537, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xd009, %rdi
inc %rcx
movl $0x61626364, (%rdi)
add %rcx, %rcx
lea addresses_A_ht+0x8279, %rbp
nop
nop
nop
nop
nop
and $35672, %r14
movb (%rbp), %cl
nop
nop
nop
add $54107, %r13
lea addresses_normal_ht+0x13f49, %rsi
lea addresses_WC_ht+0xad89, %rdi
nop
mfence
mov $66, %rcx
rep movsq
nop
add %r14, %r14
lea addresses_WC_ht+0xb149, %rsi
lea addresses_WC_ht+0x4889, %rdi
and $26915, %r13
mov $61, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0xed79, %rsi
lea addresses_A_ht+0x6f29, %rdi
nop
nop
xor $5571, %r14
mov $79, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x1f849, %rsi
lea addresses_D+0x1e189, %rdi
nop
nop
nop
nop
cmp $42735, %rbp
mov $44, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
mov $0x249, %r12
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r12), %ebp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
