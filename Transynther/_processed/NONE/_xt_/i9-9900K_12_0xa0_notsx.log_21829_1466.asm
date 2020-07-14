.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x50e, %rdx
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm2, (%rdx)
nop
nop
nop
cmp $14953, %r8
lea addresses_A_ht+0xdd0e, %r13
nop
nop
nop
nop
sub $48869, %r10
movb $0x61, (%r13)
nop
and $45676, %rdx
lea addresses_WT_ht+0x1fbe, %rsi
lea addresses_WT_ht+0x1c68e, %rdi
nop
nop
nop
nop
nop
cmp $62512, %rdx
mov $125, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $2845, %r10
lea addresses_A_ht+0xdc2e, %r12
nop
nop
nop
nop
nop
cmp $33787, %r13
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rcx
xor %r13, %r13
lea addresses_UC_ht+0x170e, %r8
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r8)
nop
inc %r8
lea addresses_UC_ht+0x1a50e, %r10
nop
nop
nop
nop
and %r8, %r8
mov (%r10), %r12d
nop
nop
nop
cmp $5953, %rcx
lea addresses_A_ht+0xf90e, %rdx
xor %rcx, %rcx
movw $0x6162, (%rdx)
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x448e, %r10
nop
nop
nop
cmp $33528, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r10)
nop
sub $35293, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xc04e, %r12
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r12)
nop
nop
nop
nop
xor $62550, %r8

// Store
lea addresses_PSE+0x15080, %r8
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
nop
nop
and $55585, %rdx

// Store
lea addresses_normal+0x436a, %r10
nop
nop
cmp $31280, %rsi
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add $6073, %r15

// Store
lea addresses_A+0x35b6, %r8
nop
and $48167, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_WT+0x1ce36, %rdx
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
dec %r15

// Load
lea addresses_WC+0x1782e, %r15
nop
nop
nop
nop
inc %r8
mov (%r15), %rsi
nop
nop
nop
sub $46466, %r8

// Store
lea addresses_PSE+0xac0e, %r8
cmp %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_PSE+0x17c0e, %r15
nop
nop
sub $53592, %r8
movb $0x51, (%r15)
nop
nop
nop
nop
inc %rsi

// REPMOV
lea addresses_D+0x1590e, %rsi
lea addresses_WC+0xec0e, %rdi
add $37955, %rdx
mov $81, %rcx
rep movsl
nop
nop
and $60147, %rdx

// Store
lea addresses_WC+0x1e00e, %rdi
nop
nop
nop
nop
nop
xor $29285, %r15
movw $0x5152, (%rdi)
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_WT+0x1310e, %r15
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%r15), %di
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
