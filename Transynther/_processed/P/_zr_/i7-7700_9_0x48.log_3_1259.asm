.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x17356, %rsi
lea addresses_WC_ht+0x12ddf, %rdi
nop
nop
nop
nop
nop
sub $23590, %r14
mov $115, %rcx
rep movsl
nop
dec %r9
lea addresses_normal_ht+0x1bdf, %rsi
lea addresses_WT_ht+0x37df, %rdi
nop
nop
nop
sub $40921, %rax
mov $105, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_WC_ht+0x1285f, %r9
clflush (%r9)
nop
cmp $12255, %rax
movw $0x6162, (%r9)
nop
nop
nop
xor $24734, %r14
lea addresses_D_ht+0x119df, %r9
cmp $49006, %r14
movb (%r9), %cl
nop
and $36892, %rsi
lea addresses_A_ht+0x39df, %rdi
xor $56236, %r12
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x1505f, %rsi
nop
nop
nop
nop
and $9751, %r14
movb (%rsi), %al
nop
nop
nop
nop
cmp $51071, %rax
lea addresses_normal_ht+0x14df, %rcx
nop
nop
dec %rax
movw $0x6162, (%rcx)
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x78f7, %rax
sub %r12, %r12
mov (%rax), %r9w
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0xebf, %r12
cmp %r9, %r9
mov (%r12), %rax
nop
nop
and $34321, %rsi
lea addresses_normal_ht+0x1c1df, %r14
nop
nop
and %rdi, %rdi
mov (%r14), %cx
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x1817, %rcx
add $40284, %rsi
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x15197, %rsi
lea addresses_WC_ht+0xdabf, %rdi
nop
nop
nop
and %r12, %r12
mov $45, %rcx
rep movsb
nop
nop
nop
xor $39139, %rcx
lea addresses_normal_ht+0x1e25f, %rsi
lea addresses_WT_ht+0x153df, %rdi
nop
nop
nop
xor $50406, %r15
mov $92, %rcx
rep movsq
nop
nop
nop
cmp $13573, %r15
lea addresses_normal_ht+0x1107, %rsi
lea addresses_A_ht+0x10ebf, %rdi
nop
nop
nop
cmp %r12, %r12
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rsi

// Faulty Load
mov $0x9df, %rbp
nop
inc %rax
movb (%rbp), %r14b
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'00': 3}
00 00 00
*/
