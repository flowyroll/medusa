.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x82dd, %rsi
lea addresses_WC_ht+0x479d, %rdi
sub %r8, %r8
mov $95, %rcx
rep movsl
nop
nop
sub $2478, %r15
lea addresses_normal_ht+0xd2f7, %r12
nop
nop
nop
nop
nop
sub $61561, %r14
mov (%r12), %r15w
nop
sub $12193, %r12
lea addresses_WC_ht+0xd25d, %rcx
nop
nop
nop
nop
add %r8, %r8
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
nop
add $45464, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi

// Load
lea addresses_RW+0xcb5d, %rax
nop
nop
nop
lfence
movb (%rax), %r10b
nop
cmp $32681, %r12

// Faulty Load
lea addresses_US+0x1c35d, %rbp
nop
nop
nop
sub $36468, %rdi
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'44': 4, '00': 2}
00 00 44 44 44 44
*/
