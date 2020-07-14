.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x8bfc, %rdi
nop
nop
xor %r9, %r9
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
add %r8, %r8

// Store
lea addresses_UC+0x2f7c, %r10
clflush (%r10)
nop
sub $6552, %r15
movw $0x5152, (%r10)
nop
xor $50317, %r8

// Store
lea addresses_A+0x1556c, %r8
nop
nop
nop
nop
nop
and $6101, %rsi
movb $0x51, (%r8)
nop
nop
and %r15, %r15

// Load
lea addresses_D+0x17c, %r10
nop
nop
nop
nop
nop
cmp $61711, %rcx
mov (%r10), %r8w
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_RW+0x697c, %r10
nop
xor $38732, %rcx
movb (%r10), %r8b
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'32': 3}
32 32 32
*/
