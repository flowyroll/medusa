.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x878d, %rbp
nop
nop
xor %r9, %r9
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %r15
sub $4269, %r10
lea addresses_WC_ht+0x1d38d, %rsi
lea addresses_D_ht+0xa91d, %rdi
nop
sub $27882, %r9
mov $75, %rcx
rep movsq
nop
nop
nop
add $11904, %r10
lea addresses_WT_ht+0x5595, %r9
nop
inc %rbp
movups (%r9), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Load
mov $0x18d, %rsi
nop
nop
and $23010, %rbp
mov (%rsi), %r14w
nop
nop
nop
nop
add %rcx, %rcx

// Load
mov $0xd0d, %rdx
nop
nop
nop
sub $18140, %r10
vmovups (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
cmp $30527, %rbp

// Faulty Load
lea addresses_normal+0x1018d, %rax
nop
sub $43686, %r14
vmovaps (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 4943, '45': 400, '48': 15943, '49': 543}
48 48 48 48 48 48 48 45 48 48 48 00 48 00 00 48 48 48 48 48 49 00 48 48 48 48 00 48 48 00 48 48 49 00 48 48 48 48 49 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 49 00 48 48 48 00 00 48 48 00 48 49 00 48 48 48 48 48 00 00 48 45 48 00 48 48 48 48 48 48 48 00 48 00 00 48 00 48 49 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 00 48 45 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 00 48 48 48 48 00 49 48 48 48 48 48 48 00 48 48 48 48 49 49 48 48 48 48 48 48 48 48 48 48 48 48 48 49 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 00 48 00 49 49 48 48 48 00 48 00 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 00 48 00 49 00 48 48 48 48 00 00 48 48 48 45 48 48 00 00 49 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 00 00 48 49 48 48 00 48 48 00 48 48 48 00 48 48 45 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 00 49 48 48 48 45 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 49 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 49 00 48 48 48 48 48 48 48 00 00 45 00 00 00 00 48 48 48 48 48 48 48 48 00 00 48 48 48 49 48 48 48 48 48 48 48 48 48 48 00 00 00 49 48 00 00 48 48 48 48 48 48 48 48 48 48 00 49 48 48 48 48 48 00 48 48 48 48 48 49 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 48 00 00 00 00 00 00 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 49 48 48 48 48 00 00 00 49 48 48 45 48 48 48 48 48 48 48 48 49 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 00 49 00 00 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 49 00 48 48 48 48 00 48 48 00 00 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 45 00 48 00 00 00 00 00 00 00 48 48 45 48 48 48 48 00 48 48 00 00 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 45 48 48 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 48 49 48 48 48 48 00 48 48 00 49 49 48 48 48 00 48 48 45 00 48 48 48 00 00 48 00 48 48 00 48 45 00 00 00 48 48 48 00 48 48 48 48 48 48 00 48 45 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 00 49 00 48 48 48 48 48 00 48 48 00 48 48 48 49 48 48 45 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 48 48 48 49 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 00 48 48 48 48 48 00 48 00 00 48 48 49 48 48 48 48 00 45 48 48 48 48 48 48 48 00 00 00 49 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 00 00 48 48 49 00 48 00 48 48 00 00 00 48 48 00 48 00 48 00 48 48 00 48 48 00 48 48 00 48 00 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 00 00 00 48 48 48 00 48 48 48 00 48 00 48 00 00 48 48 48 00 00 48 48 00 00 00 00 48 00 48 48 48 00 48 48 48 48 48 00 48 48 00 49 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 00 48 48 00 00 49 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 00
*/
