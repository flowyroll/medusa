.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb0d4, %r12
nop
nop
nop
nop
nop
sub %rbp, %rbp
movw $0x6162, (%r12)
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x12d4, %rsi
lea addresses_UC_ht+0xcace, %rdi
nop
cmp $4274, %r11
mov $116, %rcx
rep movsl
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x158e7, %rsi
lea addresses_WT+0x115d4, %rdi
nop
nop
nop
cmp %r14, %r14
mov $4, %rcx
rep movsw
nop
nop
nop
and $52805, %r14

// Store
lea addresses_US+0xc4d4, %r12
nop
dec %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r12)
nop
xor $54985, %rsi

// Faulty Load
lea addresses_RW+0xead4, %rbx
nop
add %r12, %r12
mov (%rbx), %si
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'32': 139}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
