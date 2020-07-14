.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1bb42, %r15
sub $63749, %r14
mov (%r15), %r13
sub %rcx, %rcx
lea addresses_WT_ht+0xf27a, %rsi
lea addresses_normal_ht+0x16356, %rdi
clflush (%rsi)
nop
nop
nop
sub %rbp, %rbp
mov $78, %rcx
rep movsq
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x726, %r15
and $14507, %rcx
movw $0x6162, (%r15)
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x166ea, %rsi
lea addresses_A_ht+0x5c2a, %rdi
cmp $48961, %r15
mov $67, %rcx
rep movsb
nop
nop
nop
nop
xor $13917, %rdi
lea addresses_UC_ht+0x1aa2a, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%rdi), %si
nop
and $39765, %rcx
lea addresses_normal_ht+0x154da, %r14
nop
nop
nop
xor %rdi, %rdi
movb (%r14), %r13b
nop
nop
nop
nop
nop
cmp $23694, %rcx
lea addresses_normal_ht+0x31d6, %rsi
lea addresses_WT_ht+0x1a0fa, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $7917, %r10
mov $77, %rcx
rep movsl
nop
nop
nop
and $16329, %r14
lea addresses_WT_ht+0x785a, %r13
nop
nop
sub %rdi, %rdi
mov (%r13), %rcx
nop
nop
nop
nop
sub $57642, %r15
lea addresses_D_ht+0xff0e, %rcx
nop
nop
nop
inc %r15
mov (%rcx), %r14
nop
nop
nop
nop
nop
cmp $7629, %rdi
lea addresses_UC_ht+0x18316, %rbp
nop
nop
nop
nop
nop
cmp $18088, %rdi
mov (%rbp), %ecx
nop
nop
nop
sub $7886, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0xe87a, %rsi
lea addresses_D+0x693a, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $26, %rcx
rep movsw
nop
nop
nop
sub $25804, %r10

// Store
lea addresses_WT+0x607a, %r10
clflush (%r10)
nop
nop
nop
nop
and %r9, %r9
movb $0x51, (%r10)
nop
xor %rdx, %rdx

// Store
mov $0x5ddb55000000007a, %rsi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_WT+0x607a, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rcx), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'58': 250}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
