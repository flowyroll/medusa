.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xb001, %r8
sub $46808, %r15
movl $0x51525354, (%r8)
nop
nop
add %rdi, %rdi

// REPMOV
lea addresses_A+0xee61, %rsi
lea addresses_A+0xdd5, %rdi
nop
nop
nop
xor $62378, %rax
mov $52, %rcx
rep movsl
cmp $18900, %rsi

// Store
lea addresses_A+0xf961, %rbx
nop
nop
nop
sub %r15, %r15
movw $0x5152, (%rbx)
nop
mfence

// Load
lea addresses_A+0x18661, %rsi
nop
nop
nop
cmp $30531, %r8
mov (%rsi), %bx
add $50868, %rbx

// Store
lea addresses_WC+0xda61, %rax
nop
nop
add $48493, %rcx
movw $0x5152, (%rax)
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_UC+0x5a61, %r8
xor $46923, %rax
movb (%r8), %r15b
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'37': 178}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
