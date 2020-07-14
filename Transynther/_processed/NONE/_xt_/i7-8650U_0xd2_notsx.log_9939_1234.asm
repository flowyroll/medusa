.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xd9d6, %r8
nop
nop
nop
sub %r10, %r10
movw $0x6162, (%r8)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x181d6, %rsi
lea addresses_A_ht+0x4516, %rdi
nop
nop
nop
and %rbx, %rbx
mov $25, %rcx
rep movsq
nop
nop
nop
nop
and $65153, %rbx
lea addresses_WC_ht+0x1c3d6, %r10
nop
nop
inc %r8
mov (%r10), %rbx
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x14cd6, %rdi
nop
sub $20350, %r8
mov (%rdi), %r10
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0x1571e, %r8
nop
xor %r14, %r14
movb $0x61, (%r8)
nop
nop
nop
and $58980, %rsi
lea addresses_A_ht+0x162a2, %r10
nop
nop
nop
cmp %rbx, %rbx
movups (%r10), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x199aa, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%rdi), %rcx
nop
xor $37009, %r8
lea addresses_UC_ht+0x1da36, %rsi
lea addresses_WT_ht+0xf816, %rdi
nop
nop
nop
sub $28088, %rdx
mov $43, %rcx
rep movsl
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x11708, %rsi
lea addresses_A_ht+0xc9d6, %rdi
clflush (%rdi)
nop
xor %r8, %r8
mov $23, %rcx
rep movsw
cmp %r14, %r14
lea addresses_UC_ht+0x12156, %rbx
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0xe9d6, %rsi
lea addresses_A_ht+0x11afe, %rdi
nop
xor $29722, %rbx
mov $13, %rcx
rep movsl
nop
nop
nop
nop
nop
and $20514, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x7146, %rsi
lea addresses_A+0xc3fe, %rdi
nop
nop
xor %r15, %r15
mov $100, %rcx
rep movsq
nop
nop
nop
add $51230, %r15

// Store
lea addresses_normal+0xb6d6, %rcx
nop
nop
cmp $20492, %rsi
movb $0x51, (%rcx)
nop
sub %rax, %rax

// Store
lea addresses_A+0x5776, %rdi
nop
nop
nop
cmp $23263, %r13
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
xor %r15, %r15

// Load
lea addresses_normal+0x1779a, %rsi
nop
xor %rax, %rax
mov (%rsi), %ecx
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_WC+0x1f5a, %r13
nop
nop
nop
add $14337, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r13)
nop
nop
dec %rdi

// Store
lea addresses_A+0x19fd6, %r14
nop
nop
nop
nop
nop
xor $1214, %rsi
movw $0x5152, (%r14)
nop
nop
nop
nop
sub %r15, %r15

// Load
lea addresses_D+0x68ba, %rdi
nop
nop
nop
nop
cmp $57549, %r13
mov (%rdi), %r14w
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x188d6, %rcx
nop
nop
nop
xor $46204, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rcx)
cmp $52075, %rax

// Store
lea addresses_PSE+0xc9d6, %rdi
clflush (%rdi)
nop
nop
mfence
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
cmp $7238, %rdi

// Load
lea addresses_WT+0xc176, %r15
clflush (%r15)
nop
nop
nop
nop
xor $55893, %rdi
mov (%r15), %ecx
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WC+0xb5d6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x51, (%rdi)
nop
add %rdi, %rdi

// Store
lea addresses_UC+0xb1d6, %r13
xor %rcx, %rcx
movl $0x51525354, (%r13)
xor $52439, %r15

// Store
lea addresses_WT+0x1e156, %rdi
add %r13, %r13
movl $0x51525354, (%rdi)
nop
nop
cmp $54379, %rdi

// Load
lea addresses_WT+0x12fd6, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
cmp $36799, %rax

// Store
lea addresses_normal+0x159aa, %r13
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_UC+0x69d6, %rcx
xor $26852, %r14
mov (%rcx), %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'37': 9939}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
