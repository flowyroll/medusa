.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x42d, %rsi
lea addresses_A_ht+0x8b2d, %rdi
clflush (%rsi)
nop
nop
nop
xor $55151, %rbx
mov $118, %rcx
rep movsl
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x198ed, %rbp
nop
nop
nop
nop
and %rdx, %rdx
mov (%rbp), %rcx
cmp $42789, %rbx
lea addresses_normal_ht+0xc42d, %rcx
dec %r13
movw $0x6162, (%rcx)
sub %rbp, %rbp
lea addresses_UC_ht+0x1d2ed, %rdx
nop
nop
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
nop
add $34870, %rcx
lea addresses_D_ht+0x19c2d, %rbx
nop
nop
nop
nop
add $38969, %rdi
mov (%rbx), %esi
nop
nop
nop
nop
cmp $64956, %rbp
lea addresses_WC_ht+0x782d, %rsi
lea addresses_WT_ht+0x142d, %rdi
add %rdx, %rdx
mov $45, %rcx
rep movsw
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0xfd2d, %r13
nop
nop
nop
nop
sub $51340, %rdi
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rbx
nop
add %rbx, %rbx
lea addresses_WT_ht+0x872d, %rcx
nop
nop
nop
nop
nop
xor $18465, %rbx
mov (%rcx), %rdi
nop
nop
nop
nop
nop
xor $30374, %rsi
lea addresses_normal_ht+0x148ad, %rsi
lea addresses_A_ht+0x1cad, %rdi
clflush (%rdi)
nop
xor %r14, %r14
mov $26, %rcx
rep movsw
nop
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x1bad, %rdx
nop
nop
nop
nop
nop
cmp $56144, %rbp
movb (%rdx), %cl
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x3c3b, %rsi
lea addresses_WT_ht+0x18dad, %rdi
nop
inc %rbx
mov $99, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $34703, %rsi
lea addresses_UC_ht+0x342d, %rsi
inc %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x1cdad, %rdi
nop
nop
nop
xor $13059, %r13
movb $0x61, (%rdi)
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1dd0d, %rdx
nop
nop
and $63670, %rbp
mov (%rdx), %r14d
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rdi
push %rsi

// Load
lea addresses_UC+0x194ad, %r9
nop
nop
nop
nop
nop
and $51099, %rdi
mov (%r9), %r15
xor $35417, %rsi

// Store
lea addresses_UC+0xd71b, %r9
nop
nop
nop
nop
nop
xor %r15, %r15
movw $0x5152, (%r9)
nop
nop
nop
nop
add $30768, %r15

// Store
lea addresses_WT+0x2398, %rsi
cmp %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rsi)
add $36790, %rdi

// Store
lea addresses_A+0x96d, %r13
nop
nop
nop
nop
nop
and $23235, %rsi
movw $0x5152, (%r13)
nop
nop
xor $25625, %r15

// Store
lea addresses_WT+0xe42d, %r10
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r10)
nop
nop
cmp %r15, %r15

// Store
lea addresses_RW+0xcaad, %rdi
dec %r10
movw $0x5152, (%rdi)
nop
sub %r13, %r13

// Store
lea addresses_US+0x502d, %r15
nop
nop
nop
nop
inc %r9
movb $0x51, (%r15)
add $41343, %rsi

// Faulty Load
lea addresses_normal+0x682d, %r15
clflush (%r15)
nop
nop
nop
cmp $6045, %r9
mov (%r15), %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rsi
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
