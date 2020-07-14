.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x7ead, %rdi
nop
nop
nop
nop
and %rax, %rax
movw $0x6162, (%rdi)
xor %rax, %rax
lea addresses_D_ht+0x1c5d, %r13
cmp $27013, %rbp
movl $0x61626364, (%r13)
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x11aa2, %rsi
lea addresses_WT_ht+0xec5d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $5989, %rax
mov $17, %rcx
rep movsb
nop
and %r12, %r12
lea addresses_UC_ht+0x238d, %r15
nop
mfence
movw $0x6162, (%r15)
inc %r15
lea addresses_WT_ht+0xff8d, %r13
nop
nop
nop
nop
nop
and $45227, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x4df9, %rax
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rax), %cl
nop
nop
nop
add $29314, %r15
lea addresses_normal_ht+0xf25d, %r15
nop
nop
nop
nop
add %rdi, %rdi
movb (%r15), %al
sub $48172, %rdi
lea addresses_WC_ht+0x1a85d, %rsi
lea addresses_D_ht+0x16a5d, %rdi
nop
nop
nop
add %rax, %rax
mov $5, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x755d, %rsi
lea addresses_WC_ht+0x265d, %rdi
add %r12, %r12
mov $24, %rcx
rep movsb
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x689d, %r13
nop
add %r12, %r12
movl $0x61626364, (%r13)
nop
nop
add $32179, %r12
lea addresses_WT_ht+0x6605, %rsi
lea addresses_UC_ht+0x1295d, %rdi
nop
nop
nop
sub $60996, %r15
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x8add, %rsi
lea addresses_WC_ht+0x805d, %rdi
nop
nop
nop
nop
and $22581, %r15
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $35873, %rax
lea addresses_D_ht+0x3245, %rsi
lea addresses_D_ht+0xf6dd, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $14, %rcx
rep movsw
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_UC+0x1aad5, %r9
nop
sub $9881, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovaps %ymm1, (%r9)
nop
nop
nop
nop
add $58556, %rsi

// Store
lea addresses_normal+0xde5d, %r14
clflush (%r14)
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, (%r14)
nop
nop
cmp $14014, %r14

// Faulty Load
lea addresses_PSE+0xde5d, %r13
nop
nop
add %r12, %r12
mov (%r13), %r9w
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'33': 4}
33 33 33 33
*/
