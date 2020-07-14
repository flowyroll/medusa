.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x47, %rsi
lea addresses_A_ht+0xb1c7, %rdi
nop
nop
add %r9, %r9
mov $106, %rcx
rep movsq
nop
nop
nop
nop
xor $42073, %r8
lea addresses_WC_ht+0xb847, %rsi
lea addresses_D_ht+0x14c47, %rdi
nop
nop
dec %rax
mov $74, %rcx
rep movsb
sub %rdi, %rdi
lea addresses_WT_ht+0x19247, %rsi
lea addresses_WT_ht+0xaa1, %rdi
clflush (%rdi)
nop
nop
nop
sub %r14, %r14
mov $43, %rcx
rep movsw
nop
nop
nop
dec %r8
lea addresses_D_ht+0xd7af, %rsi
lea addresses_WT_ht+0x73c7, %rdi
nop
nop
add $47008, %r14
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x87, %rdi
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdi)
nop
nop
dec %r8
lea addresses_D_ht+0xb267, %r8
xor $7206, %rcx
mov (%r8), %r9w
nop
nop
and $10054, %rcx
lea addresses_D_ht+0x11c47, %rax
nop
nop
nop
nop
cmp $1265, %r14
mov (%rax), %r8d
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x18e47, %rsi
lea addresses_UC_ht+0xff07, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $49, %rcx
rep movsw
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x1840f, %r9
clflush (%r9)
nop
nop
nop
nop
xor $61914, %rsi
mov (%r9), %rdx
nop
nop
cmp %r9, %r9

// Store
lea addresses_normal+0x2347, %r8
and $1585, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r8)
cmp %r12, %r12

