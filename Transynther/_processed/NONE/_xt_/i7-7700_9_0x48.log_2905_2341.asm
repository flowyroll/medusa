.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x11b22, %rsi
lea addresses_WT_ht+0x8b6a, %rdi
nop
nop
add %r8, %r8
mov $61, %rcx
rep movsw
nop
xor %r14, %r14
lea addresses_normal_ht+0x1a38a, %r14
xor $1247, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r14)
nop
cmp $56855, %rdx
lea addresses_WT_ht+0x8b62, %rsi
lea addresses_D_ht+0xe262, %rdi
nop
nop
cmp %r13, %r13
mov $7, %rcx
rep movsq
xor %rdi, %rdi
lea addresses_WT_ht+0x14aa2, %rsi
lea addresses_D_ht+0xb086, %rdi
nop
xor $15167, %r9
mov $95, %rcx
rep movsw
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x2ea2, %r8
nop
nop
nop
nop
nop
sub $59512, %r14
mov (%r8), %rdi
nop
nop
nop
nop
sub $21845, %rdx
lea addresses_UC_ht+0x182a2, %rsi
lea addresses_UC_ht+0x12a2, %rdi
nop
nop
add $17638, %r8
mov $22, %rcx
rep movsq
nop
sub %rdx, %rdx
lea addresses_D_ht+0x68ca, %r14
nop
nop
sub %rdx, %rdx
movups (%r14), %xmm2
vpextrq $1, %xmm2, %r8
nop
and $30292, %r14
lea addresses_WC_ht+0x17ea2, %rsi
add %rdi, %rdi
mov (%rsi), %r13
nop
xor $46012, %rdx
lea addresses_UC_ht+0x17c02, %r9
nop
nop
nop
nop
nop
dec %rdx
movb $0x61, (%r9)
nop
nop
nop
nop
nop
xor $2934, %rcx
lea addresses_A_ht+0x11782, %rsi
lea addresses_normal_ht+0x7282, %rdi
nop
nop
nop
nop
and $54739, %rdx
mov $68, %rcx
rep movsb
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x18fa2, %rsi
lea addresses_normal_ht+0xf4a2, %rdi
clflush (%rdi)
add $1765, %r13
mov $81, %rcx
rep movsl
nop
nop
and $20123, %r14
lea addresses_UC_ht+0x1dea2, %r9
nop
nop
nop
cmp %rcx, %rcx
mov (%r9), %dx
nop
dec %r9
lea addresses_UC_ht+0x1a882, %rsi
nop
nop
nop
nop
xor %r9, %r9
mov (%rsi), %rcx
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x18aa2, %rdi
nop
nop
nop
sub $6988, %r13
movb (%rdi), %r14b
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1a306, %r9
nop
inc %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0x78a2, %rdi
nop
nop
cmp $3210, %rbp
movw $0x5152, (%rdi)
nop
nop
nop
cmp $56316, %rbp

// Load
lea addresses_WC+0xa3a2, %rbp
nop
nop
and $52878, %rax
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
nop
and %r14, %r14

// Load
lea addresses_normal+0x1cd22, %rdi
nop
nop
xor %rbp, %rbp
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
mov $0xc22, %rcx
nop
xor $33395, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
nop
cmp $2645, %rax

// Store
lea addresses_UC+0x16a2, %rcx
sub $53281, %rbp
movw $0x5152, (%rcx)
nop
sub %rbp, %rbp

// Store
lea addresses_normal+0xb6a2, %rax
cmp %rbp, %rbp
movb $0x51, (%rax)
add %rdi, %rdi

// Faulty Load
lea addresses_normal+0x3aa2, %rax
nop
and $59026, %rdi
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 10, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'34': 2905}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
