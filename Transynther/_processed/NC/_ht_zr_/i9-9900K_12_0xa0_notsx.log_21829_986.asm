.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3556, %r14
nop
nop
nop
dec %rax
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
nop
nop
nop
add $30752, %r10
lea addresses_A_ht+0x72f6, %rcx
nop
nop
nop
nop
and %rbp, %rbp
mov (%rcx), %r12w
nop
sub $16778, %rbp
lea addresses_normal_ht+0x7588, %rsi
lea addresses_UC_ht+0x3556, %rdi
nop
nop
and $60331, %r14
mov $52, %rcx
rep movsl
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x7c56, %r10
nop
nop
cmp %r12, %r12
movups (%r10), %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
nop
cmp $38027, %rsi
lea addresses_A_ht+0xc756, %rdi
clflush (%rdi)
cmp %r12, %r12
movw $0x6162, (%rdi)
nop
nop
dec %r10
lea addresses_D_ht+0x18556, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
xor $55664, %rdi
lea addresses_A_ht+0xc6f2, %rcx
nop
nop
nop
nop
nop
cmp %r14, %r14
mov (%rcx), %r13w
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x8d56, %rdi
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
nop
add $11358, %r14
lea addresses_WC_ht+0xa556, %rsi
lea addresses_WT_ht+0x19fd6, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $93, %rcx
rep movsw
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi

// Faulty Load
mov $0x5925b90000000556, %rdi
nop
nop
nop
sub %r9, %r9
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'44': 8495, '00': 13334}
00 44 00 00 00 44 00 44 00 00 00 00 44 00 00 44 00 44 44 00 44 00 44 00 00 44 00 44 00 44 44 44 00 00 00 44 00 44 00 44 00 44 44 44 00 00 00 00 00 44 44 00 00 44 00 44 00 00 00 00 00 44 00 44 00 44 44 44 00 00 44 00 00 44 00 44 00 00 00 44 00 44 00 44 00 00 44 44 00 00 44 44 44 00 00 44 00 44 00 00 44 00 00 44 00 00 00 44 44 44 00 00 44 00 44 00 00 44 00 44 00 00 00 00 00 44 44 00 44 00 44 00 00 00 44 44 00 44 00 44 44 00 44 00 00 44 44 00 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 44 44 00 44 00 44 44 44 00 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 44 00 44 00 00 44 00 00 00 00 00 44 00 00 44 44 00 44 00 44 44 00 00 00 00 44 44 44 44 44 44 00 00 00 00 00 44 00 44 00 44 00 44 00 00 44 44 44 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 00 00 44 44 00 00 00 44 00 00 44 00 00 00 00 00 44 44 00 00 44 44 00 44 00 00 00 00 00 00 44 00 44 00 44 44 00 00 44 00 44 00 00 44 00 44 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 44 00 00 44 44 44 44 00 44 00 44 00 44 44 00 44 44 00 00 44 00 44 44 00 44 00 44 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 44 00 00 00 44 00 44 44 00 44 44 00 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 44 44 00 00 44 00 00 00 44 00 00 44 44 44 00 44 00 44 00 00 44 00 00 44 44 00 44 00 44 00 44 00 00 44 00 00 44 00 00 00 44 44 00 44 00 00 44 00 00 00 44 44 44 00 44 44 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 44 00 00 44 44 00 00 44 44 00 00 00 00 00 00 44 00 00 44 44 44 00 00 00 00 00 00 00 44 44 00 44 00 44 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 00 44 44 00 00 00 44 44 00 44 44 44 00 44 00 44 44 44 00 44 00 00 44 44 00 00 00 44 00 00 44 00 00 44 00 44 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 44 44 00 00 00 00 00 44 44 00 44 00 44 44 44 00 00 44 00 44 44 00 00 00 00 00 44 00 44 00 00 44 00 00 44 00 44 00 44 00 00 44 00 44 00 44 00 44 00 44 00 00 44 00 00 00 00 44 44 44 00 00 44 44 00 00 00 00 00 00 00 44 44 00 44 00 00 44 44 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 44 44 00 00 44 44 44 00 00 00 00 44 44 00 44 44 00 44 44 00 44 00 00 44 44 00 00 00 44 44 00 00 00 44 44 44 44 00 44 44 00 00 00 00 00 00 44 44 44 00 44 44 00 00 44 00 44 44 00 00 44 00 00 00 00 00 00 44 44 00 00 00 44 00 44 44 00 00 44 00 44 44 00 00 44 44 00 44 00 00 44 44 00 00 44 00 44 00 44 00 00 00 44 00 44 00 44 44 00 00 44 00 00 44 00 00 00 44 00 00 00 00 44 00 00 44 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 44 00 00 00 44 00 44 00 44 00 00 00 00 44 00 00 00 00 44 00 44 44 00 00 44 00 00 00 44 44 44 00 00 00 44 00 44 00 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 44 00 44 44 44 44 44 44 00 44 00 00 00 44 00 44 00 00 44 00 00 00 00 00 44 00 00 00 00 44 44 44 00 00 44 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 44 00 00 44 44 00 00 00 00 44 00 44 00 00
*/
