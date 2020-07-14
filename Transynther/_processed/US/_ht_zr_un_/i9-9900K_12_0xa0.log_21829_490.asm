.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x85ee, %rsi
lea addresses_WC_ht+0x19bae, %rdi
nop
nop
nop
inc %r15
mov $25, %rcx
rep movsl
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x31ee, %rsi
lea addresses_WT_ht+0x85ee, %rdi
nop
and %rdx, %rdx
mov $101, %rcx
rep movsl
nop
nop
nop
xor $46084, %rdi
lea addresses_A_ht+0xacae, %r9
nop
nop
sub $11818, %rsi
mov (%r9), %r15d
and $823, %rcx
lea addresses_WT_ht+0x1e49e, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov (%rdi), %esi
nop
nop
nop
nop
add $32731, %rsi
lea addresses_UC_ht+0x1939e, %r15
nop
nop
xor $28920, %rdi
movw $0x6162, (%r15)
dec %rcx
lea addresses_normal_ht+0xc0ee, %rsi
lea addresses_UC_ht+0x7b61, %rdi
nop
nop
xor $9342, %r12
mov $76, %rcx
rep movsl
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xffe6, %rsi
lea addresses_A_ht+0x1cda1, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $71, %rcx
rep movsb
sub $3550, %rcx
lea addresses_UC_ht+0x1c5ee, %rdx
dec %rdi
movl $0x61626364, (%rdx)
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x15c5e, %rsi
lea addresses_normal_ht+0x1b274, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
and $8821, %r15
mov $94, %rcx
rep movsb
nop
nop
nop
sub $43298, %rcx
lea addresses_A_ht+0x2bee, %rsi
lea addresses_WT_ht+0x2a4e, %rdi
nop
cmp %rdx, %rdx
mov $92, %rcx
rep movsq
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xd435, %rsi
lea addresses_D_ht+0x12fee, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $13, %rcx
rep movsl
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x3cf6, %r15
nop
nop
nop
cmp %r9, %r9
mov (%r15), %rdx
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x40de, %rsi
lea addresses_WT_ht+0x65ee, %rdi
nop
add %r15, %r15
mov $39, %rcx
rep movsl
nop
nop
nop
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rdi

// Store
mov $0xcb6, %r8
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_US+0x89ee, %rax
nop
nop
nop
inc %rbx
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'19': 1, '86': 1, '71': 1, '67': 9, '06': 1, '44': 2032, '65': 3, 'af': 2, 'ff': 1, '00': 99, '0e': 1, '45': 19678}
06 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 44 44 45 45 45 45 45 45 45 44 44 45 45 45 44 45 45 45 45 44 45 45 45 45 44 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 44 45 44 45 45 45 45 44 44 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 44 44 44 44 44 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 44 44 44 44 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45
*/
