.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12541, %rsi
lea addresses_A_ht+0x171, %rdi
nop
nop
nop
add %r13, %r13
mov $117, %rcx
rep movsl
nop
nop
dec %r15
lea addresses_UC_ht+0x13ee1, %r8
nop
nop
nop
nop
add %rdi, %rdi
movb (%r8), %r15b
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x172c9, %r13
clflush (%r13)
and $2764, %r9
mov (%r13), %edi
nop
and $55864, %r13
lea addresses_WC_ht+0x59e1, %r9
sub $59982, %rdi
movb $0x61, (%r9)
nop
and $27113, %r8
lea addresses_D_ht+0xd54a, %rsi
add %r13, %r13
movl $0x61626364, (%rsi)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x1bc19, %rcx
nop
nop
and %r8, %r8
mov (%rcx), %r15d
nop
nop
nop
add $30005, %rcx
lea addresses_D_ht+0x14e45, %r8
nop
nop
nop
nop
nop
dec %r13
movl $0x61626364, (%r8)
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x4ee1, %rsi
clflush (%rsi)
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
xor %r15, %r15
lea addresses_D_ht+0xe7e1, %rsi
lea addresses_WC_ht+0x13a21, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $89, %rcx
rep movsb
nop
nop
nop
add $26033, %rcx
lea addresses_D_ht+0x1207c, %r14
nop
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
add $20177, %r15
lea addresses_UC_ht+0x158f, %rsi
lea addresses_D_ht+0xefe1, %rdi
add $24700, %r9
mov $51, %rcx
rep movsl
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x7e1, %rsi
lea addresses_UC_ht+0xb7e1, %rdi
xor %r13, %r13
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x10021, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
cmp $37296, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdx

// Store
mov $0x4d14960000000ca1, %rax
nop
nop
nop
nop
nop
sub $6885, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
add $8548, %r14

// Store
lea addresses_RW+0xe4a1, %rcx
nop
sub $27807, %rax
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
sub $15097, %r8

// Store
mov $0x4bed680000000921, %r14
nop
nop
nop
cmp $32506, %r13
mov $0x5152535455565758, %r8
movq %r8, (%r14)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x16fe1, %r9
clflush (%r9)
inc %r14
movw $0x5152, (%r9)
xor $33516, %rcx

// Store
lea addresses_WT+0x1ee23, %r9
nop
xor %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r9)
nop
nop
and %r8, %r8

// Store
lea addresses_WC+0xcbe1, %r14
nop
nop
nop
xor $41525, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_A+0x16fe1, %rdx
nop
nop
and %rcx, %rcx
mov (%rdx), %eax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'52': 196}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
