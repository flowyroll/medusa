.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x11f25, %r10
nop
add $60906, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r10)
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x1e73, %rbx
nop
nop
add $3106, %rbp
mov $0x6162636465666768, %rax
movq %rax, (%rbx)
nop
nop
nop
sub $57682, %r8
lea addresses_WC_ht+0x724f, %rsi
lea addresses_D_ht+0xe9f, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $62, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x4def, %rbp
and %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rbp)
sub $23301, %rdi
lea addresses_D_ht+0x189c5, %r10
nop
nop
sub $18531, %r13
movb $0x61, (%r10)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x13fc3, %rcx
sub $34674, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%rcx)
nop
sub $62199, %r8
lea addresses_UC_ht+0x1ae6f, %rsi
lea addresses_WC_ht+0xd82f, %rdi
nop
dec %r8
mov $105, %rcx
rep movsq
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x14ea7, %r8
nop
nop
nop
xor $20350, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x7a9efa000000016f, %r12
nop
nop
nop
xor $51422, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovaps %ymm2, (%r12)
nop
sub $7011, %rbx

// Store
lea addresses_UC+0x78ef, %r9
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%r9)
nop
nop
xor $29084, %r14

// Load
lea addresses_A+0xf607, %r12
nop
nop
cmp %rsi, %rsi
mov (%r12), %ebx
nop
nop
nop
nop
and $56170, %rsi

// Faulty Load
lea addresses_US+0x1316f, %r14
clflush (%r14)
cmp $53729, %r9
mov (%r14), %ebx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 8}
58 58 58 58 58 58 58 58
*/
