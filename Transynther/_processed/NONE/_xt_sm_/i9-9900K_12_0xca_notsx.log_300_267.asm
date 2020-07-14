.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc3f8, %r8
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%r8)
nop
nop
nop
dec %r13
lea addresses_WT_ht+0xf5f8, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdx), %r14d
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x133f8, %rcx
nop
nop
nop
nop
dec %rsi
mov (%rcx), %dx
nop
sub $60000, %r8
lea addresses_WC_ht+0x2c2c, %rsi
lea addresses_normal_ht+0x1e13e, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $12, %rcx
rep movsw
nop
nop
nop
nop
add $51697, %rcx
lea addresses_WC_ht+0x1df8, %rsi
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x61626364, (%rsi)
nop
nop
cmp $56961, %r8
lea addresses_WT_ht+0x25f8, %rsi
lea addresses_D_ht+0x1b9a8, %rdi
clflush (%rsi)
nop
nop
nop
sub $30414, %r13
mov $123, %rcx
rep movsw
xor $37190, %rsi
lea addresses_A_ht+0x3d6d, %rdx
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x18df8, %rsi
nop
nop
add %r8, %r8
movb (%rsi), %dl
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x1d6f4, %r8
nop
nop
nop
nop
cmp $64160, %rbp
mov (%r8), %rsi
xor %r14, %r14
lea addresses_WT_ht+0x11718, %rbp
nop
nop
nop
inc %r8
movw $0x6162, (%rbp)
sub $53740, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1dc58, %r10
nop
nop
sub $53371, %r8
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
add %rbp, %rbp

// REPMOV
lea addresses_PSE+0x1ecf6, %rsi
lea addresses_A+0x10ab8, %rdi
nop
nop
and $16708, %r10
mov $110, %rcx
rep movsl
nop
nop
nop
add %r15, %r15

// Store
lea addresses_WC+0x148e6, %r14
nop
nop
cmp $33298, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
xor $44084, %r10

// Load
lea addresses_UC+0x1f738, %r8
nop
nop
nop
xor $63432, %r10
movntdqa (%r8), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_UC+0x6f8, %r15
add $36911, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r15)

// Exception!!!
nop
mov (0), %rbp
nop
nop
nop
nop
nop
xor $45692, %rsi

// Store
lea addresses_RW+0x1f5f8, %r15
nop
nop
nop
nop
and $15401, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
xor $62208, %r15

// Store
mov $0x538, %r14
nop
nop
nop
nop
xor $11834, %rcx
movl $0x51525354, (%r14)
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_RW+0x1f5f8, %rdi
nop
nop
nop
add %r8, %r8
mov (%rdi), %r14d
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'58': 300}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
