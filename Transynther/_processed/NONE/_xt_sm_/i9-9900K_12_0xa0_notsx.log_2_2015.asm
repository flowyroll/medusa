.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13a02, %rsi
lea addresses_A_ht+0x176f2, %rdi
nop
nop
nop
nop
nop
xor $2932, %rbx
mov $117, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x14702, %r9
clflush (%r9)
nop
nop
nop
and $55876, %rax
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x1cca2, %r12
nop
nop
nop
nop
and $40044, %rdi
mov (%r12), %r9w
nop
nop
nop
nop
and $43962, %r9
lea addresses_D_ht+0x15d62, %r9
sub $36195, %rcx
movl $0x61626364, (%r9)
nop
nop
nop
add $37465, %r12
lea addresses_UC_ht+0x13242, %r9
nop
nop
nop
nop
cmp $24687, %rbx
movb $0x61, (%r9)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x8e02, %rdi
nop
nop
nop
cmp $7125, %rbx
mov (%rdi), %si
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x1bb02, %rax
inc %r9
mov (%rax), %r12
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1ca22, %rdx
xor %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
add $9080, %r8

// REPMOV
lea addresses_WT+0x12bea, %rsi
lea addresses_normal+0x18402, %rdi
nop
add %rax, %rax
mov $107, %rcx
rep movsl
cmp %r8, %r8

// Store
lea addresses_WC+0x13d00, %rsi
dec %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_PSE+0x1b622, %rsi
lea addresses_normal+0x13da2, %rdi
nop
nop
nop
nop
cmp $54068, %rdx
mov $104, %rcx
rep movsl
nop
nop
nop
dec %r9

// Store
lea addresses_D+0x12be3, %rsi
add %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rsi)
xor %rsi, %rsi

// Store
lea addresses_PSE+0x2342, %rcx
nop
nop
and $23906, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_D+0x1f242, %r9
nop
nop
nop
nop
nop
cmp $57694, %rsi
movb $0x51, (%r9)
nop
nop
nop
nop
nop
xor $32829, %rdi

// Store
lea addresses_A+0x15102, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $65122, %r9
movl $0x51525354, (%rdi)
nop
nop
add $21083, %r8

// Store
lea addresses_A+0x6602, %r9
nop
add $55643, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovaps %ymm3, (%r9)
nop
nop
nop
nop
add $51752, %rsi

// Store
lea addresses_RW+0x13e02, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and $52772, %r9
movb $0x51, (%rdx)
nop
add $30240, %rax

// Store
lea addresses_D+0x12e02, %rdi
nop
nop
nop
nop
cmp %r9, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
cmp $46115, %r9

// Faulty Load
lea addresses_A+0x6602, %rdi
and $1816, %rdx
mov (%rdi), %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'58': 2}
58 58
*/
