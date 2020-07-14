.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16e01, %r15
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x1a695, %rsi
lea addresses_WT_ht+0x795, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $19, %rcx
rep movsl
nop
nop
nop
and $33796, %r15
lea addresses_D_ht+0x5e95, %rsi
lea addresses_UC_ht+0xc795, %rdi
nop
nop
dec %r14
mov $13, %rcx
rep movsq
nop
sub $22191, %rsi
lea addresses_normal_ht+0xbd2d, %rdi
nop
sub $58740, %rcx
mov (%rdi), %r15d
nop
nop
xor $64524, %r15
lea addresses_normal_ht+0x7415, %r15
nop
sub %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
xor $24672, %rcx
lea addresses_WT_ht+0xb21d, %rbp
nop
and $2614, %rdi
mov (%rbp), %r15d
nop
and %rdi, %rdi
lea addresses_normal_ht+0x16d84, %rbp
nop
nop
cmp %r15, %r15
mov (%rbp), %di
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x19395, %r15
nop
sub $1726, %rbp
mov $0x6162636465666768, %r8
movq %r8, (%r15)
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x13c95, %rcx
nop
nop
xor $10911, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
and $33272, %rsi
lea addresses_WC_ht+0x1e795, %r14
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r14), %rcx
nop
nop
and $18122, %rdi
lea addresses_WC_ht+0xf7aa, %rsi
lea addresses_UC_ht+0x58a5, %rdi
nop
nop
sub %r8, %r8
mov $8, %rcx
rep movsl
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x140cb, %r8
nop
and $61201, %rdi
mov (%r8), %r15
nop
nop
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x19795, %rsi
lea addresses_A_ht+0x2d5, %rdi
cmp $6831, %r14
mov $49, %rcx
rep movsb
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x8c7b, %rsi
lea addresses_normal_ht+0x19395, %rdi
nop
nop
sub %r9, %r9
mov $84, %rcx
rep movsl
nop
nop
inc %r9
lea addresses_WT_ht+0x940, %rdi
nop
nop
nop
cmp $64359, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %rdi
movaps %xmm4, (%rdi)
nop
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x2a8d, %rsi
lea addresses_A+0xfbf5, %rdi
nop
add $35340, %r14
mov $5, %rcx
rep movsq
nop
nop
add %rdi, %rdi

// Load
mov $0x5dbceb0000000b4d, %r14
clflush (%r14)
xor $55955, %r12
mov (%r14), %r8
nop
nop
xor $9022, %r12

// Load
lea addresses_US+0x75d, %r8
nop
nop
nop
cmp $46457, %r14
movb (%r8), %r12b
nop
nop
nop
nop
nop
sub $57601, %rcx

// Load
mov $0x5e15e400000005d5, %r14
nop
nop
sub %r8, %r8
movups (%r14), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_UC+0xf835, %rbx
nop
nop
nop
nop
nop
and $38645, %r14
mov (%rbx), %edi
nop
nop
nop
nop
cmp $61710, %r8

// Load
lea addresses_WT+0x5595, %r8
nop
nop
nop
add $36661, %rcx
movb (%r8), %r14b
nop
nop
nop
nop
and $6891, %rbx

// Faulty Load
lea addresses_normal+0x1d795, %rbx
nop
nop
add $26568, %r12
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16}}
{'34': 8407}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
