.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1b1f8, %r10
nop
nop
nop
nop
nop
sub %r13, %r13
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
inc %r13

// Store
lea addresses_WC+0xb5f8, %rdx
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
sub $12350, %r13

// Store
lea addresses_A+0x115f8, %r10
clflush (%r10)
xor %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
nop
nop
add $3234, %rdi

// Faulty Load
lea addresses_UC+0xe5f8, %r10
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%r10), %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'58': 38}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
