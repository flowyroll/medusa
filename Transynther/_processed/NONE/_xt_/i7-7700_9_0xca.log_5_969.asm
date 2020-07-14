.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xdaf7, %rdi
nop
nop
nop
nop
cmp $53139, %rbp
mov (%rdi), %rcx
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x1ad37, %r15
nop
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%r15)
nop
nop
xor $6652, %rdx
lea addresses_UC_ht+0x1bf17, %rax
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rax
movaps %xmm2, (%rax)
nop
nop
nop
xor $45279, %rbp
lea addresses_WC_ht+0xd2bf, %rsi
lea addresses_normal_ht+0x1777, %rdi
nop
and $43665, %r8
mov $101, %rcx
rep movsw
xor $5775, %r8
lea addresses_WC_ht+0x6677, %rsi
lea addresses_WC_ht+0x4d37, %rdi
clflush (%rsi)
nop
nop
cmp $14333, %rdx
mov $83, %rcx
rep movsq
nop
nop
xor $59438, %rdi
lea addresses_WC_ht+0x697, %rdx
nop
nop
and %rbp, %rbp
movl $0x61626364, (%rdx)
add $47450, %rdx
lea addresses_WC_ht+0x6f7, %rsi
lea addresses_UC_ht+0xfaf7, %rdi
cmp $48874, %rdx
mov $29, %rcx
rep movsl
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x12f77, %rsi
clflush (%rsi)
nop
nop
inc %rdx
mov (%rsi), %eax
nop
nop
nop
nop
nop
add $42745, %r15
lea addresses_normal_ht+0x43a7, %rcx
sub %r8, %r8
movw $0x6162, (%rcx)
nop
nop
nop
nop
and $52333, %r8
lea addresses_WC_ht+0x38f7, %rcx
nop
nop
nop
cmp %rsi, %rsi
mov (%rcx), %rdx
nop
inc %rcx
lea addresses_normal_ht+0x1349d, %rsi
lea addresses_WT_ht+0xd8f7, %rdi
nop
cmp $53700, %r8
mov $40, %rcx
rep movsw
nop
nop
xor $32536, %rbp
lea addresses_WT_ht+0x707b, %r15
xor $27840, %rsi
movw $0x6162, (%r15)
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x186f7, %rsi
lea addresses_A_ht+0xc5d7, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $6, %rcx
rep movsw
nop
nop
nop
add $49846, %r8
lea addresses_A_ht+0xe7, %rcx
nop
nop
nop
and %rsi, %rsi
movl $0x61626364, (%rcx)
cmp $22890, %rbp
lea addresses_UC_ht+0xed67, %rsi
lea addresses_WT_ht+0x2fe7, %rdi
nop
nop
nop
nop
nop
cmp $629, %r8
mov $49, %rcx
rep movsw
nop
nop
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_A+0xe2f7, %r10
nop
nop
cmp %rbx, %rbx
movl $0x51525354, (%r10)
nop
nop
nop
nop
sub $38941, %rcx

// Load
lea addresses_D+0x8ff7, %r10
xor $14729, %rcx
mov (%r10), %si
nop
nop
nop
add $17586, %r13

// Store
lea addresses_WT+0x16b07, %r13
nop
nop
xor %rbp, %rbp
movw $0x5152, (%r13)
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_WC+0x17f7, %r12
nop
nop
nop
nop
cmp $3540, %rbp
mov (%r12), %r13w

// Exception!!!
nop
nop
nop
mov (0), %rsi
nop
nop
nop
nop
cmp $60456, %rsi

// Load
lea addresses_D+0x17ef7, %rbx
nop
nop
nop
nop
nop
sub $28683, %rsi
movb (%rbx), %r10b
nop
nop
nop
nop
dec %r13

// Store
lea addresses_UC+0x31f7, %r10
nop
nop
nop
nop
nop
add $65301, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovaps %ymm5, (%r10)
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_US+0x1f6f7, %r12
clflush (%r12)
cmp %rbx, %rbx
movl $0x51525354, (%r12)
nop
nop
nop
inc %rbp

// Store
mov $0x37670f00000009b7, %r12
nop
nop
nop
and $31889, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
cmp $61721, %rbx

// Faulty Load
lea addresses_D+0x6af7, %r13
nop
nop
nop
nop
nop
and %r12, %r12
movb (%r13), %bl
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'36': 5}
36 36 36 36 36
*/
