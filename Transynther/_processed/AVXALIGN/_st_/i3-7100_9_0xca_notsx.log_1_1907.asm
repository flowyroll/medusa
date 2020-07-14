.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18ccc, %rdx
add %r13, %r13
movw $0x6162, (%rdx)
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x14c00, %r15
nop
nop
sub %r10, %r10
mov (%r15), %r12
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x127ec, %r12
nop
nop
nop
nop
dec %r13
movb (%r12), %r10b
nop
nop
nop
xor $25243, %r8
lea addresses_UC_ht+0xcfb8, %rsi
lea addresses_UC_ht+0x5cc0, %rdi
nop
xor $63723, %r9
mov $101, %rcx
rep movsq
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x12e18, %r8
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0xa93d, %rdi
nop
and %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
and $24693, %rcx
lea addresses_normal_ht+0x7758, %rsi
lea addresses_WC_ht+0x128b8, %rdi
nop
nop
dec %rdx
mov $17, %rcx
rep movsq
nop
sub $50407, %rsi
lea addresses_WC_ht+0x3cbc, %r12
nop
xor %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x3e5a, %r12
nop
nop
cmp $13455, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r12)
cmp %rdi, %rdi
lea addresses_D_ht+0x13668, %rsi
lea addresses_UC_ht+0x3aca, %rdi
cmp %r10, %r10
mov $68, %rcx
rep movsq
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x1474, %rcx
nop
nop
dec %rdi
movb (%rcx), %r10b
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1dc88, %r10
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
and %r15, %r15

// REPMOV
lea addresses_RW+0xb5f8, %rsi
mov $0x6b1e0d00000006b0, %rdi
xor %r8, %r8
mov $55, %rcx
rep movsb
add $48748, %rsi

// Faulty Load
lea addresses_D+0x13b8, %rsi
nop
sub %r8, %r8
mov (%rsi), %di
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_RW', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 3, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 1}
36
*/
