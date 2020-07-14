.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x16e13, %rsi
nop
nop
nop
nop
dec %r10
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x10b13, %r8
nop
sub %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x6913, %rsi
lea addresses_WC_ht+0xce8, %rdi
nop
xor $31814, %r15
mov $14, %rcx
rep movsl
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1a68b, %rsi
lea addresses_UC_ht+0x235b, %rdi
inc %r10
mov $62, %rcx
rep movsq
nop
cmp $39389, %r10
lea addresses_D_ht+0xe8b3, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
movl $0x61626364, (%rdi)
nop
xor $48402, %rdi
lea addresses_D_ht+0xd713, %rcx
nop
add $63763, %rax
mov (%rcx), %edi
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0xa153, %rsi
lea addresses_D_ht+0xd913, %rdi
nop
and $41051, %rax
mov $28, %rcx
rep movsl
nop
and $26644, %r8
lea addresses_normal_ht+0x13a11, %rsi
lea addresses_UC_ht+0x17f03, %rdi
nop
nop
xor %r8, %r8
mov $6, %rcx
rep movsq
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1eb03, %rsi
lea addresses_WC_ht+0x19d13, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rax, %rax
mov $103, %rcx
rep movsw
nop
and %rax, %rax
lea addresses_A_ht+0x1a533, %r8
nop
nop
nop
nop
nop
sub $23186, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%r8)
nop
nop
nop
nop
cmp $36987, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x3a13, %rsi
lea addresses_normal+0xd493, %rdi
nop
nop
nop
and $62189, %rax
mov $122, %rcx
rep movsb
nop
inc %rdi

// Store
lea addresses_US+0x9d13, %r14
nop
nop
nop
nop
add $36162, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
cmp $49322, %r13

// Load
lea addresses_D+0x156ff, %r12
xor %rsi, %rsi
movb (%r12), %r14b

// Exception!!!
nop
nop
nop
mov (0), %r13
nop
nop
dec %rdi

// Store
lea addresses_WC+0x713, %rcx
nop
nop
nop
nop
add $9168, %r12
movw $0x5152, (%rcx)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_US+0x10413, %r14
dec %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
nop
xor $42200, %r12

// Load
lea addresses_WC+0x713, %r12
nop
nop
nop
inc %rsi
movb (%r12), %al
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_WC+0x713, %r13
nop
nop
nop
add %r12, %r12
mov (%r13), %r14d
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'52': 2}
52 52
*/
