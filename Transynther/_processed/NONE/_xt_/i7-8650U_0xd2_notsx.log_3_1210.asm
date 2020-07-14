.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x193b7, %r11
nop
nop
add $11381, %rsi
movw $0x6162, (%r11)
cmp %rcx, %rcx
lea addresses_normal_ht+0x303e, %rsi
lea addresses_WT_ht+0xa3fe, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $119, %rcx
rep movsq
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1cbfe, %rdi
xor $34314, %rbx
mov (%rdi), %r13d
sub $30424, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rdi
push %rsi

// Load
lea addresses_D+0xf3fe, %rsi
cmp $10177, %r13
mov (%rsi), %r15w
nop
nop
nop
nop
cmp $45063, %r8

// Store
lea addresses_UC+0x45fe, %r8
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
nop
nop
nop
and $42950, %rsi

// Load
lea addresses_A+0x11f9e, %r13
nop
nop
nop
nop
nop
dec %rbp
mov (%r13), %r15d
cmp $34346, %rdi

// Load
lea addresses_WT+0x5bfe, %r10
nop
nop
dec %rsi
mov (%r10), %r8d

// Exception!!!
nop
nop
mov (0), %rbp
nop
nop
nop
xor %r8, %r8

// Load
lea addresses_RW+0x11fe, %rbp
nop
nop
nop
nop
nop
dec %r13
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %r8
and %r10, %r10

// Store
lea addresses_A+0x2ffe, %r15
nop
nop
nop
nop
and $26798, %rdi
movw $0x5152, (%r15)
nop
nop
sub $56664, %rsi

// Store
mov $0xd9e, %rbp
nop
nop
nop
cmp $300, %r10
movb $0x51, (%rbp)
nop
nop
and $56238, %r10

// Load
lea addresses_RW+0x1e57e, %r10
nop
nop
nop
cmp $4216, %rdi
mov (%r10), %rsi
nop
sub %rdi, %rdi

// Store
mov $0x25ea2d0000000294, %r8
xor $15484, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
nop
cmp $24650, %r10

// Store
lea addresses_UC+0x1dffe, %rdi
nop
nop
nop
nop
nop
inc %r10
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
add $48490, %r15

// Store
lea addresses_PSE+0xfa2e, %r13
nop
nop
nop
nop
nop
xor $53179, %rsi
movb $0x51, (%r13)
nop
nop
nop
nop
nop
sub $39572, %r10

// Faulty Load
lea addresses_WT+0x1e7fe, %r8
and %rdi, %rdi
mov (%r8), %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'39': 3}
39 39 39
*/
