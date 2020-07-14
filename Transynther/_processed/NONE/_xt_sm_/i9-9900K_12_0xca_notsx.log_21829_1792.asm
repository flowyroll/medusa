.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x15c0e, %r13
nop
nop
nop
nop
dec %r8
movb $0x61, (%r13)
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x12ad4, %r14
nop
nop
nop
nop
dec %rsi
movl $0x61626364, (%r14)
nop
nop
dec %r13
lea addresses_WC_ht+0x1eb8e, %rsi
nop
nop
nop
nop
lfence
movb $0x61, (%rsi)
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1b54e, %rbx
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%rbx)
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0xd28e, %rbx
nop
and %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x14d0e, %rbx
nop
nop
nop
nop
nop
cmp $23526, %rsi
mov (%rbx), %r14
xor $6527, %r14
lea addresses_normal_ht+0x1d08e, %r8
sub %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
nop
add $56589, %rbx
lea addresses_WC_ht+0x1c9e, %rsi
lea addresses_WC_ht+0x1e6ce, %rdi
nop
nop
nop
nop
xor $45188, %r12
mov $76, %rcx
rep movsb
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x11e76, %r14
sub %rbx, %rbx
movw $0x6162, (%r14)
and %r8, %r8
lea addresses_A_ht+0xf08e, %rbx
nop
nop
nop
nop
nop
xor %r12, %r12
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm4
vpextrq $0, %xmm4, %rcx
nop
and $29446, %r12
lea addresses_WC_ht+0x68e, %rbx
nop
nop
sub $12640, %rbp
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0xdcd6, %rsi
nop
nop
nop
nop
nop
inc %rbp
movw $0x6162, (%rsi)
nop
nop
nop
nop
add $25711, %rbp
lea addresses_normal_ht+0x77ce, %r12
nop
nop
nop
sub %rbx, %rbx
mov (%r12), %ebp
nop
nop
xor $45079, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1f1aa, %r12
nop
nop
nop
nop
nop
xor $14532, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r12)
nop
nop
xor %r9, %r9

// Store
lea addresses_A+0x13cce, %rcx
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
and %r9, %r9

// Store
lea addresses_UC+0x12f8e, %r12
and $61771, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r12)
nop
cmp $18970, %rax

// REPMOV
lea addresses_A+0x2a8e, %rsi
lea addresses_RW+0x1b42e, %rdi
nop
nop
nop
nop
dec %rax
mov $15, %rcx
rep movsw
nop
nop
add %r8, %r8

// Store
lea addresses_UC+0x100ea, %rax
nop
xor $63445, %rsi
movl $0x51525354, (%rax)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0x558e, %r8
nop
nop
nop
nop
nop
add %r9, %r9
movb $0x51, (%r8)
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_A+0x2a8e, %rbp
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
xor $943, %rcx

// Faulty Load
lea addresses_A+0x2a8e, %rdx
xor %rcx, %rcx
movb (%rdx), %r9b
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
