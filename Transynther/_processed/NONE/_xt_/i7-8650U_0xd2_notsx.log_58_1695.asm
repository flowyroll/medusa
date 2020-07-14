.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x13406, %rdi
clflush (%rdi)
cmp $58883, %rax
mov (%rdi), %r9w
nop
and $62426, %rbx
lea addresses_UC_ht+0x1df66, %rsi
lea addresses_WT_ht+0x15466, %rdi
nop
nop
nop
nop
nop
and $59856, %r9
mov $75, %rcx
rep movsq
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x14ca8, %rax
nop
nop
nop
nop
inc %r15
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
xor $58807, %r9
lea addresses_A_ht+0xa066, %rsi
lea addresses_WT_ht+0x10e38, %rdi
clflush (%rdi)
nop
cmp $34546, %rdx
mov $25, %rcx
rep movsw
nop
nop
nop
nop
cmp $23762, %rsi
lea addresses_UC_ht+0x14266, %rsi
lea addresses_normal_ht+0x10e66, %rdi
xor $49101, %rbx
mov $49, %rcx
rep movsb
nop
sub %r15, %r15
lea addresses_WT_ht+0x15b94, %rdx
nop
nop
nop
and $16572, %rdi
mov (%rdx), %ebx
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x15266, %rdx
nop
nop
nop
cmp $25805, %rsi
movb (%rdx), %al
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x6ac6, %r9
add $56256, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x16d26, %r15
and %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r15)
nop
nop
inc %rdi
lea addresses_WC_ht+0xb4fe, %rsi
dec %rax
mov (%rsi), %edi
nop
cmp %r9, %r9
lea addresses_UC_ht+0xf16, %rbx
nop
nop
nop
nop
nop
add $5496, %rsi
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1dd66, %rcx
nop
nop
nop
nop
nop
cmp $61763, %r9
movl $0x61626364, (%rcx)
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x11c86, %rsi
lea addresses_PSE+0x6486, %rdi
nop
nop
dec %r15
mov $13, %rcx
rep movsq
nop
nop
sub $38673, %rsi

// REPMOV
lea addresses_WC+0x17566, %rsi
lea addresses_A+0x1911a, %rdi
nop
nop
nop
sub %r15, %r15
mov $12, %rcx
rep movsq
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x4a66, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
xor $65400, %rsi

// Store
lea addresses_UC+0x10fe, %rdi
nop
nop
nop
cmp $4002, %r12
movb $0x51, (%rdi)
nop
sub %r10, %r10

// Store
lea addresses_PSE+0x9666, %rsi
nop
nop
nop
nop
nop
and $15488, %r10
movl $0x51525354, (%rsi)
nop
nop
nop
nop
xor $8004, %rsi

// Store
lea addresses_RW+0x9e66, %r10
nop
inc %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%r10)
nop
add $20166, %rcx

// Store
lea addresses_A+0x10f2c, %r10
nop
and $55544, %rsi
movw $0x5152, (%r10)
nop
nop
nop
nop
and $8939, %rbp

// Store
lea addresses_WC+0x1114a, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
nop
nop
nop
cmp $3034, %r15

// Faulty Load
lea addresses_D+0x17a66, %r10
sub %r12, %r12
mov (%r10), %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'36': 58}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
