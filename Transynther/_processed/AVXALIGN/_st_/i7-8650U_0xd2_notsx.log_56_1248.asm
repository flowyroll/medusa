.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
lea addresses_WT_ht+0x11f33, %r10
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, (%r10)
nop
nop
nop
nop
sub %r14, %r14
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xf333, %rsi
lea addresses_WT+0x1bea3, %rdi
nop
sub %r13, %r13
mov $35, %rcx
rep movsw
and %rsi, %rsi

// Load
mov $0xb33, %rsi
xor %rbp, %rbp
mov (%rsi), %r12d
nop
nop
nop
nop
nop
dec %rcx

// Load
lea addresses_WC+0x88c3, %rcx
sub %rsi, %rsi
mov (%rcx), %r13
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_UC+0x3a7b, %rcx
nop
nop
nop
sub %rbp, %rbp
movl $0x51525354, (%rcx)

// Exception!!!
mov (0), %rsi
nop
nop
nop
nop
nop
cmp $49155, %rdi

// Faulty Load
lea addresses_RW+0x1db33, %r12
nop
and %rcx, %rcx
movb (%r12), %r9b
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'32': 56}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
