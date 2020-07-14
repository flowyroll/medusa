.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7aed, %r9
nop
nop
inc %rbp
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
cmp $52783, %r9
lea addresses_UC_ht+0x6bfd, %rax
nop
xor $23242, %r8
movups (%rax), %xmm6
vpextrq $0, %xmm6, %r15
dec %r9
lea addresses_WT_ht+0x1c60c, %rsi
lea addresses_WT_ht+0x1a35d, %rdi
clflush (%rdi)
nop
nop
and %rax, %rax
mov $33, %rcx
rep movsq
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x1a9fd, %rbp
nop
mfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x12d9d, %rbp
nop
nop
nop
nop
nop
cmp $402, %rax
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
xor $53459, %rbp
lea addresses_D_ht+0x15fbd, %rsi
lea addresses_A_ht+0x9fd, %rdi
nop
sub $22251, %rbp
mov $96, %rcx
rep movsl
nop
nop
nop
nop
dec %r15
lea addresses_WC_ht+0xeb21, %rdi
nop
nop
nop
nop
inc %rbp
movb (%rdi), %r15b
nop
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x1983d, %rdi
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rdi
movntdq %xmm4, (%rdi)
nop
add $65518, %rdi
lea addresses_A_ht+0x1037d, %r8
nop
nop
nop
nop
nop
sub $11551, %r15
movw $0x6162, (%r8)
nop
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x19dfd, %rsi
lea addresses_normal+0x131ae, %rdi
nop
xor %r9, %r9
mov $106, %rcx
rep movsb
dec %r9

// Store
lea addresses_PSE+0x1b3fd, %rsi
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
cmp $41932, %rdi

// REPMOV
lea addresses_A+0xb66b, %rsi
lea addresses_A+0x157fd, %rdi
inc %r14
mov $9, %rcx
rep movsq
nop
nop
nop
xor $35889, %rdi

// REPMOV
lea addresses_PSE+0x1c65e, %rsi
lea addresses_WT+0x1ebfd, %rdi
nop
nop
nop
xor %r14, %r14
mov $74, %rcx
rep movsq
nop
nop
nop
cmp $25658, %r12

// Store
lea addresses_PSE+0x1b3fd, %r12
clflush (%r12)
nop
nop
inc %r9
movw $0x5152, (%r12)
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_PSE+0x1b3fd, %rbx
nop
nop
nop
nop
nop
xor $11217, %r9
movntdqa (%rbx), %xmm3
vpextrq $0, %xmm3, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'33': 5, '52': 30}
52 52 33 52 33 52 52 52 52 52 52 52 52 52 52 52 52 33 52 52 52 33 52 52 52 52 52 52 33 52 52 52 52 52 52
*/
