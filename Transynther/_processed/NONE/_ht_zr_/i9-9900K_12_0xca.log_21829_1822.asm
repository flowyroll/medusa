.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8720, %r10
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x4d20, %rbp
clflush (%rbp)
nop
and %r10, %r10
mov (%rbp), %eax
nop
nop
nop
nop
nop
and $57046, %rbp
lea addresses_normal_ht+0x1662d, %r10
cmp %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x4860, %r14
nop
add $36669, %r9
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
sub %rbp, %rbp
lea addresses_UC_ht+0xf320, %rsi
lea addresses_normal_ht+0x40a0, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $106, %rcx
rep movsq
nop
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x2720, %rbp
nop
nop
nop
nop
nop
and %r14, %r14
mov (%rbp), %rsi
cmp $44148, %rdi
lea addresses_normal_ht+0x14920, %rax
nop
nop
cmp $41167, %r15
movb $0x61, (%rax)
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x5d20, %rax
nop
nop
nop
nop
nop
cmp %r10, %r10
and $0xffffffffffffffc0, %rax
vmovntdqa (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0xf620, %r9
dec %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
xor %r14, %r14
lea addresses_D_ht+0xf720, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
cmp $15096, %rbp
lea addresses_WC_ht+0xbb20, %rsi
nop
nop
nop
sub %r15, %r15
mov (%rsi), %r12
nop
nop
nop
and $11675, %rdi
lea addresses_normal_ht+0xf1cc, %rcx
nop
nop
nop
nop
cmp $1512, %rsi
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %rax
nop
cmp %r15, %r15
lea addresses_D_ht+0x145a0, %rbp
nop
nop
nop
nop
nop
dec %rax
mov (%rbp), %r10
nop
nop
nop
nop
sub $24527, %r12
lea addresses_WC_ht+0xf6e0, %rsi
lea addresses_normal_ht+0xd750, %rdi
nop
nop
nop
and $21255, %r15
mov $126, %rcx
rep movsq
nop
nop
nop
sub $13068, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_WT+0x16b20, %rbp
nop
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rbp), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'44': 872, '49': 2933, '00': 14980, '48': 3044}
00 48 48 00 00 00 49 48 00 00 49 00 44 48 00 00 00 49 48 00 00 00 49 00 00 00 48 48 00 00 49 00 44 00 49 00 00 00 49 48 48 49 00 00 00 49 48 00 00 49 00 44 00 49 48 48 49 48 00 44 49 48 00 00 00 48 00 00 00 48 00 00 00 00 49 48 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 00 44 49 48 00 00 49 48 00 00 00 00 00 00 00 48 00 00 49 00 48 00 00 00 00 49 00 00 00 49 48 00 48 00 00 00 00 48 00 00 00 48 48 00 48 00 00 00 48 00 00 49 00 00 44 00 49 00 00 00 48 00 00 49 00 00 00 48 00 00 49 00 00 00 48 00 00 00 00 00 44 00 00 00 00 00 00 00 00 49 48 00 00 00 48 00 00 44 49 00 48 00 00 49 00 00 44 00 48 00 00 00 00 00 00 00 49 00 00 00 49 48 00 00 00 00 44 00 00 00 00 00 00 00 44 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 48 00 00 49 48 00 00 49 48 00 44 00 00 00 44 49 48 00 48 49 00 00 00 44 48 48 00 00 49 00 00 49 00 44 00 49 00 44 00 49 00 00 00 49 48 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 48 00 00 48 48 00 48 00 00 48 00 49 00 00 49 48 00 00 00 00 00 00 48 00 00 44 48 00 00 00 49 00 48 00 00 49 00 48 00 49 00 00 00 48 49 48 00 00 00 49 48 00 00 00 49 48 44 00 49 00 00 00 00 49 48 48 00 00 48 00 00 00 49 00 00 00 49 00 00 00 48 00 00 00 49 00 00 00 49 00 44 00 00 00 00 00 00 49 00 00 49 48 00 00 48 48 00 49 00 00 49 48 00 00 49 48 00 49 00 00 48 49 00 00 49 00 00 49 48 00 00 00 48 00 00 49 00 00 00 00 00 00 49 00 00 00 48 00 00 44 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 48 00 48 49 48 00 00 00 49 00 00 00 49 48 00 48 00 00 49 00 44 00 49 00 00 00 49 00 00 00 48 48 00 49 00 00 00 00 49 00 00 44 00 00 00 00 00 00 00 00 00 49 00 00 00 48 00 00 00 49 00 00 00 00 48 48 48 49 00 48 00 48 44 00 49 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 49 00 48 00 00 49 48 00 00 00 49 00 44 00 49 48 00 49 00 00 44 00 49 48 44 49 00 00 00 49 00 00 49 00 00 00 00 00 48 48 49 00 48 00 49 48 00 48 49 00 00 00 00 49 48 48 00 00 00 00 44 00 48 00 00 00 49 00 00 00 49 00 00 00 49 48 00 00 49 00 48 00 00 49 00 44 48 49 00 00 00 00 00 44 00 48 00 00 00 49 00 00 00 48 00 00 00 48 00 00 00 49 00 00 00 49 00 00 44 48 00 00 00 48 00 00 00 49 48 00 00 49 48 48 00 49 00 00 00 00 00 00 00 44 00 00 00 00 00 49 00 00 00 00 00 00 49 48 00 00 00 48 48 00 00 49 00 00 00 49 48 00 49 00 00 00 49 00 00 48 00 48 00 00 44 00 49 00 00 49 00 48 00 48 00 00 00 49 48 44 00 49 00 48 00 00 49 48 00 00 49 48 00 00 49 48 00 49 00 00 00 49 48 44 00 49 00 00 00 49 48 00 00 49 48 00 00 00 48 00 00 00 49 00 00 00 00 49 48 00 00 00 00 00 44 00 48 00 00 00 49 48 00 00 49 48 44 00 00 00 00 00 49 00 00 48 00 48 00 00 00 49 48 00 00 49 48 00 00 49 00 00 00 00 00 00 49 00 00 00 48 48 00 00 49 00 00 00 00 00 00 44 00 48 00 00 48 00 00 48 00 00 48 00 00 00 49 00 00 00 00 48 00 00 00 00 00 00 49 48 00 00 49 48 00 48 49 48 00 00 49 00 00 00 49 48 00 00 00 00 00 00 00 48 00 00 00 49 00 00 00 49 00 00 00 48 00 00 00 49 00 00 00 49 48 00 00 00 49 48 00 00 00 00 00 48 00 00 49 48 00 00 00 48 00 00 00 49 00 48 00 00 00 49 00 00 00 49
*/
