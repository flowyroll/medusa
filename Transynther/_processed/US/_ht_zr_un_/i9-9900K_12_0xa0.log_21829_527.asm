.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16f4f, %rsi
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x7a33, %rcx
xor %rbp, %rbp
mov (%rcx), %r10w
add $53903, %rbp
lea addresses_A_ht+0x9e2f, %r13
and $41230, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r13)
inc %rdi
lea addresses_D_ht+0x16d2f, %rsi
and $52089, %r12
mov (%rsi), %ebp
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x124af, %rsi
lea addresses_D_ht+0x2fef, %rdi
nop
add %r10, %r10
mov $29, %rcx
rep movsq
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x2827, %rsi
lea addresses_A_ht+0x1e163, %rdi
lfence
mov $97, %rcx
rep movsq
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x1ea2f, %rbp
nop
sub %r13, %r13
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
and $6360, %r13
lea addresses_normal_ht+0x157af, %rsi
lea addresses_UC_ht+0x1e2f, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $90, %rcx
rep movsl
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0xcaaf, %rsi
lea addresses_D_ht+0x614f, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rbp, %rbp
mov $10, %rcx
rep movsb
nop
lfence
lea addresses_UC_ht+0xca2f, %rsi
lea addresses_UC_ht+0xb8e2, %rdi
nop
nop
nop
and %r13, %r13
mov $97, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1659f, %rsi
nop
nop
nop
dec %r12
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
and $22236, %rdi
lea addresses_A_ht+0x1b26f, %rsi
lea addresses_WC_ht+0x1afaf, %rdi
nop
nop
dec %r12
mov $97, %rcx
rep movsb
nop
cmp %r12, %r12
lea addresses_A_ht+0x15c49, %rsi
lea addresses_A_ht+0x17d6f, %rdi
nop
nop
nop
nop
nop
sub $6322, %rax
mov $24, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x642f, %rsi
nop
cmp $27779, %r10
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
add $4358, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x22f, %rdi
nop
nop
nop
nop
nop
dec %r9
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'44': 10525, '46': 611, 'ff': 2, '00': 4777, '48': 4963, '45': 933, '5d': 8, '6f': 2, '08': 8}
44 46 48 44 00 00 44 48 45 00 00 44 46 48 00 00 44 48 48 44 00 00 44 48 00 00 44 44 44 48 44 44 44 48 00 00 00 44 46 00 44 00 44 46 48 44 44 44 48 48 44 00 44 44 00 44 00 44 48 00 44 48 45 00 00 44 48 48 00 44 00 44 48 45 00 44 44 48 44 44 44 00 48 44 44 44 44 48 44 44 46 48 44 44 00 44 48 48 00 00 44 44 48 44 00 44 48 48 44 44 44 48 45 44 44 44 48 45 00 44 44 48 48 00 00 44 44 48 44 44 44 44 48 44 44 44 44 48 44 44 44 46 48 44 44 44 44 48 48 44 44 44 44 48 00 00 44 48 44 00 44 48 44 00 44 46 00 00 44 44 48 45 44 44 44 48 00 44 44 00 48 44 44 44 44 48 00 00 44 46 48 44 00 44 00 45 00 44 44 00 00 44 48 44 44 44 48 44 44 44 46 48 44 00 44 48 45 44 44 46 48 44 00 00 44 48 45 44 00 44 48 44 44 44 44 48 48 00 44 44 44 48 44 00 44 44 48 44 00 44 44 48 00 00 00 44 46 48 00 00 44 46 48 00 00 44 48 00 44 44 48 00 44 44 48 44 44 44 44 48 44 00 44 44 48 48 00 44 44 44 48 00 44 44 48 44 44 48 45 44 00 44 48 48 44 44 00 44 48 44 44 44 46 00 45 00 00 44 48 00 00 44 44 44 48 00 00 44 46 48 44 44 44 44 00 45 00 00 44 48 45 00 44 44 48 48 44 44 44 44 48 44 00 44 44 48 44 00 44 44 48 00 44 00 44 46 48 00 44 46 00 44 44 44 44 00 48 00 44 44 46 48 44 44 44 46 48 00 44 44 48 45 00 00 44 48 00 44 44 48 44 44 44 46 48 44 00 44 44 48 00 44 00 44 44 48 44 00 44 44 48 44 00 44 44 48 48 00 00 44 46 00 00 44 44 48 45 00 00 44 48 00 44 44 44 44 48 44 00 44 46 48 00 44 44 48 45 44 44 46 48 44 44 44 48 45 00 00 44 48 00 44 44 48 45 44 00 44 48 48 00 44 44 48 48 00 44 44 48 44 00 44 00 00 44 44 46 48 44 00 44 48 00 44 44 44 48 00 00 44 46 48 44 00 00 44 48 00 00 00 44 44 48 44 00 44 46 48 44 44 00 44 48 00 00 44 44 46 48 44 00 44 48 48 00 44 44 48 00 00 44 48 44 00 44 44 48 44 44 46 48 00 00 44 48 45 44 00 44 48 00 00 44 48 48 00 00 00 44 48 45 44 44 44 48 48 44 44 44 44 48 44 44 44 44 48 44 00 44 44 48 48 00 00 44 44 48 00 44 44 48 44 44 44 44 48 44 44 44 46 48 44 00 00 44 48 00 44 00 44 44 48 44 44 44 48 48 00 44 44 48 44 00 44 48 00 00 44 44 48 44 44 44 48 44 00 44 44 48 00 00 44 44 44 48 00 44 44 48 48 00 44 44 44 48 00 00 44 48 44 44 48 45 44 00 44 48 48 44 44 44 44 48 44 44 44 44 48 44 00 44 44 48 48 00 44 44 44 48 45 00 00 44 48 00 00 44 48 48 00 44 44 44 48 44 00 44 46 00 00 00 44 48 45 44 00 44 48 45 44 00 44 48 48 44 44 44 44 48 44 44 46 48 45 00 00 44 48 44 44 44 46 48 44 44 44 48 45 00 44 46 48 44 00 44 48 44 44 48 00 44 44 44 48 45 00 00 44 48 44 00 44 48 48 00 44 44 44 48 44 44 48 48 44 00 44 48 00 00 44 46 48 44 44 44 00 45 00 44 48 00 00 44 48 00 44 44 48 44 00 00 44 48 00 00 44 44 48 45 44 44 44 48 00 44 44 00 44 48 44 44 48 48 44 00 44 48 00 44 48 44 44 44 44 48 00 44 44 48 44 44 44 44 48 00 44 00 44 00 48 00 00 44 48 00 44 44 44 48 44 44 44 48 00 44 44 44 48 45 00 44 44 48 44 44 44 00 45 00 44 44 44 48 44 00 44 48 48 44 44 44 44 48 00 44 00 44 00 44 48 44 44 44 48 48 44 44 44 44 48 45 00 44 44 48 44 00 00 44 48 48 44 44 44 44 48 45 44 44 44 48 45 00 44 44 00 45 44 44 44 44 48 00 44 46 48 44 00 44 44 48 45 00 44 44 44 48 00 44 48 00 44 48 45 00 00 44 48 48 44
*/
