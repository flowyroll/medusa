.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6c95, %r10
nop
nop
nop
sub $30210, %r13
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
and %r15, %r15
lea addresses_WT_ht+0x17ce8, %r13
nop
and $50435, %r14
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
xor $57706, %rsi
lea addresses_WT_ht+0xa295, %r10
nop
nop
nop
nop
nop
cmp $40230, %r8
movb (%r10), %r15b
nop
nop
nop
nop
cmp $37625, %r14
lea addresses_WC_ht+0xacfd, %rsi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%rsi), %r14d
nop
nop
inc %r15
lea addresses_UC_ht+0x13e95, %rsi
lea addresses_WT_ht+0x12315, %rdi
nop
nop
nop
nop
nop
and $29920, %r15
mov $23, %rcx
rep movsw
nop
nop
xor $48818, %rsi
lea addresses_WC_ht+0xead5, %r13
nop
sub $43038, %r14
movl $0x61626364, (%r13)
nop
and $10599, %r15
lea addresses_A_ht+0x13315, %r10
nop
xor %rbp, %rbp
mov (%r10), %di
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1e095, %rbp
nop
dec %rcx
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
add %r15, %r15
lea addresses_UC_ht+0x37ce, %rsi
lea addresses_WT_ht+0xef1b, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $28, %rcx
rep movsl
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0xdae1, %rbp
nop
nop
nop
nop
cmp $19095, %r14
mov (%rbp), %esi
xor $10126, %r15
lea addresses_D_ht+0xb215, %rsi
lea addresses_WC_ht+0x1a5c4, %rdi
nop
nop
nop
nop
inc %r8
mov $91, %rcx
rep movsb
nop
sub %r8, %r8
lea addresses_UC_ht+0xc295, %r13
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r13), %cx
nop
nop
nop
nop
sub $48832, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_A+0x15c8d, %rbp
inc %rdx
movl $0x51525354, (%rbp)
nop
nop
and $33676, %r13

// Store
lea addresses_UC+0xa95, %rbp
dec %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
and $24616, %r10

// Faulty Load
lea addresses_US+0x6a95, %rbp
sub $12507, %rbx
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 2}
00 00
*/
