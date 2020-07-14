.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14ae6, %rsi
lea addresses_normal_ht+0xa486, %rdi
nop
nop
add $41053, %r9
mov $122, %rcx
rep movsl
nop
xor %r12, %r12
lea addresses_D_ht+0x1e396, %rsi
nop
nop
nop
cmp $29766, %r13
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r12
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x12c56, %rax
nop
nop
nop
nop
and $5969, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WC+0x1dae6, %rcx
nop
nop
xor $16526, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%rcx)
nop
dec %r13

// REPMOV
lea addresses_normal+0x1c343, %rsi
lea addresses_WC+0x1cc06, %rdi
add %r14, %r14
mov $81, %rcx
rep movsl
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_RW+0x1c9e6, %r10
nop
nop
nop
xor %rbp, %rbp
movw $0x5152, (%r10)
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
mov $0x7af0c200000009e6, %rsi
clflush (%rsi)
nop
nop
nop
sub %r14, %r14
mov (%rsi), %ecx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 11335, '52': 10494}
00 52 00 00 52 52 00 00 00 00 52 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 52 52 00 00 52 00 00 52 52 52 52 00 52 00 00 52 00 00 52 00 00 00 00 00 00 00 52 00 00 52 00 52 00 00 00 52 52 52 00 52 00 52 00 00 52 00 00 52 00 00 52 52 52 00 00 00 00 00 52 52 00 00 00 00 00 52 00 52 00 52 00 00 00 00 00 52 52 52 00 00 00 52 00 00 00 00 52 00 00 52 00 00 00 00 52 00 00 52 52 00 00 00 00 52 00 00 00 52 00 00 52 52 52 52 52 52 00 00 00 00 52 52 52 00 00 00 52 52 00 52 52 00 52 52 52 52 52 00 00 00 00 00 52 52 52 52 00 00 52 52 00 00 00 00 52 00 00 52 52 00 52 52 00 00 52 00 00 00 52 52 52 52 00 52 00 52 00 00 00 52 00 52 52 00 00 00 00 00 52 00 52 00 00 52 00 00 00 52 52 00 00 00 52 00 52 00 52 00 00 52 52 00 52 52 52 52 52 52 52 00 52 00 00 00 52 00 00 52 00 52 52 52 00 00 52 00 00 00 52 52 00 52 52 52 52 52 00 52 00 00 00 52 00 00 00 00 00 52 52 52 52 52 00 00 00 00 52 52 00 52 00 52 52 52 00 00 52 00 00 00 00 00 52 52 00 00 52 52 52 00 00 52 00 52 00 52 00 00 52 00 00 00 00 00 00 00 00 00 52 00 52 52 00 00 52 52 00 00 00 00 00 52 00 00 52 52 00 00 00 00 00 00 52 52 00 52 52 00 52 52 00 00 00 52 52 52 52 00 00 52 00 00 00 52 00 00 52 00 52 00 52 00 00 52 00 00 52 52 00 52 00 52 52 00 00 52 52 00 52 00 00 52 00 52 52 52 00 00 00 00 00 52 52 00 00 52 52 52 52 00 52 00 52 00 52 00 52 00 52 00 00 52 52 00 52 52 52 00 00 00 00 00 00 52 52 00 00 00 52 52 00 00 00 00 00 52 00 00 00 00 00 52 52 00 52 00 00 00 52 52 52 00 00 00 52 00 00 00 00 00 52 52 52 00 00 52 52 00 52 52 52 00 52 00 00 00 00 00 52 00 52 00 00 00 52 52 00 00 00 00 52 00 00 52 00 00 52 00 00 00 52 00 52 00 52 00 52 00 52 52 00 52 00 52 52 52 52 00 52 00 00 52 52 00 52 52 00 52 00 00 00 00 00 52 00 00 00 00 00 52 52 00 00 00 00 52 00 00 00 00 00 52 52 52 00 52 00 00 52 00 00 52 00 00 52 00 00 00 52 52 00 00 00 52 52 00 52 52 00 00 00 52 00 52 00 00 52 00 52 52 52 52 52 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 52 00 52 52 00 00 52 52 00 52 00 52 52 52 00 00 52 00 52 00 00 00 00 52 52 00 52 52 52 00 00 52 00 52 52 52 00 00 52 52 52 00 00 52 52 00 00 00 00 00 00 52 00 00 00 00 00 52 00 52 52 52 00 52 52 00 00 52 00 52 00 00 52 00 52 52 00 00 52 52 52 52 00 00 00 00 00 00 00 52 52 00 52 52 00 52 52 00 00 52 00 00 52 00 52 00 52 52 52 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 52 52 00 00 00 52 52 00 00 52 00 52 00 52 52 00 52 00 00 00 52 52 00 52 00 52 00 00 00 52 00 52 00 52 52 52 52 00 00 52 00 00 52 52 00 52 00 00 52 52 52 00 52 52 00 00 52 52 00 00 52 00 00 52 52 00 00 52 00 00 00 00 00 00 52 52 00 00 52 00 52 52 00 52 00 00 00 52 00 00 52 00 52 00 52 52 52 52 52 00 52 00 00 52 00 00 00 52 52 00 52 52 00 52 00 00 00 00 00 00 52 00 52 52 00 00 52 00 00 52 52 52 52 00 52 00 52 00 52 52 52 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 52 52 00 52 00 00 00 00 00 00 00 52 52 00 00 00 00 52 52 52 00 00 52 52 52 52 00 52 00 00 52 00 00 00 00 00 00 52 00 52 00 52 52 00 00 52 00 52 00 52 52 52 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 52 52 00 00 00 00 00 52 52
*/
