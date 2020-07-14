.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x6503, %rsi
lea addresses_WT_ht+0x14c53, %rdi
clflush (%rsi)
clflush (%rdi)
and $21099, %rdx
mov $59, %rcx
rep movsb
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x1ee3, %r10
nop
nop
nop
nop
and %r12, %r12
mov (%r10), %esi
nop
add %rdi, %rdi
lea addresses_normal_ht+0x5ee4, %rsi
nop
and %r9, %r9
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
cmp $23875, %r12
lea addresses_A_ht+0x19ad3, %r12
clflush (%r12)
and $44236, %rcx
movl $0x61626364, (%r12)
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x143e3, %rsi
nop
nop
nop
cmp $22423, %rdi
mov (%rsi), %r10d
xor %r12, %r12
lea addresses_D_ht+0xdd0f, %rsi
lea addresses_normal_ht+0x14993, %rdi
nop
nop
nop
nop
nop
cmp $21260, %rbp
mov $86, %rcx
rep movsw
nop
nop
mfence
lea addresses_A_ht+0x98e3, %rcx
add %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%rcx)
nop
and %rdx, %rdx
lea addresses_WC_ht+0x1480b, %rsi
lea addresses_D_ht+0x119cb, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
and $48888, %r9
mov $33, %rcx
rep movsw
nop
inc %r9
lea addresses_A_ht+0x8ae3, %r9
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r9), %r10
nop
nop
inc %r9
lea addresses_UC_ht+0xd2e3, %rbp
nop
nop
nop
nop
nop
dec %rsi
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x10ee3, %rsi
lea addresses_normal_ht+0x36e3, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $1, %rcx
rep movsw
nop
nop
nop
add $17621, %rsi
lea addresses_normal_ht+0x1eae3, %rsi
lea addresses_WT_ht+0x1bae3, %rdi
clflush (%rsi)
nop
nop
cmp %r12, %r12
mov $31, %rcx
rep movsb
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x156e3, %r10
nop
nop
nop
inc %r9
movw $0x6162, (%r10)
xor $7802, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0xd6c5, %r12
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
nop
and $29752, %r8

// Store
lea addresses_normal+0x22e3, %rbx
nop
cmp %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_D+0x16e83, %r9
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
nop
nop
nop
xor $61832, %rbx

// Store
lea addresses_UC+0x1f1c3, %r9
nop
nop
nop
nop
cmp $21325, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
inc %rdi

// Store
lea addresses_RW+0x2123, %rdi
sub %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
nop
xor %r14, %r14

// Store
lea addresses_RW+0x14331, %r9
nop
nop
nop
nop
sub $41553, %rdx
movw $0x5152, (%r9)
cmp $53088, %r14

// Store
lea addresses_D+0x19ce3, %rbx
nop
add $29523, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%rbx)
nop
nop
dec %r8

// Faulty Load
lea addresses_normal+0x22e3, %rdi
clflush (%rdi)
cmp %r12, %r12
mov (%rdi), %edx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'58': 103}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
