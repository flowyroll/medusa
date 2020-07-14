.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14844, %rcx
nop
nop
nop
cmp $49619, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %rcx
movntdq %xmm5, (%rcx)
nop
sub %r13, %r13
lea addresses_WT_ht+0x2fce, %r15
nop
add $54187, %rbx
mov (%r15), %si
nop
nop
sub $1840, %rcx
lea addresses_WT_ht+0xe7c4, %rcx
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x2cc4, %rsi
lea addresses_WT_ht+0x1de3b, %rdi
nop
sub $3651, %r14
mov $86, %rcx
rep movsl
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1b2a8, %rsi
lea addresses_WT_ht+0x1409c, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $21, %rcx
rep movsq
cmp $29494, %rcx
lea addresses_UC_ht+0x17cfc, %rsi
lea addresses_normal_ht+0x6ac4, %rdi
clflush (%rsi)
nop
nop
nop
add %r15, %r15
mov $113, %rcx
rep movsw
nop
nop
add $29761, %rcx
lea addresses_A_ht+0x117c4, %rsi
lea addresses_UC_ht+0x6b44, %rdi
clflush (%rsi)
nop
nop
add %r15, %r15
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x16684, %r9
clflush (%r9)
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r9)
lfence
lea addresses_WT_ht+0xda84, %r13
nop
nop
nop
nop
add $45556, %rcx
mov (%r13), %r9w
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x14e84, %r13
nop
nop
nop
nop
nop
and $48425, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x8b4, %r13
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r13)
nop
nop
xor $21251, %rax

// Store
mov $0x2f115d0000000304, %rax
nop
nop
inc %rbx
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
nop
nop
nop
sub $37958, %rcx

// Store
lea addresses_normal+0xbac4, %rsi
clflush (%rsi)
nop
nop
dec %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rsi)
nop
nop
inc %r8

// Store
lea addresses_RW+0x1e594, %r13
nop
nop
xor $699, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovntdq %ymm5, (%r13)
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x1f2c4, %rsi
nop
inc %rax
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
cmp $51048, %rsi

// Store
lea addresses_D+0xd7c4, %r13
and $35249, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movntdq %xmm6, (%r13)
nop
nop
nop
nop
nop
inc %rsi

// Load
lea addresses_normal+0x166c4, %rcx
dec %rbx
mov (%rcx), %r9w
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0xfbe4, %r8
nop
sub %rbx, %rbx
movw $0x5152, (%r8)
nop
add %r9, %r9

// Faulty Load
lea addresses_A+0xc2c4, %rcx
nop
nop
add $24905, %r9
movb (%rcx), %bl
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 6}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
