.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rsi

// Store
mov $0x3caf8e0000000f8d, %rcx
cmp %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
xor %r8, %r8

// Load
lea addresses_WT+0x1047d, %r15
clflush (%r15)
nop
xor $45241, %rsi
mov (%r15), %rcx
nop
sub $33282, %rsi

// Store
lea addresses_D+0x12c9d, %r14
nop
add %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
nop
cmp $32109, %r8

// Store
lea addresses_D+0x158fd, %r10
nop
sub $24862, %rsi
movw $0x5152, (%r10)
nop
inc %r14

// Store
lea addresses_normal+0x1e007, %rbp
nop
nop
add $6321, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_UC+0xf8fd, %rbp
nop
nop
inc %r15
movb (%rbp), %r8b
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'52': 2}
52 52
*/
