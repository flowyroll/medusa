.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x104a8, %r9
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r9)
nop
inc %rsi
lea addresses_WC_ht+0x7d10, %r14
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
and $5442, %r14
lea addresses_D_ht+0x129f0, %rsi
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
cmp $27058, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0x184a8, %r9
nop
nop
nop
nop
xor %r10, %r10
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
add $45282, %r9

// Store
lea addresses_D+0xb8a8, %r15
nop
inc %rbx
movw $0x5152, (%r15)
nop
nop
nop
cmp $32187, %rbx

// Load
mov $0x31858d00000008a8, %r9
nop
nop
nop
nop
nop
cmp $41581, %rbx
movb (%r9), %r15b
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_WT+0x154a8, %r9
nop
nop
sub %rbp, %rbp
mov (%r9), %bx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'39': 3}
39 39 39
*/
