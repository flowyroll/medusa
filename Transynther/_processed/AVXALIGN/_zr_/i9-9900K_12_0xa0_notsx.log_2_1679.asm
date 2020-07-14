.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1c091, %rcx
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, (%rcx)
nop
nop
cmp %rbp, %rbp

// Store
mov $0x7a5b2e00000009c7, %r15
and %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
nop
nop
nop
nop
sub $30204, %rcx

// Store
lea addresses_UC+0x17dc9, %r13
sub %r10, %r10
movl $0x51525354, (%r13)
nop
add %rsi, %rsi

// Store
lea addresses_PSE+0xb645, %r15
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r15)
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_WC+0xc149, %r10
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r10), %bp
nop
nop
nop
cmp $51677, %rcx

// Store
lea addresses_normal+0x12ff5, %r15
nop
nop
cmp $53115, %r8
movl $0x51525354, (%r15)
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_normal+0xf091, %r10
nop
nop
nop
nop
cmp %r15, %r15
movw $0x5152, (%r10)
cmp %rbp, %rbp

// Load
lea addresses_A+0x148e1, %r10
nop
add %r15, %r15
mov (%r10), %r8d
nop
nop
nop
nop
and $39062, %r8

// Store
lea addresses_D+0x1e639, %r13
inc %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r13)
add %r8, %r8

// REPMOV
lea addresses_UC+0x131b9, %rsi
lea addresses_UC+0x11d91, %rdi
nop
nop
nop
nop
lfence
mov $14, %rcx
rep movsq
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_normal+0xf091, %rbp
nop
nop
xor $41085, %rcx
vmovaps (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 8, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
