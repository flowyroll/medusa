.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xcc5d, %rsi
nop
nop
nop
inc %r14
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
nop
xor $753, %rsi
lea addresses_WC_ht+0x1ac05, %rsi
lea addresses_WC_ht+0x164dd, %rdi
and %r15, %r15
mov $60, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $34987, %rsi
lea addresses_UC_ht+0x1115d, %rsi
nop
nop
nop
nop
and %rdx, %rdx
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0xd3fd, %rsi
lea addresses_WT_ht+0x589f, %rdi
nop
and $34507, %r14
mov $60, %rcx
rep movsl
nop
cmp $63853, %rcx
lea addresses_WC_ht+0x14269, %r10
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%r10)
nop
nop
inc %rsi
lea addresses_WT_ht+0x12a1d, %r10
nop
nop
nop
nop
cmp $34653, %r14
movb (%r10), %dl
nop
nop
nop
nop
cmp $11194, %r10
lea addresses_D_ht+0x30dd, %r14
cmp $34629, %r15
movb $0x61, (%r14)
cmp $21613, %r15
lea addresses_WT_ht+0x190dd, %r14
inc %r15
movw $0x6162, (%r14)
nop
nop
nop
sub $10497, %rdx
lea addresses_D_ht+0x12cdd, %rdx
clflush (%rdx)
nop
xor $39374, %rsi
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
and %rdx, %rdx
lea addresses_WC_ht+0xb8dd, %rsi
lea addresses_UC_ht+0x109dd, %rdi
nop
nop
add $23935, %r15
mov $76, %rcx
rep movsq
nop
nop
and $44138, %rsi
lea addresses_D_ht+0x17cdd, %r15
nop
nop
nop
add $26688, %rsi
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
and %r10, %r10
lea addresses_WT_ht+0xe8dd, %rsi
nop
nop
nop
nop
xor $52132, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x1c139, %r10
nop
nop
nop
nop
dec %r14
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x1dc4f, %rsi
lea addresses_WT_ht+0x161dd, %rdi
nop
nop
nop
nop
nop
xor $3240, %r10
mov $13, %rcx
rep movsb
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0xbfad, %rsi
clflush (%rsi)
nop
nop
add %r10, %r10
mov (%rsi), %edi
nop
nop
nop
and $63831, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0xa49d, %rsi
lea addresses_normal+0x535, %rdi
and %r9, %r9
mov $91, %rcx
rep movsb
nop
nop
nop
nop
cmp $64276, %rsi

// Store
lea addresses_normal+0x53dd, %rcx
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_WT+0x1ec5d, %rsi
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_A+0x10dc7, %rdx
add %r9, %r9
movw $0x5152, (%rdx)
inc %rsi

// Store
mov $0xfcd, %r9
xor $6979, %rcx
movw $0x5152, (%r9)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_D+0x1d05d, %rcx
cmp $9127, %r9
movw $0x5152, (%rcx)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x128dd, %rcx
nop
nop
nop
add $56178, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
sub $20810, %rax

// Store
lea addresses_normal+0x1b3dd, %rdx
nop
inc %rsi
movw $0x5152, (%rdx)
nop
sub %rdx, %rdx

// Store
lea addresses_PSE+0x116dd, %rcx
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0xb1da, %rsi
nop
nop
dec %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%rsi)
xor $53702, %rcx

// Faulty Load
lea addresses_normal+0x144dd, %rcx
nop
add %rax, %rax
movaps (%rcx), %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'33': 1}
33
*/
