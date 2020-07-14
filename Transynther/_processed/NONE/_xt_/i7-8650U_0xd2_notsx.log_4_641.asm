.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x17f8e, %r10
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x10156, %rsi
lea addresses_A_ht+0xc9d6, %rdi
nop
add $30128, %r8
mov $104, %rcx
rep movsl
xor $31461, %r13
lea addresses_D_ht+0x17856, %r8
sub $16247, %rdi
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r10
cmp $45344, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx

// Store
lea addresses_normal+0x15ed6, %r9
nop
nop
nop
nop
lfence
movl $0x51525354, (%r9)

// Exception!!!
nop
nop
nop
mov (0), %rcx
nop
nop
nop
and $55303, %rcx

// Store
lea addresses_WC+0xb356, %r14
nop
sub %r15, %r15
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
and $6219, %r15

// Store
lea addresses_PSE+0x15d6, %rcx
and %r9, %r9
movw $0x5152, (%rcx)
nop
nop
inc %r9

// Store
lea addresses_WT+0x157e6, %r14
nop
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r14)
inc %r14

// Store
lea addresses_UC+0xc79e, %r9
sub $24250, %r10
movl $0x51525354, (%r9)
nop
nop
nop
nop
xor $45448, %r12

// Store
lea addresses_A+0x10ac6, %rcx
nop
nop
sub %r12, %r12
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_PSE+0x165d6, %r14
nop
inc %r15
movb (%r14), %r12b
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'33': 4}
33 33 33 33
*/
