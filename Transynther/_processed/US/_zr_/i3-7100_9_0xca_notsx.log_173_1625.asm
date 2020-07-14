.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xc7ff, %rsi
lea addresses_A_ht+0x30a3, %rdi
nop
nop
nop
nop
nop
add $37139, %r13
mov $64, %rcx
rep movsl
nop
nop
xor $37550, %rbp
lea addresses_WT_ht+0x18d03, %rdi
nop
and $52984, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
inc %rbp
lea addresses_A_ht+0x2be3, %rcx
nop
nop
nop
nop
add %r13, %r13
mov (%rcx), %edi
add $64650, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xea9b, %r15
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_normal+0x12da3, %rbx
nop
nop
nop
sub %r10, %r10
movw $0x5152, (%rbx)
nop
nop
dec %rdx

// Faulty Load
lea addresses_US+0x13ca3, %r15
nop
nop
nop
add $58206, %rsi
mov (%r15), %r10d
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 173}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
