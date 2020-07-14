.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7a95, %rdx
nop
nop
nop
cmp $2458, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
lfence
lea addresses_A_ht+0x2f55, %rdi
xor %r10, %r10
mov (%rdi), %ax
nop
xor $32274, %rdx
lea addresses_normal_ht+0x6195, %rsi
lea addresses_WT_ht+0xa80b, %rdi
clflush (%rdi)
nop
nop
nop
sub $34127, %r12
mov $94, %rcx
rep movsq
nop
nop
xor $35324, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xd895, %rsi
lea addresses_WC+0x9109, %rdi
nop
nop
and %rax, %rax
mov $6, %rcx
rep movsw
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0xa721, %rcx
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
nop
and %r14, %r14

// Load
lea addresses_US+0x12695, %rdi
xor $57008, %rcx
mov (%rdi), %r14w
nop
cmp $52968, %rax

// Faulty Load
lea addresses_A+0x2a95, %rdi
nop
nop
nop
nop
nop
xor $15625, %rcx
mov (%rdi), %ebp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'00': 1}
00
*/
