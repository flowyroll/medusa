.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1630, %rbx
nop
nop
cmp %r8, %r8
movl $0x61626364, (%rbx)
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x6a30, %rsi
lea addresses_WT_ht+0x124e0, %rdi
nop
nop
nop
cmp $14209, %r10
mov $65, %rcx
rep movsb
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x17030, %r13
nop
nop
inc %rbx
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x61ea, %r8
add %rdi, %rdi
movb (%r8), %r13b
nop
nop
nop
and $17218, %rbx
lea addresses_A_ht+0x15230, %rdi
nop
and %r13, %r13
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x7080, %rsi
lea addresses_UC_ht+0x16d70, %rdi
add $29173, %r12
mov $104, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x9e04, %rsi
nop
nop
nop
nop
and $61004, %r10
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
nop
and %r8, %r8
lea addresses_D_ht+0x53b0, %r12
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r12)
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x3030, %rdi
nop
add %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1ea30, %rsi
lea addresses_WC_ht+0x12c0, %rdi
clflush (%rsi)
add %r8, %r8
mov $57, %rcx
rep movsb
nop
nop
nop
cmp $50424, %r8
lea addresses_WC_ht+0x1a2b0, %rbx
nop
sub %rsi, %rsi
mov (%rbx), %r12
add %rsi, %rsi
lea addresses_WC_ht+0x49f8, %rsi
lea addresses_A_ht+0x13620, %rdi
nop
sub $36240, %r12
mov $69, %rcx
rep movsl
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x13c30, %rsi
lea addresses_A_ht+0x7bf0, %rdi
nop
nop
nop
nop
xor $4636, %rbx
mov $83, %rcx
rep movsb
nop
sub $59889, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0x1b4e4, %r10
nop
add %rdx, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_US+0x1ea30, %rax
nop
sub %rbx, %rbx
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 1, '44': 6, '48': 2}
44 44 44 44 00 48 44 44 48
*/
