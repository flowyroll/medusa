.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x12b8d, %rsi
lea addresses_normal_ht+0xd4d9, %rdi
nop
nop
nop
nop
and $44031, %r14
mov $60, %rcx
rep movsb
nop
nop
xor $45607, %rsi
lea addresses_UC_ht+0x11e0d, %rcx
clflush (%rcx)
nop
nop
and $9204, %r14
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x171d, %rsi
lea addresses_A_ht+0x9cad, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $98, %rcx
rep movsb
nop
sub %r12, %r12
lea addresses_WT_ht+0x1314d, %r14
nop
nop
nop
nop
sub %r10, %r10
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
sub $14956, %rcx
lea addresses_WT_ht+0x4651, %r10
nop
nop
nop
sub $28270, %rdi
mov (%r10), %ecx
dec %rsi
lea addresses_UC_ht+0x3d34, %rsi
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rsi
movaps %xmm6, (%rsi)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1de0d, %r12
clflush (%r12)
nop
nop
and %rdi, %rdi
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0xc68d, %rsi
lea addresses_D_ht+0xfa0d, %rdi
nop
nop
nop
xor %r15, %r15
mov $38, %rcx
rep movsw
nop
nop
xor $21501, %rdi
lea addresses_WC_ht+0x10e8d, %r12
clflush (%r12)
dec %rcx
mov (%r12), %rdi
nop
inc %rcx
lea addresses_A_ht+0x1760d, %r10
nop
nop
nop
nop
and $47319, %r12
mov (%r10), %ebp
sub $50339, %r15
lea addresses_A_ht+0x7a8d, %r14
nop
nop
nop
nop
nop
cmp $55686, %r15
mov (%r14), %r12w
nop
nop
nop
nop
sub $25661, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x72422500000001cd, %r14
nop
nop
cmp $11655, %r8
movl $0x51525354, (%r14)
nop
nop
add $48206, %r8

// Load
lea addresses_UC+0xbffb, %rbp
nop
nop
inc %rdx
mov (%rbp), %r14d
nop
nop
nop
nop
nop
dec %rdx

// REPMOV
lea addresses_PSE+0x1020d, %rsi
lea addresses_WT+0x5411, %rdi
nop
nop
nop
nop
dec %rdx
mov $107, %rcx
rep movsb
nop
nop
inc %rdx

// Store
lea addresses_PSE+0xdd7d, %rdx
nop
nop
nop
nop
nop
and %r13, %r13
movb $0x51, (%rdx)
xor $10388, %rdx

// Store
lea addresses_PSE+0x3f9e, %r14
nop
nop
dec %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
nop
nop
and $41496, %rcx

// Store
lea addresses_PSE+0x10add, %rdx
nop
sub $59632, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
xor $17514, %r14

// Store
lea addresses_PSE+0xfd0d, %rbp
add $60602, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rbp)
and %r14, %r14

// Load
lea addresses_UC+0x1cc61, %r8
xor $52965, %rdx
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
add $16755, %r14

// Store
lea addresses_WT+0xf20d, %r13
nop
cmp %rax, %rax
movl $0x51525354, (%r13)
nop
add $21335, %rbp

// Store
lea addresses_UC+0xee0d, %r8
nop
nop
cmp $6718, %r14
movw $0x5152, (%r8)
nop
nop
nop
xor $30285, %r13

// Load
lea addresses_RW+0x160d, %rsi
nop
nop
cmp $8522, %rax
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
nop
sub $1016, %rsi

// Store
lea addresses_US+0xb8dd, %r14
nop
sub $32020, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r14)
nop
nop
nop
nop
nop
sub $2979, %rcx

// Load
lea addresses_RW+0x1b5dc, %rdx
nop
nop
cmp $22358, %r14
mov (%rdx), %r13w
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_UC+0xee0d, %rdx
nop
nop
nop
nop
xor %rax, %rax
movb (%rdx), %cl
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'ef': 1}
ef
*/
