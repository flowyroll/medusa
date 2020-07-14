.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7a4a, %rsi
lea addresses_WC_ht+0x198a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r12, %r12
mov $17, %rcx
rep movsb
nop
nop
nop
dec %r15
lea addresses_D_ht+0x1818a, %rcx
nop
nop
and $12908, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
xor %rdx, %rdx
lea addresses_A_ht+0x17d8a, %rsi
lea addresses_D_ht+0x1eeca, %rdi
clflush (%rsi)
nop
xor $65357, %r8
mov $65, %rcx
rep movsb
nop
cmp %r15, %r15
lea addresses_WC_ht+0x1c3ca, %rsi
lea addresses_WT_ht+0x4dea, %rdi
nop
nop
nop
nop
nop
and $24375, %rax
mov $8, %rcx
rep movsq
nop
nop
nop
nop
sub $14343, %r8
lea addresses_D_ht+0x1074a, %r12
nop
nop
nop
nop
add $1110, %rdx
movups (%r12), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
cmp $36314, %r15
lea addresses_UC_ht+0xcd1a, %rsi
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rsi)
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x3d8a, %r8
nop
nop
xor %rsi, %rsi
movw $0x6162, (%r8)
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x10d8a, %r15
nop
nop
nop
sub $59030, %rsi
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
cmp $60619, %r15
lea addresses_A_ht+0x5bca, %rsi
nop
nop
nop
nop
nop
sub $19157, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0xea86, %r15
nop
sub $49311, %r8
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm7
vpextrq $0, %xmm7, %rcx
sub %rsi, %rsi
lea addresses_WT_ht+0x1554a, %rsi
lea addresses_WC_ht+0xc0a, %rdi
nop
nop
add %rdx, %rdx
mov $17, %rcx
rep movsl
nop
nop
nop
cmp $29852, %rcx
lea addresses_D_ht+0x3f4f, %rax
nop
nop
nop
nop
sub $13081, %rdi
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
and $34967, %rax
lea addresses_D_ht+0xd86a, %rdx
nop
nop
nop
inc %rcx
mov (%rdx), %rdi
add $37228, %r12
lea addresses_UC_ht+0x700a, %rsi
lea addresses_UC_ht+0x1e98a, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $69, %rcx
rep movsb
xor $25447, %rax
lea addresses_WT_ht+0x1d18a, %rsi
nop
nop
inc %rdx
mov (%rsi), %rcx
nop
nop
nop
sub $51943, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rbx
push %rdi
push %rsi

// Store
mov $0xb8a, %rbx
nop
nop
cmp $64001, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
cmp %r15, %r15

// Store
lea addresses_D+0xf5ea, %r15
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_US+0x1f9e2, %r10
nop
nop
nop
xor $56839, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r10)
nop
xor $1920, %rdi

// Store
lea addresses_A+0x19d8a, %r10
add %rax, %rax
movl $0x51525354, (%r10)
nop
nop
nop
nop
sub %rax, %rax

// Load
lea addresses_A+0x298a, %r10
nop
cmp $5182, %rsi
mov (%r10), %r12d
nop
nop
xor $63805, %rsi

// Store
lea addresses_D+0x1868a, %rbx
inc %r10
movb $0x51, (%rbx)
nop
nop
nop
nop
cmp $27109, %rdi

// Load
mov $0x76a, %r10
nop
nop
nop
and $50676, %r12
mov (%r10), %si
nop
nop
nop
cmp $26007, %rax

// Store
lea addresses_RW+0x1d9e, %r12
nop
add %rax, %rax
movl $0x51525354, (%r12)
nop
nop
and %r15, %r15

// Store
lea addresses_RW+0x18932, %rdi
sub $33518, %r15
movb $0x51, (%rdi)
nop
nop
nop
nop
cmp $17560, %rdi

// Faulty Load
lea addresses_PSE+0x1358a, %r15
clflush (%r15)
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r15), %r12w
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
