.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1540f, %r9
nop
nop
nop
nop
and $31971, %r10
movb (%r9), %r14b
nop
nop
nop
nop
nop
xor $62911, %r12
lea addresses_UC_ht+0x604b, %rsi
lea addresses_UC_ht+0x1bf9f, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $86, %rcx
rep movsq
nop
add %rsi, %rsi
lea addresses_WT_ht+0x5e0f, %rdi
nop
add $20653, %r12
mov (%rdi), %r10w
nop
nop
add $1432, %r10
lea addresses_UC_ht+0x1684f, %rsi
lea addresses_D_ht+0xb20f, %rdi
nop
nop
add $22901, %r14
mov $81, %rcx
rep movsb
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdx

// Store
lea addresses_A+0x18f0f, %r13
nop
nop
sub $59728, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
nop
cmp $2419, %r8

// Load
lea addresses_A+0x134e7, %rcx
nop
nop
and %rdx, %rdx
mov (%rcx), %r12
cmp %r12, %r12

// Store
mov $0xacfe200000000bf, %r12
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
nop
nop
nop
add $49772, %r11

// Store
lea addresses_normal+0x1058f, %rax
nop
nop
nop
nop
nop
sub $24939, %rdx
movl $0x51525354, (%rax)
nop
nop
nop
and %r11, %r11

// Store
lea addresses_D+0x960f, %rdx
nop
nop
add %rax, %rax
movl $0x51525354, (%rdx)
sub $29542, %rcx

// Store
lea addresses_US+0x2c07, %rdx
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
add %r13, %r13

// Faulty Load
lea addresses_RW+0xea0f, %r13
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%r13), %r8b
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'32': 287}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
