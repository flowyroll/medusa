.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x178d0, %r9
nop
nop
nop
nop
xor $21824, %rcx
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x1e990, %rax
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rax)
nop
cmp %r12, %r12
lea addresses_A_ht+0x19790, %r15
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %r15
movntdq %xmm7, (%r15)
nop
and %r12, %r12
lea addresses_A_ht+0x1ad10, %r8
nop
nop
sub %rdx, %rdx
movb (%r8), %r15b
lfence
lea addresses_normal_ht+0x17362, %rdx
clflush (%rdx)
sub $54917, %r8
movb (%rdx), %r15b
xor %rax, %rax
lea addresses_WC_ht+0xbb90, %r9
cmp %rcx, %rcx
movw $0x6162, (%r9)
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0xcb90, %rsi
lea addresses_D_ht+0xec90, %rdi
nop
nop
nop
nop
xor $58453, %r12
mov $106, %rcx
rep movsq
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0xb590, %rsi
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x17a0e, %r12
sub %rax, %rax
mov (%r12), %r9w
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx

// Store
lea addresses_UC+0x16390, %rbp
nop
add $23266, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rbp)
nop
xor $18028, %r13

// Faulty Load
lea addresses_UC+0x16390, %r15
nop
nop
nop
nop
nop
sub $31529, %r14
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
