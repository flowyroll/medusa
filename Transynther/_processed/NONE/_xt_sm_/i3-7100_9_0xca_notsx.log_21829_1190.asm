.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xa419, %r13
nop
nop
nop
cmp %r9, %r9
movl $0x61626364, (%r13)
nop
nop
nop
sub $31057, %r8
lea addresses_WC_ht+0x1bf79, %r12
nop
nop
nop
nop
nop
sub $48677, %rbp
mov (%r12), %edx
nop
nop
nop
nop
sub $36361, %r12
lea addresses_WC_ht+0x1d79, %r13
nop
nop
nop
nop
nop
and %r8, %r8
mov (%r13), %ebp
xor %r12, %r12
lea addresses_UC_ht+0x16541, %rdx
nop
nop
add $31849, %rdi
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
nop
nop
add $63637, %rdi
lea addresses_A_ht+0x14519, %r8
nop
cmp %r12, %r12
movups (%r8), %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
add %r12, %r12
lea addresses_D_ht+0xfaf9, %rsi
lea addresses_UC_ht+0x16979, %rdi
nop
nop
xor %r12, %r12
mov $92, %rcx
rep movsw
and $29538, %rbp
lea addresses_A_ht+0xaaaf, %rbp
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%rbp), %rcx
nop
nop
cmp $23547, %rdx
lea addresses_WT_ht+0x3379, %r9
nop
dec %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x1dae, %rsi
lea addresses_UC_ht+0x16739, %rdi
nop
nop
nop
xor $9345, %rdx
mov $92, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x1a979, %r13
nop
nop
nop
cmp $43725, %r12
mov (%r13), %rcx
nop
xor %r8, %r8
lea addresses_D_ht+0xf079, %rsi
lea addresses_A_ht+0x149a9, %rdi
sub %rbp, %rbp
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x13269, %r9
clflush (%r9)
nop
nop
nop
nop
nop
dec %rdx
mov (%r9), %r8
nop
nop
sub $60752, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x1b979, %r12
nop
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_normal+0x17f19, %rax
and %r13, %r13
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
xor $12151, %rsi

// REPMOV
lea addresses_RW+0x1bb79, %rsi
lea addresses_A+0x169d7, %rdi
nop
add $18840, %r12
mov $38, %rcx
rep movsl
nop
nop
sub $46237, %r9

// Store
lea addresses_A+0x1b179, %rbx
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0xd1b9, %r9
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%r9)

// Exception!!!
nop
nop
nop
mov (0), %rbx
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_WT+0x1a179, %rdi
nop
nop
nop
nop
add %rax, %rax
movw $0x5152, (%rdi)
nop
cmp $54215, %rbx

// Store
lea addresses_US+0xc09, %r13
nop
nop
nop
nop
nop
add %r9, %r9
movb $0x51, (%r13)
and $49295, %r9

// Faulty Load
lea addresses_A+0x1b179, %rdi
nop
nop
nop
nop
nop
and $43144, %r9
mov (%rdi), %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': True, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
