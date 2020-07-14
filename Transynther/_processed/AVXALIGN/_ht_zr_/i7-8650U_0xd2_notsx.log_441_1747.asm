.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9c1f, %r8
nop
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x8b6, %rsi
lea addresses_WT_ht+0x16c3d, %rdi
xor %r11, %r11
mov $3, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $15607, %rdi
lea addresses_WC_ht+0x17f45, %rsi
lea addresses_A_ht+0x126c5, %rdi
nop
nop
nop
nop
nop
cmp $56365, %rbx
mov $13, %rcx
rep movsq
nop
nop
nop
cmp $24313, %rcx
lea addresses_WT_ht+0x1d8c5, %r14
nop
nop
nop
nop
nop
inc %r10
movups (%r14), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
cmp $65276, %rsi
lea addresses_D_ht+0x147d9, %rsi
lea addresses_D_ht+0x80cd, %rdi
inc %rbx
mov $2, %rcx
rep movsw
nop
nop
nop
nop
add $18182, %rcx
lea addresses_WC_ht+0xa7d, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor %rdi, %rdi
movb (%rbx), %r11b
nop
nop
add $6184, %rdi
lea addresses_A_ht+0x5ac5, %rbx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rbx), %r14
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0xd6c5, %r10
nop
inc %r8
mov (%r10), %r11w
nop
nop
inc %rdi
lea addresses_UC_ht+0x10b65, %r14
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
xor $34635, %rcx
lea addresses_WT_ht+0x6688, %r10
xor %r11, %r11
movb $0x61, (%r10)
nop
cmp $11368, %r14
lea addresses_D_ht+0x52d5, %rbx
nop
nop
nop
nop
add $14269, %r11
mov (%rbx), %r8w
add $30784, %rsi
lea addresses_D_ht+0x1e8b5, %rdi
nop
nop
nop
and %r14, %r14
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xeae5, %r11
nop
nop
nop
nop
cmp $46452, %r14
movb $0x61, (%r11)
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x1b2c5, %r8
clflush (%r8)
cmp %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_normal+0x16b33, %rdx
nop
nop
nop
nop
add $43657, %rax
movl $0x51525354, (%rdx)
nop
nop
sub $32954, %rdx

// Store
lea addresses_WC+0x1a845, %rdi
clflush (%rdi)
nop
nop
nop
cmp $5967, %r12
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_RW+0x1f6c5, %rax
cmp %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
xor $22731, %r12

// Store
lea addresses_A+0x6f2f, %rax
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0x8805, %rax
nop
nop
nop
dec %rbp
movw $0x5152, (%rax)
nop
nop
sub %r13, %r13

// Load
lea addresses_WC+0x146c5, %rbp
nop
nop
nop
cmp $45770, %rdx
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
and %rdx, %rdx

// Store
lea addresses_WT+0xeb05, %rdi
nop
nop
nop
nop
cmp $20173, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rdi)
nop
xor $42231, %r13

// Store
lea addresses_RW+0x70c5, %rdi
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0xb806, %rbp
nop
and $64972, %r12
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_UC+0x3ec5, %rdi
cmp $26152, %r13
vmovntdqa (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 376, '48': 65}
00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 48 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 48 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
