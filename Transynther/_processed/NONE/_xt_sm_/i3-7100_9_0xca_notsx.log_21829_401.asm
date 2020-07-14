.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xe97f, %r10
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
cmp $6392, %r14
lea addresses_D_ht+0x15bff, %rax
inc %r13
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
add $21664, %rsi
lea addresses_A_ht+0xa87f, %rsi
lea addresses_WT_ht+0x1c7ff, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $57313, %r15
mov $89, %rcx
rep movsq
nop
nop
nop
nop
and $35490, %rdi
lea addresses_normal_ht+0x1881f, %r14
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r14), %edi
nop
nop
inc %rdi
lea addresses_WT_ht+0x10603, %rsi
lea addresses_normal_ht+0x75ef, %rdi
nop
nop
nop
nop
nop
sub $1427, %r10
mov $121, %rcx
rep movsw
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0xdcff, %rsi
lea addresses_UC_ht+0x1c927, %rdi
nop
and $11428, %r15
mov $54, %rcx
rep movsl
nop
nop
lfence
lea addresses_UC_ht+0xe768, %r14
nop
nop
nop
and $12303, %rsi
movups (%r14), %xmm2
vpextrq $0, %xmm2, %r15
xor $62518, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x172ff, %r14
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
and %rax, %rax

// REPMOV
lea addresses_UC+0x27ff, %rsi
lea addresses_UC+0x1d5ff, %rdi
nop
nop
nop
nop
cmp $13968, %r9
mov $60, %rcx
rep movsl
nop
nop
sub %r9, %r9

// Store
lea addresses_WC+0x13ff, %rdx
nop
nop
and $43667, %r14
movw $0x5152, (%rdx)
nop
nop
nop
nop
cmp %r8, %r8

// REPMOV
lea addresses_WC+0x1f51f, %rsi
lea addresses_normal+0x17eaf, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $108, %rcx
rep movsw
cmp %rcx, %rcx

// Store
lea addresses_normal+0x19dff, %rdi
nop
nop
and $16488, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
add $63524, %r14

// Store
lea addresses_PSE+0x17fff, %rcx
clflush (%rcx)
nop
nop
and $17728, %r9
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_UC+0x77ff, %rsi
nop
nop
and $55204, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
and $7134, %rsi

// Store
lea addresses_PSE+0x10aff, %r14
nop
nop
sub $30461, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r14)
cmp %r14, %r14

// Load
lea addresses_WT+0x1350f, %r8
add $28467, %rcx
mov (%r8), %esi
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_UC+0xfe6f, %rdx
nop
sub %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdx)
nop
cmp $29299, %r14

// REPMOV
lea addresses_UC+0x1a2ff, %rsi
lea addresses_UC+0xaff, %rdi
inc %rdx
mov $92, %rcx
rep movsq
nop
cmp %r9, %r9

// Faulty Load
lea addresses_PSE+0x17fff, %r9
nop
cmp %r8, %r8
mov (%r9), %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 7, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
