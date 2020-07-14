.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19024, %rsi
lea addresses_normal_ht+0x18394, %rdi
nop
nop
add $50105, %r9
mov $110, %rcx
rep movsq
nop
dec %rcx
lea addresses_normal_ht+0x15304, %rbp
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rbp), %rax
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx

// Store
lea addresses_UC+0x112d8, %rbx
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
nop
nop
sub %r10, %r10

// Store
lea addresses_PSE+0xf9bc, %r10
sub %r13, %r13
movb $0x51, (%r10)
nop
nop
nop
add %r13, %r13

// Load
lea addresses_A+0x1ef04, %rcx
nop
nop
sub $51001, %rbp
mov (%rcx), %r8
inc %rbp

// Store
mov $0x9c4, %rbx
sub $51040, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovaps %ymm7, (%rbx)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0xa1c4, %rbx
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
sub $48871, %r10

// Store
lea addresses_normal+0x940a, %r8
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovaps %ymm6, (%r8)
add %rbp, %rbp

// Load
lea addresses_PSE+0x1cc86, %r8
nop
nop
nop
add $36646, %rbp
movb (%r8), %r15b
add %r13, %r13

// Faulty Load
lea addresses_A+0x59c4, %r15
nop
and $61358, %r13
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'58': 8}
58 58 58 58 58 58 58 58
*/
