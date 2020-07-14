.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x12062, %r15
nop
nop
nop
nop
and $54309, %rax
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xe802, %rsi
lea addresses_D_ht+0x8d98, %rdi
and $29996, %rdx
mov $124, %rcx
rep movsl
nop
nop
nop
nop
xor $10855, %rdi
lea addresses_WT_ht+0x10362, %rdx
nop
nop
nop
nop
dec %rax
mov (%rdx), %si
nop
nop
and %r9, %r9
lea addresses_A_ht+0x1662, %rax
nop
nop
cmp $38080, %rdx
movw $0x6162, (%rax)
sub $41355, %rdx
lea addresses_WT_ht+0x1a2, %rdi
nop
nop
nop
xor $6700, %r9
movl $0x61626364, (%rdi)
cmp %rax, %rax
lea addresses_A_ht+0x1362, %r9
nop
nop
nop
nop
nop
dec %rsi
mov (%r9), %edi
cmp $41993, %rax
lea addresses_UC_ht+0x5ec2, %rdi
sub %rax, %rax
mov (%rdi), %r15d
and %rdx, %rdx
lea addresses_WC_ht+0x6ee2, %rsi
lea addresses_normal_ht+0x1e062, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $86, %rcx
rep movsb
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x4342, %rsi
lea addresses_A_ht+0x15662, %rdi
nop
nop
nop
dec %rdx
mov $95, %rcx
rep movsl
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0xc682, %rax
nop
nop
sub $35800, %rsi
mov (%rax), %r9w
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0xcd42, %r9
nop
nop
nop
nop
and $13762, %rcx
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
sub $15132, %r9
lea addresses_WT_ht+0x19236, %rsi
lea addresses_WC_ht+0x14a62, %rdi
nop
nop
nop
nop
add $9826, %r13
mov $68, %rcx
rep movsq
xor %r13, %r13
lea addresses_normal_ht+0x1bf72, %rsi
lea addresses_WT_ht+0x14b62, %rdi
nop
nop
nop
cmp %rax, %rax
mov $54, %rcx
rep movsw
inc %rdx
lea addresses_WC_ht+0x1d5f4, %rsi
lea addresses_normal_ht+0x1ce62, %rdi
nop
sub $61900, %r9
mov $90, %rcx
rep movsl
sub $31199, %r13
lea addresses_WC_ht+0x13aae, %r13
nop
nop
nop
and $49945, %r9
mov (%r13), %rdi
nop
nop
add $22271, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rdx

// Faulty Load
lea addresses_WC+0xce62, %r10
nop
nop
nop
mfence
vmovntdqa (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 11, '48': 2}
00 00 48 00 00 48 00 00 00 00 00 00 00
*/
