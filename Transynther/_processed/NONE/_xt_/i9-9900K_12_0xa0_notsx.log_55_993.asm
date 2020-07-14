.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16ea1, %r12
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%r12)
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x11f41, %r9
clflush (%r9)
nop
nop
sub $35258, %r14
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0xde71, %r12
inc %r8
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x1ada4, %r12
nop
nop
add $46306, %r10
mov (%r12), %edx
nop
nop
nop
nop
and $17242, %rsi
lea addresses_A_ht+0x1c743, %rsi
lea addresses_A_ht+0xf0a1, %rdi
nop
sub $9307, %r8
mov $14, %rcx
rep movsl
nop
nop
nop
nop
nop
and $21030, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0xd3a1, %rax
nop
nop
nop
nop
and %r9, %r9
movl $0x51525354, (%rax)
nop
nop
nop
nop
dec %r13

// Load
lea addresses_WT+0x14221, %rax
nop
nop
nop
and $18128, %rbp
movb (%rax), %bl
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_UC+0x1f0b7, %rsi
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movaps %xmm4, (%rsi)
nop
nop
nop
nop
nop
cmp $60336, %rbp

// Store
mov $0x8c1, %r13
xor $35414, %rax
movw $0x5152, (%r13)
nop
nop
nop
dec %rbx

// Store
lea addresses_PSE+0x10e41, %r12
xor %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movaps %xmm7, (%r12)
nop
nop
nop
xor $53533, %rbp

// Faulty Load
lea addresses_normal+0x14ba1, %r13
nop
nop
add $9212, %rbx
mov (%r13), %r9w
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'34': 55}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
