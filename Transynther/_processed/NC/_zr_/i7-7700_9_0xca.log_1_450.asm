.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x12c9e, %rax
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rax)
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1d8ce, %r8
add %rax, %rax
movups (%r8), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
dec %r9
lea addresses_A_ht+0xf09e, %rdi
nop
nop
add $13600, %r8
movl $0x61626364, (%rdi)
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0x1477e, %rsi
lea addresses_WT_ht+0x1349e, %rdi
nop
nop
add %r9, %r9
mov $77, %rcx
rep movsb
cmp %rdx, %rdx
lea addresses_WT_ht+0xa49e, %rcx
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
cmp $13575, %rcx
lea addresses_WC_ht+0x1e4be, %rsi
lea addresses_A_ht+0x3c9e, %rdi
dec %r9
mov $22, %rcx
rep movsb
cmp %rax, %rax
lea addresses_WT_ht+0x1109e, %rsi
nop
nop
xor $28005, %rax
movb (%rsi), %dl
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x114de, %rsi
lea addresses_WT_ht+0x689e, %rdi
nop
nop
nop
sub $60071, %r14
mov $97, %rcx
rep movsb
nop
sub %rax, %rax
lea addresses_UC_ht+0x1b89e, %rsi
lea addresses_A_ht+0x11d6e, %rdi
clflush (%rdi)
nop
nop
xor $47012, %r8
mov $38, %rcx
rep movsq
nop
nop
inc %r8
lea addresses_D_ht+0xd59e, %rax
nop
nop
nop
nop
nop
xor %r9, %r9
mov (%rax), %r8w
nop
nop
xor $1147, %rsi
lea addresses_A_ht+0x1cf4e, %rsi
lea addresses_normal_ht+0x1419e, %rdi
nop
xor %rax, %rax
mov $91, %rcx
rep movsw
nop
xor $13903, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rbx

// Store
lea addresses_UC+0xb25e, %rbp
nop
nop
sub %r10, %r10
movw $0x5152, (%rbp)
nop
inc %r10

// Store
lea addresses_A+0x1befe, %r12
nop
add %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
inc %r13

// Store
lea addresses_WC+0x4336, %r14
nop
cmp $3618, %r15
movw $0x5152, (%r14)
and $38206, %r12

// Store
lea addresses_UC+0x899e, %r15
nop
and %rbp, %rbp
movb $0x51, (%r15)
and %r14, %r14

// Store
lea addresses_UC+0x1cc72, %r13
nop
xor $6051, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%r13)

// Exception!!!
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
nop
add $24168, %r13

// Store
lea addresses_WT+0xa0be, %rbp
nop
nop
nop
nop
inc %r14
movw $0x5152, (%rbp)
and %r13, %r13

// Store
mov $0x61e, %r12
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
xor %r14, %r14

// Store
mov $0x59021b000000079e, %r12
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%r12)
nop
sub $3862, %r13

// Store
lea addresses_US+0x17ace, %rbx
nop
sub $37543, %r10
movw $0x5152, (%rbx)
nop
nop
nop
nop
cmp $9142, %r14

// Faulty Load
mov $0x2ec18a000000089e, %r15
clflush (%r15)
cmp %r13, %r13
mov (%r15), %r14d
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_normal_ht'}}
{'00': 1}
00
*/
