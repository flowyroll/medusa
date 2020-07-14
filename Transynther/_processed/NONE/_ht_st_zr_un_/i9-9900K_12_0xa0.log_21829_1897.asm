.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xe370, %r10
nop
nop
nop
nop
add $18646, %rsi
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
cmp $50508, %rsi
lea addresses_UC_ht+0x1c490, %rdi
add $46657, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rdi)
cmp %r10, %r10
lea addresses_D_ht+0x5770, %rsi
lea addresses_WT_ht+0x17d10, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
and $55771, %r13
lea addresses_A_ht+0x1d1e8, %r13
nop
nop
sub $49379, %rsi
movl $0x61626364, (%r13)
nop
nop
add $5557, %r15
lea addresses_UC_ht+0x70f0, %rsi
lea addresses_WT_ht+0x1e130, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $96, %rcx
rep movsl
nop
nop
nop
nop
xor $41277, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rdi

// Faulty Load
lea addresses_WT+0xd4f0, %rdi
clflush (%rdi)
nop
nop
and %r10, %r10
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'46': 18040, '49': 3761, 'ff': 2, '00': 1, 'c0': 4, '36': 12, '08': 9}
00 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 49 49 46 46 46 46 49 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 49 46 46 46 46 46 46 46 46 49 36 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 49 49 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 08 49 46 46 46 46 49 49 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 49 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46
*/
