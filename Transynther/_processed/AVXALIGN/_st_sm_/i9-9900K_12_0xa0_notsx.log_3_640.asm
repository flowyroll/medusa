.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2e2b, %rsi
lea addresses_UC_ht+0x92eb, %rdi
and %rbx, %rbx
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0xcf6b, %rbp
nop
nop
and %r10, %r10
mov (%rbp), %rbx
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x73cc, %rsi
lea addresses_A_ht+0xa7b7, %rdi
nop
nop
nop
nop
nop
add $29367, %rax
mov $24, %rcx
rep movsb
nop
nop
add $49377, %rbp
lea addresses_D_ht+0x1a32b, %rsi
lea addresses_normal_ht+0x550b, %rdi
nop
nop
inc %r13
mov $26, %rcx
rep movsw
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x124cb, %rsi
lea addresses_D_ht+0x6cab, %rdi
clflush (%rdi)
nop
nop
xor %rbx, %rbx
mov $42, %rcx
rep movsl
nop
nop
nop
inc %r13
lea addresses_normal_ht+0xbfe3, %rsi
lea addresses_WC_ht+0xb13f, %rdi
clflush (%rsi)
and %rax, %rax
mov $29, %rcx
rep movsq
nop
and %rcx, %rcx
lea addresses_UC_ht+0xcd2b, %r10
nop
nop
nop
xor $6907, %rbx
mov (%r10), %esi
nop
nop
and %rax, %rax
lea addresses_D_ht+0x15773, %rsi
lea addresses_UC_ht+0x2cbb, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $7, %rcx
rep movsq
nop
inc %rax
lea addresses_D_ht+0x1d05f, %rsi
lea addresses_A_ht+0x19beb, %rdi
nop
and %rbp, %rbp
mov $39, %rcx
rep movsw
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1c6ab, %rbx
xor %rbp, %rbp
movl $0x51525354, (%rbx)
add $52655, %r15

// REPMOV
lea addresses_RW+0xd979, %rsi
lea addresses_D+0x6cab, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $12534, %r15
mov $52, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_A+0x9d05, %rsi
nop
nop
nop
nop
nop
and $4926, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
nop
xor %rdx, %rdx

// Load
lea addresses_D+0x36eb, %rbp
nop
nop
nop
nop
lfence
movb (%rbp), %bl
nop
and $58216, %rbx

// Store
lea addresses_D+0x816b, %rsi
dec %rbp
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
xor $19297, %r15

// Store
mov $0x786e2400000002ab, %rsi
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rsi)
nop
nop
and %rsi, %rsi

// Load
lea addresses_D+0xbd2b, %rsi
add %rbx, %rbx
movb (%rsi), %dl
nop
nop
inc %rbx

// Store
lea addresses_PSE+0x15cab, %rbp
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_A+0xd04b, %r15
nop
nop
nop
nop
nop
cmp $40405, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
cmp %rcx, %rcx

// Load
lea addresses_A+0x98ab, %rcx
nop
nop
nop
nop
nop
and $48281, %rsi
movaps (%rcx), %xmm6
vpextrq $1, %xmm6, %rbp
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_A+0xf2ab, %rsi
nop
nop
nop
nop
nop
and $30685, %rbp
mov (%rsi), %di
inc %rdx

// Store
mov $0x786e2400000002ab, %rbp
clflush (%rbp)
nop
nop
nop
add $42425, %rdi
movw $0x5152, (%rbp)
nop
nop
nop
add $5432, %rsi

// Store
lea addresses_WC+0x87db, %r15
nop
nop
nop
nop
and $60203, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
nop
nop
cmp $59235, %rdx

// Faulty Load
mov $0x786e2400000002ab, %rdi
nop
add %r12, %r12
movb (%rdi), %cl
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_RW', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'52': 3}
52 52 52
*/
