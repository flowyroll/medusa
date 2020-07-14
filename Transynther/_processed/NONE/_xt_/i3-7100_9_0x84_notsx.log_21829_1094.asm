.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x10c9f, %rdi
nop
nop
nop
nop
xor $462, %r12
mov (%rdi), %rdx
nop
nop
cmp $14416, %rbp
lea addresses_normal_ht+0x181ef, %rcx
clflush (%rcx)
nop
sub $16290, %r13
mov (%rcx), %r9
sub %r9, %r9
lea addresses_D_ht+0x96af, %rsi
lea addresses_UC_ht+0x7eaf, %rdi
nop
nop
nop
dec %r13
mov $123, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x42af, %rsi
lea addresses_A_ht+0x1caf, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
mov $8, %rcx
rep movsq
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x76af, %rsi
lea addresses_normal_ht+0x113e3, %rdi
nop
nop
nop
nop
nop
cmp $29760, %r12
mov $29, %rcx
rep movsw
nop
nop
nop
add $62787, %rcx
lea addresses_A_ht+0xcfaf, %r12
nop
sub %rsi, %rsi
movb $0x61, (%r12)
dec %rsi
lea addresses_UC_ht+0x6e2f, %r13
nop
sub %rdi, %rdi
movl $0x61626364, (%r13)
nop
nop
cmp $64174, %r12
lea addresses_WC_ht+0x14caf, %rsi
lea addresses_UC_ht+0xceaf, %rdi
clflush (%rsi)
nop
nop
xor $49014, %r13
mov $26, %rcx
rep movsb
add %r12, %r12
lea addresses_UC_ht+0xbd6f, %rsi
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
cmp $45776, %r12
lea addresses_D_ht+0x111ef, %rsi
lea addresses_normal_ht+0xa6af, %rdi
nop
nop
nop
nop
add $780, %rbp
mov $32, %rcx
rep movsq
xor %rdx, %rdx
lea addresses_normal_ht+0x1bf4f, %rsi
lea addresses_UC_ht+0x112af, %rdi
and $5572, %r12
mov $83, %rcx
rep movsb
nop
nop
nop
nop
xor $38700, %rcx
lea addresses_WT_ht+0x984f, %rcx
nop
nop
nop
sub $17810, %r9
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x2e8f, %rbp
nop
nop
nop
lfence
mov $0x6162636465666768, %r12
movq %r12, %xmm1
and $0xffffffffffffffc0, %rbp
movntdq %xmm1, (%rbp)
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x1c3af, %rdi
nop
nop
nop
nop
add $40637, %rcx
mov (%rdi), %r12w
nop
cmp %r9, %r9
lea addresses_WT_ht+0x1e2f, %rsi
lea addresses_WC_ht+0x160af, %rdi
nop
nop
sub $3374, %r13
mov $31, %rcx
rep movsw
nop
nop
sub %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x164a3, %r9
nop
nop
dec %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
nop
nop
sub $20294, %rbp

// Store
lea addresses_WC+0x6068, %rbx
xor %r14, %r14
movw $0x5152, (%rbx)
nop
and $5316, %rbx

// Load
lea addresses_RW+0xeeaf, %rcx
nop
cmp %r14, %r14
mov (%rcx), %r9w
nop
and $45972, %r12

// Load
lea addresses_RW+0x14baa, %r9
nop
nop
nop
cmp $29792, %rdi
mov (%r9), %r14
nop
nop
nop
xor %rbx, %rbx

// REPMOV
lea addresses_WT+0x10c4f, %rsi
lea addresses_PSE+0xc2af, %rdi
cmp %r12, %r12
mov $22, %rcx
rep movsb
nop
sub %rdi, %rdi

// REPMOV
lea addresses_UC+0x1e883, %rsi
lea addresses_UC+0x296f, %rdi
nop
nop
nop
and %r9, %r9
mov $91, %rcx
rep movsw
nop
sub $4823, %rcx

// Store
lea addresses_normal+0x14f2f, %r14
nop
sub $33567, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r14)

// Exception!!!
nop
mov (0), %rdi
nop
nop
nop
nop
xor $34761, %rbp

// Store
mov $0x53f, %rsi
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%rsi)
nop
xor $30561, %r14

// Faulty Load
lea addresses_D+0x126af, %rcx
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov (%rcx), %si
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