// Faulty Load
lea addresses_US+0x14847, %r12
nop
add %rdi, %rdi
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'08': 16, '44': 7833, '05': 5502, 'a0': 8384, '72': 23, '49': 32, '00': 39}
a0 a0 05 44 44 44 72 44 44 a0 a0 a0 44 a0 a0 a0 05 a0 44 44 44 44 44 a0 44 a0 44 44 a0 a0 a0 05 05 05 a0 05 a0 a0 a0 a0 44 05 a0 44 05 a0 a0 a0 05 44 05 a0 05 44 a0 44 a0 44 05 44 a0 44 44 a0 05 44 a0 44 a0 a0 05 a0 a0 05 a0 05 a0 44 a0 a0 44 44 44 a0 44 05 44 05 44 44 a0 a0 05 44 a0 a0 44 44 44 a0 a0 a0 44 a0 44 05 49 44 05 44 05 a0 a0 a0 44 44 a0 44 44 44 a0 a0 a0 a0 05 05 44 44 44 a0 44 44 44 44 44 a0 44 05 a0 44 a0 44 a0 44 44 05 44 a0 44 a0 44 44 44 05 a0 44 44 44 a0 44 44 44 05 05 44 44 a0 44 44 a0 05 44 a0 00 44 05 a0 a0 a0 44 a0 05 44 05 44 05 a0 05 44 a0 a0 a0 44 05 44 05 44 44 44 a0 a0 44 a0 44 a0 44 44 a0 44 05 a0 44 a0 a0 05 44 a0 a0 a0 44 a0 a0 44 44 a0 05 a0 05 44 a0 44 a0 a0 a0 a0 44 a0 44 05 44 a0 44 44 05 a0 05 a0 44 05 a0 44 05 05 a0 05 05 44 a0 a0 a0 44 a0 a0 a0 a0 44 44 44 05 05 44 a0 05 a0 05 44 a0 44 05 44 05 44 44 05 44 a0 44 05 44 05 44 44 44 a0 05 a0 44 a0 44 a0 44 44 a0 a0 a0 44 05 05 a0 44 44 a0 44 44 05 a0 05 44 a0 44 05 a0 05 a0 44 a0 05 44 a0 a0 05 44 a0 44 a0 44 a0 44 44 a0 a0 05 a0 44 a0 a0 a0 44 05 05 a0 05 05 05 a0 44 44 a0 05 a0 44 a0 a0 44 05 a0 a0 44 a0 a0 a0 44 44 44 44 05 44 a0 44 a0 44 a0 44 a0 a0 a0 a0 a0 a0 44 05 05 a0 44 44 44 05 49 05 44 a0 a0 44 05 a0 44 44 a0 05 44 05 a0 a0 a0 a0 05 44 44 05 05 a0 05 a0 a0 a0 05 44 a0 44 44 a0 a0 05 44 05 05 05 44 44 44 44 44 a0 44 05 a0 44 05 44 44 44 a0 a0 05 a0 a0 44 a0 a0 05 a0 44 a0 44 05 a0 44 05 a0 44 a0 44 a0 44 a0 44 05 05 a0 44 44 44 a0 05 05 44 a0 a0 a0 a0 a0 a0 a0 44 05 a0 44 a0 a0 44 a0 44 a0 44 a0 a0 a0 44 05 a0 a0 a0 a0 05 44 05 a0 05 a0 05 a0 44 05 a0 a0 44 a0 44 a0 a0 44 05 05 44 a0 a0 a0 44 05 44 44 05 44 a0 44 44 05 05 05 05 05 05 a0 44 05 05 44 05 a0 a0 44 a0 05 a0 44 a0 44 44 a0 a0 44 05 a0 44 a0 44 a0 a0 44 05 05 a0 a0 05 05 a0 05 a0 44 a0 44 44 44 05 a0 44 05 44 05 05 a0 a0 a0 44 a0 a0 a0 05 44 a0 a0 44 a0 44 44 a0 a0 05 44 a0 44 44 a0 a0 a0 a0 44 a0 05 a0 a0 05 05 05 05 a0 44 44 a0 44 05 a0 05 a0 05 44 44 a0 44 a0 44 44 05 a0 a0 a0 44 a0 05 a0 05 44 05 05 a0 a0 44 a0 05 a0 44 05 a0 a0 a0 a0 44 44 44 a0 05 a0 a0 05 44 a0 a0 a0 44 44 44 05 44 44 05 05 a0 44 00 a0 05 a0 44 a0 a0 a0 a0 44 05 44 a0 a0 05 a0 05 05 05 05 05 a0 a0 44 a0 44 44 44 a0 44 a0 05 44 05 44 44 a0 a0 a0 05 44 05 a0 05 05 a0 44 44 05 44 44 05 49 44 44 44 a0 a0 44 05 44 a0 44 05 a0 44 05 44 44 a0 44 44 a0 44 05 05 a0 a0 a0 a0 44 a0 05 a0 a0 a0 a0 05 a0 a0 44 44 a0 a0 05 44 44 44 44 05 44 44 05 a0 44 05 a0 a0 05 a0 44 44 a0 44 44 a0 a0 44 a0 44 05 44 05 44 44 a0 a0 05 a0 44 05 44 a0 44 a0 a0 44 a0 05 a0 44 05 44 a0 a0 44 44 05 05 a0 05 a0 a0 a0 44 44 44 a0 a0 72 a0 a0 44 a0 05 a0 05 a0 44 a0 05 a0 44 44 44 05 05 44 a0 44 44 05 05 44 05 44 44 a0 a0 44 05 05 44 05 44 44 05 05 a0 a0 a0 a0 a0 08 a0 a0 a0 a0 44 05 05 05 05 a0 a0 05 05 a0 a0 44 a0 44 05 44 44 05 05 44 a0 44 a0 05 44 05 a0 a0 a0 05 44 05 a0 a0 44 44 05 05 a0 44 05 44 a0 44 05 a0 a0 05 05 a0 a0 a0 44 44 44 05 a0 44 a0 44 05 44 44 a0 05 a0 05 a0 05 a0 05 44 a0 a0 44 a0 44 a0 a0 a0 44 a0 44 a0 a0 a0 44 a0 00 a0 a0 a0 44 44
*/
