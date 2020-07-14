.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3e27, %rsi
nop
sub $4481, %r12
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x1da27, %rsi
lea addresses_A_ht+0x126f, %rdi
xor $14051, %rbp
mov $96, %rcx
rep movsq
xor %rsi, %rsi
lea addresses_normal_ht+0xf287, %r12
nop
nop
nop
sub $11467, %r13
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
cmp %r10, %r10
lea addresses_UC_ht+0x1a697, %rcx
nop
nop
nop
nop
sub $36229, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rcx)
nop
cmp %r12, %r12
lea addresses_WC_ht+0x4d30, %rsi
lea addresses_WC_ht+0xf27, %rdi
nop
nop
nop
nop
and $64131, %r9
mov $4, %rcx
rep movsb
nop
nop
nop
nop
xor $27254, %r12
lea addresses_D_ht+0x7325, %rsi
nop
cmp $38746, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rsi)
nop
add $12462, %rdi
lea addresses_A_ht+0xd33f, %r9
and %rsi, %rsi
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
xor $54319, %r13
lea addresses_WC_ht+0x16927, %r9
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%r9)
nop
nop
xor $22045, %r9
lea addresses_WC_ht+0xfba7, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rcx)
nop
nop
add $15726, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x1ed27, %rsi
lea addresses_A+0x11427, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $5, %rcx
rep movsq
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_UC+0x16967, %rcx
nop
nop
inc %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x8f3, %r9
nop
nop
nop
nop
nop
xor $20798, %rdi
movb $0x51, (%r9)
nop
nop
nop
and %r12, %r12

// Load
lea addresses_WC+0x1dc27, %rsi
clflush (%rsi)
nop
nop
nop
nop
dec %r12
movb (%rsi), %cl
nop
add %rdi, %rdi

// Faulty Load
lea addresses_A+0x11427, %r9
nop
sub %r13, %r13
movntdqa (%r9), %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'00': 1}
00
*/
