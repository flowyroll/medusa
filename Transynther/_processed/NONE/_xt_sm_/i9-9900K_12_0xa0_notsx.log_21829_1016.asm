.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x14758, %rcx
xor $13443, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rcx)
nop
nop
sub $8238, %rbp
lea addresses_normal_ht+0x39c0, %r8
clflush (%r8)
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
and $0xffffffffffffffc0, %r8
movntdq %xmm0, (%r8)
nop
xor $33695, %r13
lea addresses_D_ht+0x9758, %rdx
nop
nop
sub %rax, %rax
mov (%rdx), %r13w
dec %rax
lea addresses_normal_ht+0x10818, %rdx
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xc28, %rbx
nop
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rbx)
cmp $56649, %rdx
lea addresses_UC_ht+0x5f58, %rsi
lea addresses_UC_ht+0x79d0, %rdi
nop
xor %rax, %rax
mov $104, %rcx
rep movsw
nop
nop
nop
nop
and $53061, %rsi
lea addresses_UC_ht+0x1e750, %rdx
nop
nop
nop
nop
cmp $14811, %rdi
mov (%rdx), %rcx
cmp $18070, %rbp
lea addresses_A_ht+0x2418, %rsi
lea addresses_D_ht+0x158b8, %rdi
nop
nop
nop
sub %rax, %rax
mov $74, %rcx
rep movsl
nop
nop
nop
add $33217, %rsi
lea addresses_A_ht+0x8c48, %rbp
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
nop
sub $47790, %rbx
lea addresses_UC_ht+0x1e322, %rsi
lea addresses_A_ht+0x4a88, %rdi
nop
dec %r13
mov $83, %rcx
rep movsq
and %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0x14458, %rdx
nop
nop
nop
cmp $36141, %r15
movl $0x51525354, (%rdx)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WC+0x154d8, %r9
sub %r10, %r10
movw $0x5152, (%r9)
and %rdx, %rdx

// Store
lea addresses_D+0x5758, %rsi
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x1c658, %r10
nop
nop
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_D+0x5758, %r11
dec %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
sub $40174, %rsi

// Store
lea addresses_US+0x9248, %r9
add $55564, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r9)
nop
add $24983, %rbx

// Store
lea addresses_WT+0xd4b8, %r15
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r15)
add $14463, %r10

// Store
lea addresses_UC+0x1d0d9, %r9
nop
nop
cmp $60238, %rdx
movb $0x51, (%r9)
nop
nop
nop
dec %rdx

// Store
lea addresses_US+0xc558, %r10
nop
nop
nop
nop
nop
cmp %r15, %r15
movw $0x5152, (%r10)
nop
sub %r10, %r10

// Store
mov $0x3da, %r10
clflush (%r10)
and %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
xor $37189, %r9

// Faulty Load
lea addresses_D+0x5758, %r11
clflush (%r11)
cmp %rsi, %rsi
movb (%r11), %dl
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
