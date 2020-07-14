.global s_prepare_buffers
s_prepare_buffers:
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x523d, %rsi
lea addresses_WT_ht+0xc23d, %rdi
nop
nop
and $44851, %rbx
mov $99, %rcx
rep movsl
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_A+0x16a3d, %rcx
nop
nop
xor %rbx, %rbx
mov (%rcx), %r9d
nop
nop
nop
cmp $48500, %rcx

// Store
lea addresses_normal+0xcfd, %rbx
cmp $58513, %rcx
movw $0x5152, (%rbx)
sub $20699, %r10

// Store
lea addresses_US+0x1d371, %rdx
inc %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rdx)
nop
nop
xor %rbx, %rbx

// Load
lea addresses_WT+0x16a7d, %r13
clflush (%r13)
nop
nop
cmp %rcx, %rcx
mov (%r13), %eax
nop
nop
nop
nop
add %rcx, %rcx

// Load
lea addresses_WT+0x1b1a9, %rax
nop
nop
nop
add $23116, %r10
mov (%rax), %r13w
nop
nop
nop
and $40615, %r13

// Store
lea addresses_UC+0x75a7, %rbx
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%rbx)
xor %rdx, %rdx

// Faulty Load
lea addresses_WT+0xf23d, %rdx
nop
nop
nop
nop
nop
sub $8114, %r9
mov (%rdx), %r13d
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'47': 6253, '00': 13189, '49': 1042, '20': 545, '1f': 393, '80': 8, 'ff': 8, '1a': 40, '21': 248, '3c': 32, 'e0': 29, '51': 42}
00 00 00 00 00 00 47 1f 00 00 00 00 47 47 00 00 00 47 00 47 47 00 00 00 00 00 47 00 00 47 47 47 47 00 00 00 00 00 00 00 00 00 49 47 47 47 47 00 00 47 00 00 00 00 00 47 00 47 47 47 47 47 00 00 00 49 47 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 47 49 00 00 00 00 47 00 47 47 47 00 47 47 47 47 00 47 00 00 47 1f 00 00 47 47 00 00 00 00 00 00 47 1f 00 47 47 47 47 1f 49 47 1f 49 47 1f 00 00 00 00 00 00 00 00 00 00 00 47 47 49 1f 00 49 00 47 00 00 00 49 1f 00 00 00 00 47 00 00 00 00 47 00 47 47 47 1f 00 00 47 00 00 00 47 1f 47 1f 1f 47 47 1f 1f 00 47 00 00 00 47 1f 1f 47 47 49 49 00 47 00 00 00 47 00 47 00 00 00 00 00 00 00 00 00 00 47 47 47 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 47 1f 00 00 00 47 00 47 00 00 00 00 47 00 00 00 00 51 47 00 00 00 00 47 00 00 00 49 1f 00 00 00 47 47 00 49 47 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 47 00 00 47 47 00 00 00 00 47 00 00 00 47 00 00 00 47 47 47 47 00 00 00 00 00 00 47 47 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 47 00 00 00 00 00 00 47 1f 1f 00 00 47 47 00 47 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 47 47 00 49 47 47 00 00 47 00 00 47 1f 00 47 1f 00 47 00 00 47 00 00 00 00 00 00 00 00 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 47 47 47 47 00 00 00 47 47 49 47 00 00 47 00 00 00 47 1f 00 47 00 00 00 00 47 00 47 1f 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 47 47 47 49 47 00 49 47 00 47 00 00 00 00 47 00 47 00 47 00 00 49 49 00 00 47 1f 00 00 00 47 00 00 00 00 47 1f 00 00 47 00 00 47 3c 47 51 47 00 47 00 00 00 00 00 00 00 49 00 47 47 00 47 00 00 51 00 00 47 00 47 00 00 49 00 47 1f 1f 49 47 1f 1f 47 00 00 00 47 47 47 47 00 47 00 00 00 00 00 00 47 47 00 47 00 00 47 49 1f 00 00 47 1f 00 00 47 47 47 00 49 00 47 47 00 00 00 47 47 00 47 00 00 00 00 47 00 49 1f 1f 1f 00 47 00 47 47 00 47 00 00 00 00 00 47 00 00 00 00 47 00 00 47 1f 1f 47 47 47 00 47 1f 00 47 00 47 00 00 00 47 47 00 47 1f 00 49 00 47 49 47 00 00 00 00 47 00 47 1f 1f 00 49 00 00 47 00 00 47 00 47 1f 00 00 00 47 00 00 00 47 00 00 47 1f 47 1f 00 00 00 00 00 47 1f 00 00 47 00 47 00 00 00 47 47 47 49 1f 00 47 00 00 00 00 00 00 47 1f 00 00 00 00 00 00 47 00 49 49 00 00 00 47 00 47 47 1f 1f 1f 49 47 49 1f 47 1f 47 47 49 1f 00 00 00 00 00 47 49 1f 1f 1f 00 00 00 00 47 00 47 47 47 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 47 47 1f 1f 00 47 47 49 00 00 00 00 49 47 00 47 00 47 47 00 47 00 00 47 00 47 00 00 00 47 00 00 47 1f 00 00 00 00 00 47 1f 1f 47 49 00 00 47 1f 00 00 47 47 47 00 00 00 47 47 1f 00 47 47 00 00 00 00 47 00 47 47 00 47 47 00 00 00 00 00 47 00 00 47 1f 00 00 00 00 00 00 47 00 00 47 00 47 1f 47 47 1f 00 49 00 00 47 47 00 47 00 00 00 00 47 47 47 00 00 00 00 49 47 00 00 47 00 00 00 00 47 47 1f 00 47 1f 47 00 00 00 47 1f 47 00 47 1f 49 47 00 49 00 47 00 00 00 47 00 00 00 00 00 00 00 00 47 00 00 47 47 1f 47 00 47 00 00 00 47 1f 47 00 00 47 49 1f 00 49 00 00 47 1f 47 47 00 00 47 00 00 00 47 00 00 47 00 00 49 00 00
*/
