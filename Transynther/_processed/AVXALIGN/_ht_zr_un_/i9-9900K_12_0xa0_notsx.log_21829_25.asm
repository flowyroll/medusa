.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xcfac, %rsi
lea addresses_normal_ht+0x65c6, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $106, %rcx
rep movsq
nop
nop
sub $45918, %rcx
lea addresses_UC_ht+0x26c6, %r15
nop
nop
nop
and $2795, %rdi
movw $0x6162, (%r15)
and $32206, %r12
lea addresses_UC_ht+0x1b8c6, %rcx
nop
nop
nop
inc %r15
movw $0x6162, (%rcx)
xor $24879, %rsi
lea addresses_D_ht+0xcd46, %rsi
lea addresses_WT_ht+0x17fc6, %rdi
nop
xor %rbp, %rbp
mov $11, %rcx
rep movsq
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1be46, %rsi
lea addresses_UC_ht+0x19382, %rdi
nop
nop
nop
nop
sub $427, %r8
mov $97, %rcx
rep movsw
nop
inc %rsi
lea addresses_A_ht+0x1198e, %rdi
nop
nop
nop
nop
nop
and $8897, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0xd9c6, %r15
nop
nop
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%r15)
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x1aeba, %r12
nop
and $61364, %rcx
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0xe7c6, %rcx
clflush (%rcx)
nop
xor $269, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp

// Faulty Load
lea addresses_A+0xa7c6, %r9
nop
nop
nop
nop
and $56228, %rbp
vmovaps (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'08': 9, '48': 16652, '72': 12, '00': 5156}
48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 00 00 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 00 48 48 48 00 48 00 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 00 00 00 48 48 48 00 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 00 48 48 00 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 00 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 00 00 48 00 00 48 00 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 00 48 48 00 00 48 48 48 00 48 48 48 00 00 48 00 00 48 48 00 00 48 48 00 00 48 00 00 48 00 00 48 00 00 48 00 00 00 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 00 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 00 48 48 48 48 00 00 48 48 48 48 00 00 48 00 48 48 00 00 00 48 48 48 48 48 00 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 00 48 48 00 48 48 48 48 48 00 00 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 00 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 72 48 48 48 48 48 48 48 48 48 00 00 48 00 48 00 00 48 48 00 00 48 48 00 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 00 48 48 48 00 48 00 48 48 00 00 48 00 00 00 48 48 00 48 48 48 48 48 48 48 00 00 48 48 48 48 00 00 48 48 48 00 00 48 00 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 00 48 48 48 00 48 48 00 00 48 00 48 48 48 00 00 48 48 00 00 48 48 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 00 48 48 48 00 00 48 48 48 48 48 48 00 48 48 48 00 00 48 48 00 00 48 48 00 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 00 48 48 48 00 00 48 00 00 00 48 48 48 00 00 00 48 48 00 00 48 00 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 00 00 00 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48
*/
