.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7fe9, %rsi
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rsi)
nop
and $21946, %r10
lea addresses_WT_ht+0x13e69, %rsi
lea addresses_normal_ht+0x14e69, %rdi
nop
nop
nop
cmp $26413, %r12
mov $103, %rcx
rep movsl
nop
nop
nop
nop
cmp $20740, %rsi
lea addresses_WC_ht+0xee69, %r10
clflush (%r10)
nop
nop
sub $7265, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x14d09, %r10
nop
cmp %r12, %r12
movb $0x61, (%r10)
and $13878, %rcx
lea addresses_normal_ht+0x13c69, %rsi
lea addresses_WC_ht+0x8ee9, %rdi
nop
nop
nop
and %rbp, %rbp
mov $85, %rcx
rep movsl
xor %rcx, %rcx
lea addresses_normal_ht+0x1c369, %rcx
nop
nop
nop
nop
nop
dec %r9
mov (%rcx), %ebp
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x14aa9, %rsi
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%rsi), %rcx
nop
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1cfe9, %r15
inc %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r15)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r14
nop
xor %r14, %r14

// Store
lea addresses_UC+0x1ba69, %r14
nop
add %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
cmp %rsi, %rsi

// Store
lea addresses_WT+0x1f069, %rbp
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rbp)
nop
sub $6607, %rbp

// Store
mov $0x5a5, %r10
nop
nop
nop
nop
xor %r13, %r13
movb $0x51, (%r10)
nop
nop
nop
dec %rbp

// Load
lea addresses_WC+0x9869, %r14
nop
nop
nop
nop
dec %r10
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r15
cmp $28003, %r10

// Faulty Load
mov $0x7c77da0000000869, %rsi
nop
and $50261, %r14
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': True, 'NT': False}}
{'49': 12407, '44': 9422}
49 49 44 44 49 49 44 49 44 49 49 44 44 49 49 44 49 44 49 49 49 49 44 44 49 49 49 44 49 49 49 44 44 44 44 49 49 44 44 44 49 44 49 49 44 49 49 44 49 44 49 44 49 49 49 44 49 44 49 49 44 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 44 49 44 44 44 49 44 49 49 49 44 49 44 44 49 49 44 49 44 49 49 44 44 49 44 44 49 49 44 44 49 49 44 44 49 49 49 49 44 44 49 44 49 49 44 49 49 49 49 44 49 49 49 44 44 49 44 44 49 49 44 49 49 44 44 44 44 49 44 49 49 49 44 44 49 49 44 44 44 49 44 44 49 44 49 44 44 49 44 44 49 44 49 49 44 49 49 49 49 44 44 49 44 44 44 49 49 49 49 49 44 49 44 49 49 44 49 49 49 49 49 44 49 44 44 44 44 44 44 44 49 49 44 44 49 49 49 44 44 44 44 44 49 44 49 49 44 49 49 44 44 49 49 44 49 49 49 44 44 49 44 49 49 49 44 49 44 49 49 44 49 49 44 49 49 49 49 49 49 44 44 49 49 44 49 44 49 44 49 49 49 49 49 49 49 44 49 44 49 49 49 44 44 44 49 49 49 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 44 49 49 49 44 49 49 44 49 49 44 49 49 49 49 44 44 49 44 49 49 44 49 44 49 44 49 49 49 44 49 44 49 49 49 44 49 49 44 49 44 44 49 44 44 49 49 49 49 44 49 44 44 44 44 44 49 44 49 49 44 44 49 44 44 44 44 44 49 44 49 44 44 44 44 44 49 49 44 44 44 49 44 49 49 49 49 49 44 49 44 49 49 49 49 49 49 44 49 44 49 49 49 49 44 44 49 44 44 44 49 49 44 44 49 49 49 44 49 44 49 44 44 49 49 49 44 44 44 49 44 44 44 49 44 44 44 49 44 44 49 49 49 44 49 44 44 49 49 44 44 44 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 44 49 49 44 44 49 49 49 49 49 49 44 44 44 49 49 49 49 49 49 49 49 44 49 49 44 49 44 44 44 49 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 44 49 44 44 49 49 44 49 44 44 44 44 44 44 44 49 49 49 44 49 49 49 44 49 49 49 49 44 49 49 49 49 49 44 49 44 49 49 49 49 44 49 44 44 44 44 49 49 49 44 44 44 49 44 49 44 49 44 49 44 49 44 49 44 44 44 49 49 49 44 49 49 49 49 49 44 49 49 44 44 49 49 49 44 49 44 49 44 49 49 49 49 49 44 49 49 49 49 44 49 49 44 44 44 49 49 49 49 49 49 49 49 49 44 49 44 49 44 44 44 44 44 49 44 49 44 49 49 49 44 49 49 49 49 49 44 44 44 44 44 49 49 44 44 44 49 49 49 44 44 44 49 49 49 44 44 49 44 44 49 49 49 49 44 44 49 49 49 49 49 44 44 49 44 49 49 49 49 44 44 49 49 44 49 49 44 49 44 49 44 44 44 44 44 49 49 49 49 44 44 44 49 49 49 44 49 44 49 44 49 44 49 49 49 49 44 49 49 49 44 44 49 49 44 44 44 49 49 44 49 49 44 49 44 44 49 44 44 49 49 49 49 44 49 49 49 49 49 49 44 44 49 49 49 44 44 44 49 49 44 49 49 49 49 44 44 44 44 49 49 44 44 49 49 44 49 49 44 49 44 49 49 49 49 44 49 44 49 44 44 44 44 44 44 44 44 44 44 49 49 44 49 44 49 44 44 44 49 44 49 44 49 49 49 44 49 49 49 44 44 49 44 49 49 44 49 49 44 49 44 44 49 44 49 49 49 49 49 44 44 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 49 44 44 49 49 49 49 49 44 44 44 49 44 44 49 44 49 44 44 49 49 44 49 49 44 44 44 49 49 49 44 49 44 44 44 49 44 49 44 49 49 49 49 49 49 44 44 49 49 49 44 49 49 49 44 49 44 49 49 49 49 44 44 49 49 49 49 44 44 44 44 49 49 44 49 49 49 49 44 49 44 44 49 49 44 44 49 44 44 44 49 49 49 49 44 49 49 44 49 49 44 49 49 44 44 44 49 44 44 44 49 44 44 49 49 44 44 44 49 49 44 44 49 44 49 49 49 49
*/
