.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19c93, %r15
nop
add $16962, %r9
movb (%r15), %r12b
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xac93, %r10
nop
nop
nop
inc %r12
mov (%r10), %ebp
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x14c93, %r9
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r9)
nop
nop
dec %rdi
lea addresses_WT_ht+0x1dc93, %rsi
lea addresses_normal_ht+0x7393, %rdi
nop
nop
cmp %r12, %r12
mov $60, %rcx
rep movsl
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbx
push %rdi
push %rdx

// Store
mov $0x5ec633000000090f, %r8
nop
nop
nop
nop
nop
and $35305, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r8)
add %r10, %r10

// Load
lea addresses_PSE+0x1e493, %rbx
nop
nop
nop
xor $15414, %r12
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_D+0x4d9e, %r8
nop
nop
nop
nop
nop
add %r9, %r9
movb $0x51, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbx
nop
nop
cmp $27359, %r9

// Load
lea addresses_UC+0xc893, %rbx
nop
nop
nop
nop
nop
sub $62260, %r9
mov (%rbx), %r10w
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_D+0xd093, %rdi
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
and $48972, %r8

// Faulty Load
lea addresses_RW+0x1b493, %r9
sub %rdx, %rdx
movups (%r9), %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 1, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'NT': True, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'32': 20}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
