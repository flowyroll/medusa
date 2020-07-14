.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xf539, %r15
nop
nop
nop
nop
nop
and $8590, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r15)
cmp %rcx, %rcx
lea addresses_WC_ht+0x7939, %rbx
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rbx), %r9
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x82d1, %rsi
lea addresses_A_ht+0x1c539, %rdi
cmp %rdx, %rdx
mov $86, %rcx
rep movsb
nop
sub $31150, %r15
lea addresses_UC_ht+0x1a1b9, %rdi
xor %rbx, %rbx
mov (%rdi), %r9d
add $29563, %rdi
lea addresses_A_ht+0x896, %r10
nop
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r10)
dec %rdx
lea addresses_A_ht+0x1ec71, %rsi
lea addresses_WC_ht+0x1cd73, %rdi
nop
nop
nop
add %r9, %r9
mov $4, %rcx
rep movsq
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0xc7c9, %r10
nop
xor $50664, %rbx
movb (%r10), %dl
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Store
lea addresses_WT+0x18d39, %r15
nop
nop
add $58964, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r15)

// Exception!!!
nop
mov (0), %rdi
nop
nop
nop
nop
inc %rdi

// Store
mov $0x46e8be0000000cb9, %r9
nop
nop
nop
nop
nop
sub %r12, %r12
movb $0x51, (%r9)
nop
nop
xor $21509, %r12

// Store
lea addresses_A+0x5539, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
movb $0x51, (%rdi)
nop
xor %r8, %r8

// Store
lea addresses_UC+0x18d39, %rdi
nop
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%rdi)
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_A+0xcd39, %r15
nop
nop
nop
nop
and $16189, %r8
mov (%r15), %r9d
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'54': 175}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
