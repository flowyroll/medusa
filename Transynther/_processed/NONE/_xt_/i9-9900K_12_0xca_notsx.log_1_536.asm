.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xf16, %r13
nop
nop
sub %rdi, %rdi
mov (%r13), %r11d
cmp %rdi, %rdi
lea addresses_WT_ht+0x28d6, %rdx
nop
nop
nop
nop
cmp %r12, %r12
mov (%rdx), %r11w
nop
and %rdi, %rdi
lea addresses_WT_ht+0x17a7e, %rbx
nop
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%rbx)
nop
nop
add $46687, %rdx
lea addresses_WT_ht+0x113ae, %r13
nop
nop
nop
cmp $57974, %r12
mov (%r13), %edi
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x12cee, %rbx
and %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rbx
movaps %xmm5, (%rbx)
nop
cmp $60735, %rdx
lea addresses_normal_ht+0xe0e, %r12
clflush (%r12)
nop
nop
cmp $15196, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r12)
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x1d56e, %r11
and %rdx, %rdx
mov (%r11), %rbx
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x18a18, %r12
nop
nop
nop
add %rdi, %rdi
movups (%r12), %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
nop
xor $53548, %rbx
lea addresses_A_ht+0x14ee, %rbx
nop
nop
sub %rdi, %rdi
movw $0x6162, (%rbx)
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0xbc2e, %rbx
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%rbx), %r13w
sub %r12, %r12
lea addresses_A_ht+0xf8ee, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
add $3536, %r13
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
sub $45243, %r15
lea addresses_normal_ht+0xd09e, %rsi
lea addresses_D_ht+0x13b6e, %rdi
clflush (%rdi)
sub $50925, %r15
mov $122, %rcx
rep movsb
nop
nop
nop
xor $45566, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi

// Load
lea addresses_A+0x114ee, %r9
clflush (%r9)
nop
inc %rbp
movntdqa (%r9), %xmm3
vpextrq $0, %xmm3, %rcx
cmp %rbp, %rbp

// Store
lea addresses_UC+0x139ee, %r10
nop
sub %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
cmp %rdi, %rdi

// Store
mov $0x1b0e10000000eae, %r14
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r14)
and $8264, %r10

// Faulty Load
lea addresses_A+0x114ee, %rbp
nop
nop
sub %r10, %r10
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'35': 1}
35
*/
