.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rdi
push %rdx
lea addresses_normal_ht+0x13303, %r13
add $57808, %r9
movb $0x61, (%r13)
nop
nop
sub $49416, %r12
lea addresses_WT_ht+0xb4a3, %rdx
nop
add %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%rdx)
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x1dc83, %rdx
nop
nop
xor $43156, %r15
mov (%rdx), %r9
nop
nop
nop
nop
xor $45743, %r9
lea addresses_A_ht+0x1e103, %r9
nop
nop
inc %rdx
movb (%r9), %r12b
nop
nop
nop
nop
and $54037, %rdx
lea addresses_normal_ht+0x16c83, %r10
nop
nop
nop
cmp %rdx, %rdx
mov (%r10), %r15d
nop
nop
nop
nop
cmp $6418, %r13
lea addresses_A_ht+0x5343, %rdx
nop
nop
nop
nop
nop
sub $37220, %r9
mov (%rdx), %r12w
nop
xor $14886, %r13
lea addresses_D_ht+0x2383, %rdi
nop
nop
nop
and $52193, %r12
mov (%rdi), %r9d
nop
nop
inc %r9
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbp
push %rdi

// Faulty Load
lea addresses_A+0xe483, %r12
nop
nop
nop
nop
nop
sub $37226, %r10
vmovntdqa (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8}}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'ee': 1, '3c': 1, '22': 1, 'd6': 1, '71': 4, 'ec': 2}
22 ee 71 d6 3c 71 ec ec 71 71
*/
