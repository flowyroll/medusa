.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xb77a, %rax
nop
inc %rcx
mov $0x6162636465666768, %r12
movq %r12, (%rax)
nop
and %r10, %r10
lea addresses_UC_ht+0xe67f, %rsi
lea addresses_normal_ht+0x1287a, %rdi
clflush (%rsi)
nop
nop
xor $51735, %r8
mov $28, %rcx
rep movsl
nop
nop
sub $25541, %rcx
lea addresses_WT_ht+0xd7aa, %rsi
nop
nop
nop
nop
cmp $32967, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0xcffa, %rax
clflush (%rax)
nop
nop
nop
nop
dec %rsi
mov (%rax), %r12d
add %r10, %r10
lea addresses_D_ht+0x137a, %r8
nop
nop
nop
nop
nop
add %rdi, %rdi
movups (%r8), %xmm6
vpextrq $0, %xmm6, %r10
inc %r10
lea addresses_WC_ht+0x12d3a, %r12
nop
mfence
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
dec %r10
lea addresses_WC_ht+0x11da, %r12
nop
nop
nop
sub %r10, %r10
movups (%r12), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
nop
dec %r8
lea addresses_WC_ht+0xdd8, %rcx
add %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x13cfa, %rsi
lea addresses_normal_ht+0x12f7a, %rdi
nop
add %r14, %r14
mov $61, %rcx
rep movsb
nop
nop
nop
xor $64276, %r10
lea addresses_A_ht+0x511a, %r8
nop
nop
nop
and %rax, %rax
movups (%r8), %xmm5
vpextrq $1, %xmm5, %r10
nop
xor $24914, %rdi
lea addresses_A_ht+0x1e13a, %rsi
lea addresses_WC_ht+0x1d7b0, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
xor %r8, %r8
mov $22, %rcx
rep movsl
nop
nop
nop
sub $6047, %r10
lea addresses_normal_ht+0x1367a, %r12
nop
nop
nop
dec %r8
mov (%r12), %ecx
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x4a7a, %rcx
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rcx)
nop
cmp $42836, %rcx
lea addresses_WT_ht+0x1dc0a, %rsi
lea addresses_UC_ht+0x1e87a, %rdi
nop
nop
nop
nop
and $18964, %r12
mov $68, %rcx
rep movsb
nop
nop
nop
nop
and $39816, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xa27a, %rdx
nop
nop
xor $53355, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%rdx)
mfence

// Store
lea addresses_normal+0xef3e, %rdx
nop
nop
xor %r13, %r13
movl $0x51525354, (%rdx)
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_D+0x96e2, %rdx
nop
sub $46429, %rax
movl $0x51525354, (%rdx)
nop
and %r8, %r8

// Store
lea addresses_UC+0x92a, %rdx
xor %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
nop
add $27278, %rdx

// REPMOV
lea addresses_WT+0xd4fa, %rsi
lea addresses_PSE+0x142fa, %rdi
nop
add %rdx, %rdx
mov $85, %rcx
rep movsb
nop
add %rdx, %rdx

// Store
lea addresses_WC+0x93a, %r15
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_UC+0xa27a, %rax
inc %r15
mov (%rax), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
