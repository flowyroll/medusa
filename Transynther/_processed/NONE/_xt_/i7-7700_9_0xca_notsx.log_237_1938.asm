.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c892, %rsi
lea addresses_WT_ht+0x160c0, %rdi
xor $24131, %r10
mov $84, %rcx
rep movsq
nop
nop
nop
add $17908, %r15
lea addresses_A_ht+0x9f2, %rsi
lea addresses_UC_ht+0xb822, %rdi
nop
nop
inc %r13
mov $100, %rcx
rep movsq
nop
nop
nop
nop
sub $9657, %rdi
lea addresses_WC_ht+0xce22, %rsi
lea addresses_normal_ht+0x211c, %rdi
clflush (%rdi)
nop
dec %r13
mov $38, %rcx
rep movsq
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x5d22, %rcx
dec %rbp
movw $0x6162, (%rcx)
nop
nop
nop
and $33145, %r13
lea addresses_WT_ht+0xd822, %rcx
nop
nop
mfence
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
nop
xor $36506, %r13
lea addresses_D_ht+0x897b, %rdi
nop
nop
nop
nop
cmp $1358, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x10c22, %r15
nop
sub $46769, %rsi
movaps (%r15), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
sub $21111, %r9

// Faulty Load
lea addresses_D+0xfc22, %rdi
nop
sub %rbp, %rbp
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'36': 237}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
