.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x603f, %rsi
lea addresses_WT_ht+0x1dcfb, %rdi
nop
nop
sub %r12, %r12
mov $72, %rcx
rep movsw
nop
sub %r14, %r14
lea addresses_normal_ht+0x1bbea, %r9
nop
nop
nop
nop
sub $53335, %r10
movb (%r9), %cl
dec %r10
lea addresses_UC_ht+0x140bf, %r9
nop
nop
inc %rcx
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1772f, %rsi
lea addresses_normal_ht+0xe5df, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $53, %rcx
rep movsw
sub $46155, %rsi
lea addresses_UC_ht+0x673f, %r12
nop
nop
nop
nop
nop
dec %rsi
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rax
nop
cmp $38253, %r12
lea addresses_A_ht+0x14af9, %r14
nop
cmp %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x333f, %rsi
lea addresses_UC_ht+0x17f3f, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $47, %rcx
rep movsl
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rsi

// Load
lea addresses_US+0x1f13f, %r14
nop
cmp %r13, %r13
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_RW+0xd0ab, %r9
nop
nop
nop
nop
cmp $4536, %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_WT+0x15923, %r9
nop
nop
xor $304, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
sub $2172, %r9

// Store
lea addresses_RW+0x4b3f, %rsi
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
add $62840, %r13

// Faulty Load
lea addresses_RW+0x4b3f, %r13
xor %r15, %r15
mov (%r13), %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
