.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9bd8, %r13
clflush (%r13)
nop
xor $14365, %r8
mov (%r13), %cx
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0xd930, %r8
inc %rsi
movb (%r8), %cl
nop
sub $63130, %r13
lea addresses_WT_ht+0xc2d8, %rsi
lea addresses_WT_ht+0x1c990, %rdi
nop
nop
add $25272, %r14
mov $19, %rcx
rep movsb
nop
nop
and $63582, %r15
lea addresses_UC_ht+0x7578, %rsi
lea addresses_UC_ht+0x11a18, %rdi
nop
sub $14945, %rax
mov $38, %rcx
rep movsw
nop
nop
nop
nop
xor $45148, %rsi
lea addresses_normal_ht+0x1e558, %rsi
lea addresses_UC_ht+0x1a7d8, %rdi
nop
nop
nop
cmp %r13, %r13
mov $18, %rcx
rep movsq
nop
nop
inc %r8
lea addresses_normal_ht+0x1bd8, %rcx
nop
nop
and %r15, %r15
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x11fd8, %r13
nop
nop
nop
nop
nop
xor $30791, %rsi
mov (%r13), %r8w
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x11bd8, %r8
nop
nop
nop
nop
nop
inc %rdi
movb (%r8), %r15b
nop
nop
and $33974, %r8
lea addresses_normal_ht+0x3bd8, %rsi
nop
sub %r15, %r15
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
nop
and $50386, %rsi
lea addresses_WC_ht+0x10dd8, %r13
nop
nop
nop
nop
nop
sub %r8, %r8
movl $0x61626364, (%r13)
nop
cmp %rsi, %rsi
lea addresses_A_ht+0xf0e2, %rsi
lea addresses_WC_ht+0xc758, %rdi
nop
nop
sub %r8, %r8
mov $22, %rcx
rep movsw
cmp %r14, %r14
lea addresses_D_ht+0x17dd8, %r14
nop
cmp $39559, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x27d8, %r14
nop
nop
inc %r8
movb (%r14), %r13b
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x60b8, %rsi
lea addresses_normal+0xb510, %rdi
nop
nop
nop
nop
xor $57134, %r10
mov $109, %rcx
rep movsq
nop
cmp %rbp, %rbp

// Load
lea addresses_RW+0x1c018, %rcx
nop
nop
sub $56311, %r9
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
inc %rsi

// Store
lea addresses_UC+0x8858, %rsi
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
inc %rdi

// Store
lea addresses_D+0x16d58, %r10
nop
nop
nop
nop
and $16639, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r10)
dec %rsi

// Store
lea addresses_WC+0x18d58, %rdi
nop
sub %r10, %r10
movb $0x51, (%rdi)
nop
nop
cmp %r10, %r10

// Store
mov $0xfd8, %r9
cmp %rsi, %rsi
movl $0x51525354, (%r9)
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0x87d8, %r9
nop
nop
xor %rdx, %rdx
movw $0x5152, (%r9)
nop
nop
dec %r9

// Store
lea addresses_RW+0x53d8, %rdi
nop
nop
nop
add $8314, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_PSE+0x151d8, %r9
nop
nop
nop
nop
nop
add $59050, %rsi
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rbp

// Exception!!!
nop
nop
mov (0), %rsi
nop
nop
nop
nop
and $8292, %rdi

// Faulty Load
mov $0xfd8, %r10
nop
nop
nop
nop
xor %rsi, %rsi
movaps (%r10), %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'54': 128, '00': 61}
54 54 54 54 00 54 00 54 54 54 54 00 00 00 54 54 00 54 54 54 00 00 54 54 00 54 54 00 54 54 00 00 54 00 00 54 54 00 54 00 54 54 54 54 00 00 00 54 54 00 54 54 00 54 54 54 00 54 54 00 54 00 54 00 00 00 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 00 00 00 54 54 54 54 00 00 00 54 54 54 54 54 54 00 00 54 54 54 00 00 00 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 00 00 00 00 00 54 54 54 00 00 54 54 54 54 54 54 54 54 54 00 00 54 00 54 54 54
*/
