.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x36b0, %r10
nop
add $21095, %r12
movw $0x5152, (%r10)
nop
nop
cmp %r14, %r14

// Load
mov $0x7c8, %r10
cmp $40229, %r15
movaps (%r10), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_RW+0x1a8c8, %rdx
nop
nop
nop
nop
dec %rcx
movl $0x51525354, (%rdx)
xor %r14, %r14

// REPMOV
lea addresses_RW+0x113c8, %rsi
lea addresses_US+0x4bc8, %rdi
nop
nop
nop
nop
nop
mfence
mov $117, %rcx
rep movsb
nop
nop
nop
nop
inc %r12

// Store
lea addresses_A+0xefc8, %rdx
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rdx)
add $42717, %rdi

// Load
lea addresses_WC+0x8448, %r10
nop
nop
nop
nop
and $44886, %r15
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
add $19103, %rdi

// Store
lea addresses_normal+0x2577, %r12
cmp %r10, %r10
movl $0x51525354, (%r12)
nop
nop
xor %r12, %r12

// Load
lea addresses_PSE+0x11282, %r15
nop
nop
nop
nop
sub $47922, %r12
movb (%r15), %al
nop
sub %rdx, %rdx

// Store
lea addresses_WC+0x13448, %r14
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_UC+0x8264, %rdi
nop
nop
sub %r12, %r12
movl $0x51525354, (%rdi)
nop
nop
nop
nop
xor $20397, %rsi

// Store
lea addresses_UC+0x1c708, %rsi
nop
sub %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
cmp %rax, %rax

// Faulty Load
mov $0x7c8, %rdx
inc %r12
mov (%rdx), %r14w
lea oracles, %r14
and $0xff, %r14
shlq $12, %r14
mov (%r14,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_P', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'02': 1}
02
*/
