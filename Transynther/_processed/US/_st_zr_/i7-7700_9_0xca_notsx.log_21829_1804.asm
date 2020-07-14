.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xcd97, %r12
clflush (%r12)
nop
nop
sub $49714, %rdx
movl $0x61626364, (%r12)
nop
dec %r10
lea addresses_UC_ht+0x11317, %rsi
lea addresses_D_ht+0x1847, %rdi
nop
nop
nop
nop
add $34287, %rbx
mov $93, %rcx
rep movsl
nop
nop
add $17256, %r12
lea addresses_WT_ht+0x1c887, %r10
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x135c7, %rsi
lea addresses_D_ht+0x1744d, %rdi
nop
nop
sub $54473, %r10
mov $62, %rcx
rep movsw
nop
add %r12, %r12
lea addresses_normal_ht+0x6f97, %rbx
nop
nop
nop
sub $57979, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
nop
add %rdx, %rdx
lea addresses_WC_ht+0x16697, %r9
add $36031, %rsi
movb (%r9), %cl
nop
nop
nop
nop
nop
add $907, %rbx
lea addresses_WT_ht+0x1a997, %rsi
lea addresses_normal_ht+0x12c57, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $53954, %rdx
mov $31, %rcx
rep movsq
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x153f7, %r10
clflush (%r10)
nop
inc %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r10
vmovaps %ymm7, (%r10)
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0xb997, %rcx
nop
nop
nop
nop
sub $40165, %rbx
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add $12166, %r12
lea addresses_D_ht+0x16197, %rdi
nop
nop
nop
sub $62279, %rcx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
add $6710, %r12
lea addresses_WC_ht+0x19077, %rdi
nop
nop
nop
nop
nop
dec %r12
movl $0x61626364, (%rdi)
nop
nop
nop
xor $24118, %rbx
lea addresses_D_ht+0x14de3, %r12
nop
nop
nop
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
and %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x17d43, %rdx
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rdx)
xor %r14, %r14

// REPMOV
lea addresses_RW+0x1ecd7, %rsi
lea addresses_A+0x26d7, %rdi
xor %r8, %r8
mov $106, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $15999, %rbp

// REPMOV
lea addresses_WC+0x1957f, %rsi
lea addresses_normal+0x1e197, %rdi
nop
and %r13, %r13
mov $63, %rcx
rep movsw
nop
nop
and $30383, %r10

// Load
lea addresses_WC+0x1155b, %rdi
nop
nop
nop
nop
nop
sub $41401, %r8
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
xor $1720, %r10

// Load
lea addresses_normal+0x82b7, %r14
nop
nop
add $59948, %rbp
mov (%r14), %ecx
and $21583, %rdi

// Store
lea addresses_WC+0x1cd97, %rbp
nop
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%rbp)
nop
nop
nop
nop
sub $52858, %r10

// Faulty Load
lea addresses_US+0x9197, %rsi
nop
nop
nop
sub $63527, %rdi
movb (%rsi), %r10b
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 21816, '38': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
