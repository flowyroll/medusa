.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xec9e, %rax
nop
sub $59760, %rdx
movb $0x61, (%rax)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0xc69e, %rsi
lea addresses_A_ht+0xebde, %rdi
add %r12, %r12
mov $28, %rcx
rep movsb
nop
nop
dec %rdi
lea addresses_WC_ht+0x1e59e, %rsi
lea addresses_WC_ht+0xbe92, %rdi
nop
nop
cmp %rdx, %rdx
mov $49, %rcx
rep movsw
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0xa1e, %rbp
nop
nop
nop
nop
sub %rdx, %rdx
movb (%rbp), %cl
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1349e, %rax
nop
xor %rcx, %rcx
movb (%rax), %dl
nop
nop
dec %rcx
lea addresses_normal_ht+0xead2, %rbp
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %rbp
movaps %xmm2, (%rbp)
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x6ebe, %rsi
lea addresses_WT_ht+0xf49e, %rdi
nop
nop
nop
add %r12, %r12
mov $4, %rcx
rep movsw
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x1ac2e, %rsi
lea addresses_UC_ht+0x12c9e, %rdi
nop
nop
nop
nop
nop
and $17213, %rbp
mov $94, %rcx
rep movsq
nop
nop
add $23946, %rsi
lea addresses_WC_ht+0xbd2a, %rsi
lea addresses_WC_ht+0x194d6, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $26, %rcx
rep movsb
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x18a9e, %rsi
lea addresses_A_ht+0x19bde, %rdi
nop
inc %rbp
mov $41, %rcx
rep movsq
nop
add $16038, %rdx
lea addresses_UC_ht+0x697e, %rdx
nop
dec %rsi
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
xor $54001, %rsi
lea addresses_normal_ht+0x1309e, %rax
nop
nop
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%rax)
nop
xor %r12, %r12
lea addresses_UC_ht+0x800e, %rsi
lea addresses_D_ht+0x1aa1e, %rdi
nop
cmp %r12, %r12
mov $51, %rcx
rep movsq
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rbx

// Store
lea addresses_RW+0x879e, %r15
clflush (%r15)
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r15)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_RW+0x15cde, %r12
nop
add %r10, %r10
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
and $57188, %r10

// Store
lea addresses_RW+0xfa9e, %rbp
nop
cmp $8467, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_WT+0x1375e, %r12
nop
nop
nop
cmp %r10, %r10
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
cmp $17849, %rbp

// Faulty Load
lea addresses_WT+0x1849e, %rbx
nop
nop
cmp %r12, %r12
mov (%rbx), %r15d
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'39': 679}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
