.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xe81b, %rsi
lea addresses_WT_ht+0x1054f, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $125, %rcx
rep movsl
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x4efb, %r10
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
sub $9507, %rax

// Store
lea addresses_RW+0xb81b, %r13
nop
and %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
nop
and $6954, %r13

// Store
mov $0xb9b, %r10
dec %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
xor $4331, %rbp

// Load
lea addresses_WT+0x18001, %r12
nop
nop
nop
cmp %r8, %r8
mov (%r12), %r14w
nop
nop
nop
nop
nop
add $60694, %rax

// Store
lea addresses_D+0xec0f, %r14
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm0
and $0xffffffffffffffc0, %r14
vmovntdq %ymm0, (%r14)
dec %r14

// Store
lea addresses_RW+0x1961b, %rax
nop
nop
nop
inc %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_PSE+0x1501b, %r8
nop
nop
nop
and $58512, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
nop
cmp $4011, %r12

// Load
lea addresses_UC+0xc41b, %r10
nop
nop
nop
add $9541, %rax
movb (%r10), %r8b
nop
nop
nop
nop
sub $28094, %r13

// Store
mov $0x25b, %rbp
clflush (%rbp)
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
sub $21415, %r10

// Store
lea addresses_D+0x783b, %r14
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
nop
nop
cmp $11485, %r10

// Load
lea addresses_WT+0x17d1b, %rbp
nop
nop
nop
add %r8, %r8
mov (%rbp), %r13w
dec %rax

// Store
lea addresses_normal+0x1d3dd, %r13
nop
nop
nop
nop
add $54415, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0x14c13, %r13
nop
nop
sub $34050, %r8
movb $0x51, (%r13)
nop
nop
nop
nop
nop
sub $4637, %rbp

// Store
lea addresses_D+0x194db, %r13
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// REPMOV
lea addresses_WC+0xc023, %rsi
mov $0x751b0500000003bb, %rdi
clflush (%rsi)
nop
nop
sub $17673, %rax
mov $0, %rcx
rep movsb
nop
nop
nop
nop
dec %r10

// Faulty Load
lea addresses_RW+0xb81b, %r8
nop
nop
nop
nop
and %r13, %r13
movups (%r8), %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'0a': 1}
0a
*/
