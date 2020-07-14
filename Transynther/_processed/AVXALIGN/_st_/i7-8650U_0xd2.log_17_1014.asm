.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbp
push %rsi
lea addresses_WC_ht+0x3ac2, %rsi
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
cmp %r12, %r12
pop %rsi
pop %rbp
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x116d6, %r15
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, (%r15)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_A+0x19c56, %rcx
nop
nop
nop
nop
xor $17840, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
inc %r14

// Store
mov $0x256, %rdx
nop
nop
nop
nop
inc %rsi
movw $0x5152, (%rdx)
nop
nop
sub $18195, %r14

// Store
lea addresses_UC+0x1e9d6, %rcx
clflush (%rcx)
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
add $19292, %r15

// Faulty Load
lea addresses_PSE+0x19056, %r13
nop
nop
dec %r14
mov (%r13), %dx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'33': 17}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
