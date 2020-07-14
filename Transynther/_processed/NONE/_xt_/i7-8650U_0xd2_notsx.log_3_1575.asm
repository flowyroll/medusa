.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_RW+0x8d54, %r13
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
and %r10, %r10

// Store
lea addresses_D+0x19c54, %rax
nop
inc %r9
movl $0x51525354, (%rax)
nop
nop
inc %rbp

// Store
lea addresses_RW+0x128b, %rsi
and %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
mov $0xbc0, %rsi
nop
nop
nop
dec %rax
movw $0x5152, (%rsi)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0x1dd54, %rbp
nop
inc %rdx
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
xor $9975, %rsi

// Store
lea addresses_RW+0x15754, %rbp
nop
nop
cmp $6079, %rax
movw $0x5152, (%rbp)
nop
nop
nop
nop
cmp $54886, %r10

// Faulty Load
lea addresses_D+0x15554, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add $44626, %rax
mov (%r13), %r10d
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'36': 3}
36 36 36
*/
