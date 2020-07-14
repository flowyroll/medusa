.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a830, %rsi
lea addresses_normal_ht+0x9788, %rdi
nop
inc %r9
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x5408, %r13
clflush (%r13)
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r13)
nop
xor %r13, %r13
lea addresses_WC_ht+0x1e008, %rsi
lea addresses_UC_ht+0x160f8, %rdi
nop
nop
cmp $40430, %r12
mov $9, %rcx
rep movsw
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x19788, %rcx
sub %rdi, %rdi
movw $0x6162, (%rcx)
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0xc59c, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
sub $29340, %r13
lea addresses_D_ht+0x7588, %rsi
lea addresses_UC_ht+0x5ce6, %rdi
nop
nop
nop
cmp $63005, %r14
mov $16, %rcx
rep movsw
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x10f3a, %r13
nop
xor $56839, %rdi
movb (%r13), %r14b
nop
nop
nop
add $21591, %r13
lea addresses_UC_ht+0x1ab28, %rsi
add %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x1b30e, %rsi
lea addresses_normal_ht+0x1b464, %rdi
nop
nop
inc %r12
mov $80, %rcx
rep movsq
sub $47894, %rdi
lea addresses_D_ht+0x197f8, %rsi
lea addresses_WT_ht+0x1aa88, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $43594, %r12
mov $76, %rcx
rep movsw
nop
add %rbp, %rbp
lea addresses_UC_ht+0x6388, %rsi
lea addresses_WC_ht+0x4600, %rdi
nop
add %r14, %r14
mov $15, %rcx
rep movsl
nop
cmp $63238, %r14
lea addresses_A_ht+0xf888, %rsi
nop
nop
nop
nop
sub $24, %r14
movb (%rsi), %r9b
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_normal+0x6288, %rax
nop
nop
add $47427, %rsi
movb $0x51, (%rax)
add $14946, %rax

// Store
lea addresses_WC+0x608, %r13
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
sub $30053, %rbp

// Store
lea addresses_D+0x14a08, %r9
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_UC+0x7f88, %rbp
nop
nop
sub %r13, %r13
mov (%rbp), %r15d
nop
nop
nop
nop
and $9545, %rdi

// Store
mov $0x788, %rax
nop
and %r9, %r9
movb $0x51, (%rax)
nop
nop
nop
add $48491, %rsi

// Store
mov $0xb88, %rax
clflush (%rax)
cmp %rdi, %rdi
movw $0x5152, (%rax)
xor %rsi, %rsi

// Store
lea addresses_A+0xd1c8, %r9
nop
nop
nop
nop
nop
and $17934, %rdi
movb $0x51, (%r9)
nop
nop
nop
nop
nop
xor $41727, %rdi

// Faulty Load
lea addresses_RW+0xf388, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov (%rdi), %eax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'size': 2, 'NT': True, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
