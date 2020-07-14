.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x17c6e, %rsi
lea addresses_UC_ht+0x32f9, %rdi
nop
nop
nop
nop
add $41390, %r10
mov $41, %rcx
rep movsw
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x37c5, %rdx
nop
nop
nop
nop
xor $23017, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
add $58548, %rbx
lea addresses_normal_ht+0xff59, %r10
mfence
movb (%r10), %bl
nop
cmp $10089, %rdx
lea addresses_WT_ht+0x19af9, %rcx
clflush (%rcx)
and $50081, %r12
mov (%rcx), %r10
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x11749, %r12
nop
and %r10, %r10
movb (%r12), %dl
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x17ef9, %rsi
lea addresses_UC_ht+0x16ff9, %rdi
clflush (%rsi)
add %r10, %r10
mov $112, %rcx
rep movsw
nop
nop
nop
nop
xor $19408, %r12
lea addresses_normal_ht+0x1bf69, %rsi
lea addresses_A_ht+0x11e79, %rdi
nop
cmp %rbp, %rbp
mov $110, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x10129, %rdi
nop
and $12532, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %rdi
movaps %xmm2, (%rdi)
nop
nop
nop
mfence
lea addresses_D_ht+0xc8b9, %r10
nop
nop
nop
and %rcx, %rcx
mov (%r10), %rbp
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Store
mov $0x6b4c090000000cf9, %r12
nop
add $55879, %r9
movw $0x5152, (%r12)
xor %r12, %r12

// Store
lea addresses_normal+0xfb4d, %rdi
nop
add %rcx, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_A+0xea51, %rcx
nop
nop
xor $19852, %r15
movw $0x5152, (%rcx)
nop
cmp $59232, %rdi

// Faulty Load
lea addresses_RW+0xcef9, %r12
nop
nop
sub $3399, %r15
movb (%r12), %r8b
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'32': 86}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
