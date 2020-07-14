.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rsi
lea addresses_WC_ht+0x1aae, %rax
nop
nop
sub $37659, %r9
mov (%rax), %rbx
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x4dda, %r8
nop
nop
and %rbp, %rbp
movb (%r8), %r9b
nop
nop
nop
nop
nop
cmp $62308, %r8
lea addresses_WT_ht+0x171ae, %rax
nop
nop
nop
sub %r9, %r9
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
and %r9, %r9
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rcx
push %rdx

// Faulty Load
lea addresses_A+0x9eee, %rcx
nop
nop
nop
nop
nop
sub $54391, %r15
vmovntdqa (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'60': 20, '93': 34}
93 60 60 93 93 93 93 93 60 93 93 93 60 93 60 60 93 60 93 60 93 60 93 60 93 60 93 93 93 93 60 60 93 93 60 60 60 93 93 93 93 60 93 60 93 93 93 60 93 60 93 93 93 93
*/
