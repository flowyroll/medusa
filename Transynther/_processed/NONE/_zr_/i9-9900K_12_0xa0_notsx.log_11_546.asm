.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x18bd8, %r8
nop
nop
and $30044, %r13
mov (%r8), %rcx
nop
nop
add $19357, %r15
lea addresses_A_ht+0x1d1b8, %r15
and $41700, %rcx
movb (%r15), %dl
nop
inc %r8
lea addresses_D_ht+0x158, %r14
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
and $0xffffffffffffffc0, %r14
vmovntdq %ymm7, (%r14)
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x103b8, %r15
nop
nop
add $50972, %rdx
mov (%r15), %ecx
nop
nop
dec %rcx
lea addresses_WC_ht+0x1685c, %rsi
lea addresses_WC_ht+0x7ea8, %rdi
nop
nop
nop
xor %r8, %r8
mov $31, %rcx
rep movsb
nop
nop
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdx

// Store
lea addresses_D+0x135b8, %r14
nop
nop
xor $47683, %r12
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x562fb0000000298, %rcx
nop
nop
and %r10, %r10
movb $0x51, (%rcx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r10
sub %r12, %r12

// Store
lea addresses_A+0x1e9b8, %rdx
nop
nop
nop
sub %r14, %r14
movw $0x5152, (%rdx)
inc %rdx

// Store
mov $0x9b8, %r12
dec %r8
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
nop
sub %r12, %r12

// Store
mov $0x3b8, %r8
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
nop
nop
add $55884, %r10

// Faulty Load
lea addresses_A+0x1e9b8, %r13
nop
nop
nop
nop
nop
xor %r14, %r14
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdx
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
