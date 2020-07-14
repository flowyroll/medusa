.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13a5f, %rdi
nop
nop
nop
nop
nop
and $1306, %rax
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm7
vpextrq $0, %xmm7, %r12
nop
dec %r13
lea addresses_A_ht+0x10d61, %rax
nop
nop
nop
nop
nop
and $57798, %r14
movl $0x61626364, (%rax)
nop
nop
inc %rax
lea addresses_WC_ht+0xee4d, %rsi
lea addresses_WT_ht+0x4acd, %rdi
nop
nop
nop
sub %r12, %r12
mov $45, %rcx
rep movsw
sub $44747, %rdi
lea addresses_D_ht+0xd24d, %r12
nop
nop
nop
and %rcx, %rcx
mov (%r12), %r14w
nop
sub %r14, %r14
lea addresses_A_ht+0x1228f, %rcx
nop
dec %r12
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add $27954, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0xa383, %rsi
lea addresses_A+0x103cd, %rdi
nop
nop
nop
nop
nop
cmp $29711, %r9
mov $63, %rcx
rep movsl
nop
nop
nop
dec %rcx

// Load
lea addresses_RW+0x1ea4d, %r9
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r9), %rdi
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_WC+0x9a9d, %r13
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%r13)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_RW+0xfa3d, %r13
nop
nop
nop
nop
nop
xor $20930, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_RW+0x1ea4d, %rdi
sub %rdx, %rdx
mov (%rdi), %r13d
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'32': 44}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
