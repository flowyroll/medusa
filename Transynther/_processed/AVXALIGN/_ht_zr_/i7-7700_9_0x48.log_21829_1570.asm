.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16bd0, %r15
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r8
movq %r8, (%r15)
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0x122f8, %rax
nop
dec %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %rax
movaps %xmm2, (%rax)
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0xaab8, %r10
nop
nop
nop
nop
add $667, %r13
movl $0x61626364, (%r10)
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0xc5b8, %r10
nop
nop
cmp %r13, %r13
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0xcab8, %rsi
lea addresses_WT_ht+0x1ceb8, %rdi
nop
nop
sub %r8, %r8
mov $86, %rcx
rep movsq
nop
nop
nop
nop
sub $46462, %rax
lea addresses_UC_ht+0xe730, %rsi
lea addresses_D_ht+0x1bab8, %rdi
dec %r8
mov $54, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x90f8, %rsi
lea addresses_WC_ht+0x7afa, %rdi
nop
nop
nop
nop
xor $2739, %r10
mov $86, %rcx
rep movsq
nop
nop
nop
inc %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdx

// Store
lea addresses_WT+0x1d2ac, %r10
nop
nop
nop
add %r13, %r13
movw $0x5152, (%r10)
sub %rcx, %rcx

// Store
lea addresses_A+0x1bab8, %r13
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_A+0xe5d8, %r11
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
cmp $56436, %r10

// Faulty Load
lea addresses_WT+0x172b8, %rcx
nop
nop
nop
nop
cmp $38376, %r13
movntdqa (%rcx), %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdx
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'47': 3710, '48': 5724, '46': 5686, '00': 6709}
46 00 00 00 00 00 46 46 46 47 46 46 47 46 47 46 47 46 46 46 00 48 46 46 46 00 00 00 48 00 48 48 48 48 00 48 48 00 48 00 00 00 00 00 47 00 46 46 47 46 47 47 46 47 46 46 46 47 46 47 46 47 46 47 00 46 48 00 48 00 48 00 00 48 48 48 00 48 48 48 48 00 00 00 46 00 46 47 46 46 47 47 46 46 46 47 46 46 47 47 46 00 48 47 46 46 46 46 00 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 00 00 00 00 46 00 47 47 46 47 47 46 46 00 46 47 46 47 00 00 48 00 00 48 48 00 48 00 48 48 00 48 48 00 00 00 00 48 00 00 46 47 46 00 47 46 46 46 46 47 46 46 47 00 46 46 00 00 00 00 48 48 00 48 48 00 48 00 00 00 46 47 46 46 47 46 47 46 46 46 46 47 46 46 46 48 00 00 48 48 00 47 46 47 47 46 47 46 46 00 48 00 48 48 00 48 00 48 48 48 48 48 00 00 00 47 46 00 47 47 46 46 46 47 46 46 47 47 46 47 47 46 46 48 48 48 48 48 48 00 48 00 48 00 00 00 00 00 46 00 46 46 46 46 46 47 46 46 46 46 47 00 46 48 48 00 48 48 48 48 00 48 48 48 00 48 48 00 00 00 48 00 00 00 46 47 47 46 46 46 46 46 46 46 48 48 48 46 48 47 48 00 46 46 00 48 46 46 47 46 48 00 48 48 48 48 48 00 48 48 00 00 47 46 46 46 47 46 46 47 46 46 46 46 47 47 46 00 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 00 48 00 48 48 48 00 00 00 00 46 46 47 46 46 46 46 47 00 48 48 00 00 00 48 48 48 48 00 00 00 48 48 00 00 46 46 46 47 46 46 47 47 46 46 46 46 46 47 46 48 00 00 00 00 48 00 48 48 00 48 00 48 00 47 47 46 46 47 47 46 46 46 47 47 47 46 46 47 48 00 00 48 00 48 00 48 00 48 48 48 48 48 00 00 00 47 00 46 46 47 46 46 47 47 46 47 46 46 47 46 46 46 46 46 48 48 00 48 48 00 00 48 00 48 00 00 00 00 46 47 47 46 47 46 46 46 46 47 47 46 46 00 00 48 48 00 00 48 48 00 00 48 48 48 48 00 48 00 00 00 00 48 48 00 00 48 48 00 00 48 00 00 00 00 47 00 46 46 47 47 46 47 46 46 47 46 46 47 46 46 46 46 47 46 48 46 00 48 00 00 00 48 48 48 48 48 48 00 48 48 00 00 46 47 46 46 46 46 47 47 46 00 46 00 48 48 46 00 00 48 48 46 48 46 48 48 48 48 48 48 00 48 48 48 00 48 00 00 00 00 00 48 48 00 00 46 46 47 46 47 46 46 46 47 46 46 47 47 46 47 46 00 00 00 48 00 48 48 48 48 48 48 48 48 00 00 00 00 48 00 47 00 46 47 46 47 46 46 46 46 47 00 48 46 46 48 48 48 00 48 48 00 48 48 00 00 48 00 48 48 48 00 00 00 47 46 46 46 46 46 46 47 47 47 47 46 46 46 46 46 46 00 00 48 00 00 48 48 00 48 00 00 00 48 48 00 48 48 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 46 46 46 46 47 46 46 47 47 47 46 46 47 46 47 46 46 46 47 46 47 46 00 48 00 48 48 48 00 48 48 48 48 00 48 48 00 00 46 46 00 46 46 47 47 46 47 46 46 47 46 46 47 46 47 46 47 46 00 00 00 48 48 00 48 48 48 48 48 00 48 48 00 00 48 00 48 00 00 00 00 00 47 46 47 47 46 47 46 46 47 47 46 47 46 47 47 46 46 47 47 47 48 47 46 46 47 47 47 00 47 00 00 48 00 48 48 48 48 48 00 48 00 48 00 48 48 48 00 00 46 00 47 46 47 46 46 46 46 46 47 46 46 47 46 47 47 00 48 48 48 00 00 48 00 48 00 00 48 00 00 48 00 48 48 00 48 00 00 00 00 00 46 47 47 46 46 47 46 46 46 47 46 46 47 47 46 47 46 00 48 00 00 48 48 48 48 00 00 00 46 46 47 46 46 47 46 46 47 46 47 47 47 48 00 48 47 46 47 46 48 47 48 48 00 00 00 00 00 48 00 00 48 48 48 48 00 48 48 00 48 00
*/
