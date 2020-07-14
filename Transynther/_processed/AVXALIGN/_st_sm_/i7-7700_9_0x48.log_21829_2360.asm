.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xd706, %rsi
lea addresses_WT_ht+0xfc0e, %rdi
clflush (%rdi)
nop
cmp %r15, %r15
mov $30, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xe22e, %rbp
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%rbp), %rax
nop
xor %rcx, %rcx
lea addresses_normal_ht+0xc15e, %rsi
nop
nop
nop
nop
xor %rdx, %rdx
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
inc %rcx
lea addresses_D_ht+0x1a48e, %rcx
nop
nop
nop
dec %rbp
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x16a0e, %rax
and %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%rax)
nop
nop
dec %rcx
lea addresses_D_ht+0x6ace, %rdi
nop
nop
nop
xor $51497, %r15
mov (%rdi), %rsi
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x1854e, %rdx
nop
nop
nop
cmp $18068, %rbp
movb $0x61, (%rdx)
nop
nop
inc %rsi
lea addresses_WC_ht+0x16c02, %rcx
nop
nop
nop
inc %rbp
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
and $34978, %r15
lea addresses_normal_ht+0x13a0e, %rdx
cmp %rbp, %rbp
movl $0x61626364, (%rdx)
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x4a9e, %rdi
nop
sub $10330, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1b6ea, %rdi
clflush (%rdi)
nop
nop
nop
xor $61478, %rdx
mov (%rdi), %ax
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0xd80e, %r15
nop
nop
nop
nop
nop
add $14481, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0xca4e, %rsi
nop
nop
cmp %rbp, %rbp
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x28fe, %rax
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rax)
nop
xor %r15, %r15
lea addresses_UC_ht+0xe62e, %rcx
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
cmp $44101, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0xb35e, %rdi
nop
nop
nop
nop
nop
sub $24740, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WC+0x7a0e, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%rdi)
cmp %rcx, %rcx

// Store
lea addresses_normal+0x1d28e, %rsi
nop
nop
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%rsi)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0x7a0e, %rdi
and $4532, %r15
movl $0x51525354, (%rdi)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0x7756, %r15
sub $24250, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_normal+0x1467e, %rdx
sub $14301, %rcx
movb (%rdx), %r15b
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_RW+0x1ceb6, %rdx
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
inc %rsi

// Faulty Load
lea addresses_WC+0x7a0e, %rsi
and %rdx, %rdx
mov (%rsi), %r8d
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
