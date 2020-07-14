.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc9f2, %rbp
nop
nop
nop
and $28082, %rbx
mov (%rbp), %r9
nop
nop
nop
nop
dec %r13
lea addresses_D_ht+0xce92, %rsi
lea addresses_normal_ht+0x1e022, %rdi
nop
nop
dec %r13
mov $86, %rcx
rep movsb
sub $28159, %r13
lea addresses_WC_ht+0x1e472, %rsi
lea addresses_A_ht+0xa262, %rdi
nop
nop
nop
sub %r9, %r9
mov $97, %rcx
rep movsb
nop
sub %rbx, %rbx
lea addresses_UC_ht+0xdb72, %rbx
and %r13, %r13
mov (%rbx), %rbp
and $37265, %r9
lea addresses_UC_ht+0x8942, %rsi
lea addresses_WC_ht+0x13434, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $8, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x13846, %r13
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_A+0x1b522, %rdx
clflush (%rdx)
nop
xor %rsi, %rsi
movb $0x51, (%rdx)
nop
add $52884, %rdi

// Store
lea addresses_WC+0x7c09, %rdi
nop
nop
dec %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
xor $18445, %r13

// Store
lea addresses_UC+0x9572, %r13
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_A+0x19572, %rdi
nop
nop
dec %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
and $20979, %r12

// Store
lea addresses_RW+0x12692, %r12
clflush (%r12)
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_D+0x21e4, %rsi
nop
nop
nop
sub $15649, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
add %rdx, %rdx

// Load
lea addresses_PSE+0x1c172, %rcx
sub $45977, %r13
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_normal+0x1c972, %rdi
nop
nop
nop
nop
nop
xor $37014, %rsi
movw $0x5152, (%rdi)
nop
nop
inc %rsi

// Faulty Load
lea addresses_normal+0x1c972, %rcx
nop
nop
nop
and $51411, %rdx
movb (%rcx), %r9b
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}}
{'52': 1}
52
*/
