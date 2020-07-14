.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x170a3, %rsi
lea addresses_D_ht+0x124e3, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r11, %r11
mov $39, %rcx
rep movsq
nop
nop
cmp $5615, %rcx
lea addresses_WC_ht+0x92a3, %rsi
lea addresses_D_ht+0x16a23, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r11
mov $29, %rcx
rep movsw
nop
nop
nop
xor $15948, %r12
lea addresses_D_ht+0x1cd23, %r14
nop
nop
nop
nop
xor %rax, %rax
movb (%r14), %cl
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x12ca3, %rdi
nop
sub %r12, %r12
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r14
nop
dec %rsi
lea addresses_WC_ht+0xa8a3, %rsi
lea addresses_A_ht+0x44a3, %rdi
nop
nop
nop
add $17354, %r9
mov $17, %rcx
rep movsq
nop
nop
nop
add $25575, %r14
lea addresses_D_ht+0x1720b, %rsi
lea addresses_normal_ht+0x19aa7, %rdi
nop
xor %r11, %r11
mov $22, %rcx
rep movsw
nop
cmp $3990, %r9
lea addresses_WT_ht+0x114a3, %rsi
lea addresses_D_ht+0x168f7, %rdi
cmp %rax, %rax
mov $41, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xcab3, %rsi
lea addresses_WT_ht+0xc42f, %rdi
sub %r11, %r11
mov $74, %rcx
rep movsl
nop
nop
nop
cmp $7933, %rdi
lea addresses_WT_ht+0x1cba3, %r12
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x12423, %rsi
lea addresses_WC_ht+0x128a3, %rdi
nop
nop
nop
cmp %r12, %r12
mov $45, %rcx
rep movsl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x4ac3, %r9
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r9)
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x16ca3, %rsi
nop
nop
nop
nop
and $861, %r12
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x1c96b, %rsi
lea addresses_A_ht+0xa3, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $24, %rcx
rep movsq
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x9e23, %rsi
nop
nop
add $64289, %rcx
movb $0x51, (%rsi)
nop
nop
nop
xor %r9, %r9

// REPMOV
mov $0xe89, %rsi
mov $0xca3, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $26, %rcx
rep movsl
nop
nop
nop
nop
nop
add $4351, %r10

// Store
lea addresses_US+0x7ee3, %r9
nop
nop
nop
nop
nop
add $10301, %rbp
movl $0x51525354, (%r9)
dec %r10

// Store
lea addresses_A+0x3fa3, %rcx
nop
nop
add $17319, %r15
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
nop
xor $61619, %rsi

// Faulty Load
lea addresses_normal+0x24a3, %r10
nop
nop
nop
xor $37341, %r9
movb (%r10), %cl
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'34': 50}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
