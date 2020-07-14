.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1e77e, %rdi
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm4, (%rdi)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x9156, %rsi
lea addresses_D_ht+0x131fe, %rdi
nop
nop
nop
nop
nop
xor $62095, %r8
mov $125, %rcx
rep movsq
cmp $56894, %rcx
lea addresses_A_ht+0x1fe, %rsi
lea addresses_D_ht+0x17ffe, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $118, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_WC_ht+0x117be, %rsi
lea addresses_UC_ht+0xb3e, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $50, %rcx
rep movsb
nop
nop
nop
nop
nop
add $24309, %r14
lea addresses_WC_ht+0x1b6fe, %rsi
lea addresses_A_ht+0x14be2, %rdi
nop
inc %rbp
mov $107, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x110fe, %rsi
lea addresses_WT_ht+0x128fe, %rdi
nop
nop
nop
xor $29444, %rbp
mov $36, %rcx
rep movsl
nop
sub $11658, %r15
lea addresses_WC_ht+0x15fe, %rsi
lea addresses_D_ht+0x1639e, %rdi
nop
nop
nop
nop
nop
add $51674, %rbp
mov $68, %rcx
rep movsl
inc %r14
lea addresses_WT_ht+0x111fe, %r14
nop
nop
dec %rcx
movups (%r14), %xmm3
vpextrq $1, %xmm3, %rsi
nop
inc %r8
lea addresses_WC_ht+0x16049, %r14
add $21909, %rsi
movw $0x6162, (%r14)
nop
nop
nop
xor $108, %r15
lea addresses_D_ht+0x14d5e, %r8
clflush (%r8)
nop
nop
nop
cmp $15002, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdx

// Store
mov $0x54f2e20000000dbe, %r13
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_D+0x16bbe, %r13
nop
nop
xor %rdx, %rdx
movw $0x5152, (%r13)
nop
nop
nop
add $229, %r13

// Store
lea addresses_A+0x1c1fe, %r8
nop
nop
nop
nop
inc %r13
movb $0x51, (%r8)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_A+0xa024, %r12
nop
nop
and $54884, %r15
movb $0x51, (%r12)
nop
nop
nop
and $51547, %rcx

// Store
lea addresses_RW+0x1a9fe, %rbp
nop
nop
and %r15, %r15
movb $0x51, (%rbp)
nop
nop
nop
nop
sub $27884, %rdx

// Faulty Load
lea addresses_RW+0x1a9fe, %r8
nop
nop
nop
nop
nop
xor $61651, %r13
movb (%r8), %r12b
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'51': 87}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
