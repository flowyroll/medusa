.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1296a, %r13
nop
cmp $10594, %rdx
movl $0x61626364, (%r13)
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0xb5f2, %rsi
nop
nop
and $38533, %rcx
movl $0x61626364, (%rsi)
nop
and $25603, %rdi
lea addresses_normal_ht+0x1096a, %rsi
nop
nop
nop
nop
and %rdx, %rdx
movw $0x6162, (%rsi)
nop
dec %rdi
lea addresses_D_ht+0x19e86, %r10
nop
nop
cmp $46694, %r13
mov (%r10), %eax
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x33e2, %r13
nop
nop
inc %rdi
movb $0x61, (%r13)
nop
nop
sub $13532, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1fd6a, %r8
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
sub $55251, %r10

// Store
lea addresses_WC+0xb272, %r13
nop
mfence
movl $0x51525354, (%r13)
nop
nop
nop
nop
cmp %r9, %r9

// Store
mov $0x56549d0000000c6a, %rdx
nop
nop
nop
nop
xor $7129, %r14
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
inc %r14

// Store
mov $0x4cafbd000000099a, %r15
nop
nop
nop
nop
and $32809, %r8
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
and %r13, %r13

// REPMOV
mov $0x68, %rsi
lea addresses_WC+0x1a01a, %rdi
clflush (%rsi)
nop
nop
nop
dec %r10
mov $12, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x256a, %r15
nop
nop
nop
cmp $8046, %r9
movl $0x51525354, (%r15)
cmp %rdi, %rdi

// REPMOV
lea addresses_normal+0x196ea, %rsi
mov $0x3c78d10000000eae, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $26, %rcx
rep movsb
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_RW+0x1c56a, %rsi
nop
nop
nop
cmp %r15, %r15
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 1, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'f9': 1}
f9
*/
