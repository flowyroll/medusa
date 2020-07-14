.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
lea addresses_A_ht+0x1792f, %rax
nop
nop
nop
add %r13, %r13
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
cmp %r14, %r14
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %r9
push %rdx

// Store
lea addresses_A+0x14f57, %rdx
nop
cmp $12538, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movntdq %xmm5, (%rdx)
nop
nop
nop
nop
and $32655, %r8

// Store
lea addresses_UC+0x17897, %r9
nop
nop
nop
nop
cmp $53951, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
xor %r8, %r8

// Store
lea addresses_D+0x2457, %r15
nop
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
sub $6073, %rdx

// Store
lea addresses_RW+0xa691, %rdx
nop
sub $56345, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rdx)
nop
xor %r10, %r10

// Store
lea addresses_D+0xd4b7, %r11
nop
nop
nop
nop
inc %r15
movw $0x5152, (%r11)
nop
xor %r8, %r8

// Faulty Load
lea addresses_D+0x2457, %r9
nop
nop
dec %rdx
mov (%r9), %r14d
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 250}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
