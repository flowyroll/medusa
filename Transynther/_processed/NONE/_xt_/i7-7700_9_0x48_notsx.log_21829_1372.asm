.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x194d1, %rsi
lea addresses_A_ht+0x1e11, %rdi
nop
nop
dec %r14
mov $39, %rcx
rep movsl
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x12d11, %rsi
lea addresses_A_ht+0x13611, %rdi
clflush (%rdi)
nop
nop
sub $33535, %r15
mov $18, %rcx
rep movsb
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x9011, %rsi
lea addresses_A_ht+0xba11, %rdi
nop
nop
add %r14, %r14
mov $51, %rcx
rep movsl
xor $45093, %r14
lea addresses_WC_ht+0x5331, %r14
inc %r10
mov (%r14), %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1a111, %rcx
xor %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rcx)
sub %r14, %r14
lea addresses_D_ht+0x3011, %r12
nop
and $33835, %r10
mov (%r12), %rsi
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x18a11, %rcx
nop
nop
nop
nop
add %rdi, %rdi
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x11241, %r14
nop
nop
nop
nop
add $48399, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
nop
xor $43402, %r12
lea addresses_A_ht+0xc511, %rsi
lea addresses_D_ht+0x14211, %rdi
nop
inc %r9
mov $59, %rcx
rep movsw
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x9e05, %r15
nop
nop
nop
cmp %rsi, %rsi
mov (%r15), %cx
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x5ce5, %rsi
lea addresses_A+0x1b6a9, %rdi
nop
nop
nop
xor %r13, %r13
mov $86, %rcx
rep movsw
nop
and %rdi, %rdi

// Store
lea addresses_PSE+0x6511, %rdi
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
nop
add $36425, %rsi

// Store
lea addresses_WT+0xb051, %r10
nop
nop
nop
and $52250, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0xd411, %rbp
nop
cmp %r10, %r10
movl $0x51525354, (%rbp)
nop
nop
nop
nop
xor %r10, %r10

// Load
lea addresses_normal+0xe591, %rbp
clflush (%rbp)
nop
nop
nop
and $64844, %rsi
mov (%rbp), %cx
nop
dec %r10

// Store
lea addresses_normal+0xf911, %r10
nop
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%r10)
nop
nop
nop
nop
dec %rcx

// Load
lea addresses_UC+0x1e211, %r10
nop
nop
xor %rbp, %rbp
movups (%r10), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_WC+0x12a91, %r10
inc %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
inc %rcx

// Store
lea addresses_normal+0x13f99, %r10
nop
nop
add $1303, %rsi
movw $0x5152, (%r10)
inc %rsi

// Store
lea addresses_PSE+0x3555, %r10
clflush (%r10)
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
xor $29555, %rcx

// Store
lea addresses_normal+0x1ab11, %r13
clflush (%r13)
nop
nop
nop
sub %rbp, %rbp
movw $0x5152, (%r13)
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_UC+0x1e211, %rsi
nop
nop
nop
nop
nop
add %r10, %r10
mov (%rsi), %ecx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
