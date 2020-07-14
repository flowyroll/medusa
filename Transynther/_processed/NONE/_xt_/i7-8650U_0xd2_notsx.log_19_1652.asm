.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1a1e, %r14
nop
add $22475, %rdx
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
nop
add $44752, %r14
lea addresses_normal_ht+0xa10e, %r10
add %rax, %rax
movb (%r10), %dl
nop
nop
nop
nop
xor $38511, %rax
lea addresses_normal_ht+0x12cce, %rsi
lea addresses_normal_ht+0x6d3e, %rdi
xor $35065, %rax
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x1661e, %rsi
lea addresses_A_ht+0x1aa1e, %rdi
and %rbp, %rbp
mov $62, %rcx
rep movsw
nop
nop
and $57022, %rbp
lea addresses_WT_ht+0xea7e, %rbp
nop
nop
nop
nop
nop
cmp $19797, %rax
mov (%rbp), %esi
xor %r14, %r14
lea addresses_D_ht+0x1da1e, %rcx
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
and $18120, %rsi
lea addresses_WT_ht+0x1811e, %rsi
lea addresses_WC_ht+0x10fb5, %rdi
nop
nop
sub $51869, %rdx
mov $7, %rcx
rep movsw
and $16579, %rdi
lea addresses_normal_ht+0xca39, %rsi
nop
nop
nop
dec %r10
movb $0x61, (%rsi)
nop
add %rdx, %rdx
lea addresses_UC_ht+0xa1a6, %r14
inc %rcx
movw $0x6162, (%r14)
nop
add %rax, %rax
lea addresses_WT_ht+0x401e, %r14
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x861e, %rax
clflush (%rax)
nop
nop
xor $63088, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x1565a, %rcx
nop
dec %rbp
mov (%rcx), %r14
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x1821e, %rdx
nop
add %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm6
and $0xffffffffffffffc0, %rdx
movntdq %xmm6, (%rdx)
cmp %r10, %r10
lea addresses_WC_ht+0x754e, %rbp
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x1751e, %rax
cmp $29233, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%rax)
xor %r15, %r15

// Load
lea addresses_normal+0x1921e, %rbp
nop
nop
nop
nop
nop
add $63842, %rcx
mov (%rbp), %si
nop
nop
and %rsi, %rsi

// REPMOV
lea addresses_WT+0x14a16, %rsi
lea addresses_PSE+0x1dc1e, %rdi
nop
nop
nop
sub %rax, %rax
mov $21, %rcx
rep movsb
nop
nop
nop
add $60544, %rsi

// Store
lea addresses_RW+0x16e, %r15
nop
inc %rdi
movb $0x51, (%r15)
nop
nop
sub $46213, %rsi

// Store
lea addresses_normal+0xb21e, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movaps %xmm4, (%r15)
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_normal+0x1921e, %r15
nop
nop
nop
inc %rbp
mov (%r15), %ecx
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_normal+0x1921e, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%rcx), %di
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'34': 19}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
