.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x16c9b, %rdx
nop
nop
sub %rsi, %rsi
mov (%rdx), %r11w
nop
nop
nop
nop
nop
sub $41351, %rax
lea addresses_A_ht+0xcf1, %rsi
lea addresses_A_ht+0x45ff, %rdi
nop
cmp $10713, %rax
mov $15, %rcx
rep movsl
nop
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0xf8ff, %rdx
nop
add $58616, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
and $54838, %rsi
lea addresses_A_ht+0x91ff, %rdx
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
xor $57928, %rbx
lea addresses_WC_ht+0x1a5cf, %rdx
add $41670, %rdi
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %rsi
nop
xor $35576, %rsi
lea addresses_WT_ht+0x37ff, %rsi
lea addresses_WC_ht+0x1186f, %rdi
nop
nop
nop
sub %r15, %r15
mov $114, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0xc5e7, %rsi
lea addresses_WC_ht+0x3e77, %rdi
nop
nop
nop
nop
nop
sub $29578, %r15
mov $0, %rcx
rep movsq
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0xf537, %rdi
nop
nop
add %rbx, %rbx
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x19427, %rsi
lea addresses_normal_ht+0x120df, %rdi
and $1742, %rax
mov $92, %rcx
rep movsl
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rdx

// Store
mov $0xbbf, %rdx
and %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovntdq %ymm0, (%rdx)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_normal+0x6f27, %r12
nop
nop
nop
nop
and $54314, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r12)
nop
nop
xor $37820, %rdx

// Faulty Load
lea addresses_US+0x1a8ff, %r13
sub %rbx, %rbx
mov (%r13), %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'00': 8, '49': 15, '14': 24, 'e0': 4}
00 00 49 49 49 14 14 14 14 49 14 14 14 49 49 14 49 14 14 14 14 49 49 49 00 49 14 e0 00 14 e0 00 00 49 49 14 14 14 e0 14 14 14 49 49 14 00 14 14 e0 00 14
*/
