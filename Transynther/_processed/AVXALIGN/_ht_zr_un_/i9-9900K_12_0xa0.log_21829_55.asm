.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x4d, %rsi
lea addresses_WT_ht+0x4459, %rdi
sub $51959, %r14
mov $117, %rcx
rep movsl
cmp %rbp, %rbp
lea addresses_UC_ht+0x1ced9, %r15
nop
lfence
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x5859, %rcx
clflush (%rcx)
nop
cmp $60966, %r12
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
xor $24620, %r15
lea addresses_UC_ht+0xf019, %rsi
lea addresses_D_ht+0xa859, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $30, %rcx
rep movsw
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x12a59, %rsi
lea addresses_WC_ht+0xc7d9, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $119, %rcx
rep movsb
nop
nop
and %r15, %r15
lea addresses_A_ht+0xe859, %rsi
lea addresses_A_ht+0x12159, %rdi
nop
and %r12, %r12
mov $85, %rcx
rep movsw
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x14699, %rsi
lea addresses_UC_ht+0xc259, %rdi
nop
nop
nop
sub %r14, %r14
mov $22, %rcx
rep movsq
nop
cmp $18975, %r8
lea addresses_WC_ht+0x7459, %rsi
lea addresses_normal_ht+0x1aef5, %rdi
nop
nop
nop
sub $39377, %rbp
mov $3, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1b459, %rsi
lea addresses_WT_ht+0x17cd9, %rdi
nop
nop
nop
sub $51471, %r8
mov $53, %rcx
rep movsw
nop
inc %r12
lea addresses_WC_ht+0xac59, %rsi
clflush (%rsi)
nop
nop
nop
nop
dec %r15
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x7499, %rdx
nop
nop
and %r12, %r12
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
xor %rsi, %rsi

// Load
lea addresses_UC+0xe59, %rdx
nop
nop
nop
nop
nop
and %r9, %r9
mov (%rdx), %r12d

// Exception!!!
nop
nop
mov (0), %r12
nop
xor $3501, %r15

// Faulty Load
lea addresses_PSE+0x1a459, %r12
nop
dec %rdi
vmovaps (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'48': 4256, '49': 209, '2a': 4, '00': 7971, 'ff': 2, '45': 9385, '08': 2}
00 49 45 00 00 45 48 45 00 45 48 00 45 48 00 45 00 45 00 45 48 45 00 45 00 45 48 45 00 45 00 45 00 45 00 45 48 48 45 00 00 45 48 45 48 45 00 00 45 00 00 45 00 45 48 00 00 45 48 45 48 45 00 00 45 48 45 48 45 00 00 45 48 45 00 45 45 48 45 00 00 45 00 45 45 48 45 45 45 00 00 45 48 45 00 45 48 00 45 00 00 45 48 00 45 48 45 45 00 45 48 45 48 45 00 48 00 45 48 45 45 48 49 45 48 45 45 00 45 48 00 45 00 00 45 48 00 45 48 45 48 00 00 45 48 00 45 48 48 45 45 00 00 45 48 45 00 45 00 45 48 48 45 00 45 45 48 45 00 00 45 48 45 45 00 45 48 00 45 00 48 48 45 00 45 00 00 45 48 45 00 45 48 45 48 49 00 45 00 00 45 48 45 45 48 45 00 45 00 00 45 48 00 45 00 45 00 45 48 00 45 48 00 45 00 48 00 45 00 45 48 45 00 00 45 48 45 48 45 45 48 00 45 48 45 45 00 45 48 00 45 00 49 45 48 00 48 45 48 45 00 45 00 45 48 45 45 00 45 00 45 48 00 45 00 45 00 00 45 00 00 45 48 00 00 45 48 45 48 00 45 00 00 45 48 48 00 45 48 00 48 00 45 00 00 45 48 00 00 45 48 45 00 45 48 00 45 00 00 00 00 48 00 45 00 45 48 00 00 45 48 00 48 45 00 45 48 00 00 45 00 45 48 45 48 00 45 00 00 45 48 45 00 00 45 48 00 45 00 45 45 00 48 00 45 00 45 00 00 45 00 00 45 48 45 00 45 48 00 45 48 45 00 48 48 45 00 00 45 48 00 45 00 45 00 45 00 45 00 45 45 48 45 00 00 45 48 45 48 45 00 48 45 00 00 45 48 45 48 45 00 45 00 00 45 48 00 45 00 00 45 00 00 45 00 45 00 48 00 45 00 45 48 45 00 48 00 45 00 00 45 48 48 48 45 00 00 45 48 00 45 00 45 45 00 45 00 45 48 00 45 48 00 00 45 48 45 48 45 00 00 45 48 45 48 00 45 48 00 45 00 48 48 45 00 45 00 45 45 48 45 00 45 00 48 00 45 48 45 48 00 00 45 48 45 48 45 00 00 00 48 00 48 48 00 45 48 45 00 00 48 00 45 00 00 45 48 48 48 00 00 00 45 48 48 48 45 00 00 45 00 49 00 00 45 48 45 48 45 00 45 48 00 45 00 45 48 00 00 48 45 48 48 45 48 48 00 45 48 00 45 00 00 45 48 45 00 45 00 00 00 45 48 45 00 45 48 45 00 45 00 45 45 00 45 00 45 00 45 00 45 48 45 00 45 45 00 45 00 00 45 48 00 45 00 00 45 00 00 45 48 00 45 00 48 45 00 45 00 45 45 00 45 00 00 45 48 45 00 00 00 45 00 00 45 48 45 00 00 45 48 00 45 48 00 45 00 45 45 00 45 00 45 00 00 45 48 00 45 00 45 45 48 45 00 00 45 00 00 45 48 45 48 45 00 00 45 00 45 48 45 45 48 45 00 45 48 00 45 00 45 48 45 48 00 45 48 49 00 00 45 48 00 45 00 00 45 48 45 45 00 45 00 45 48 45 00 45 00 45 00 48 45 45 00 45 00 45 48 45 48 49 45 48 45 48 45 00 45 00 45 00 45 48 45 48 45 48 00 00 45 48 45 48 45 00 45 00 00 45 48 45 00 48 45 00 45 00 48 45 48 00 45 00 48 00 45 00 45 00 48 00 45 48 45 45 00 45 00 00 45 48 00 45 00 45 48 45 00 45 45 00 00 45 00 45 45 48 48 00 45 00 49 48 00 45 45 00 00 45 48 45 48 45 00 45 48 49 45 48 45 00 00 45 48 45 00 45 00 00 45 00 45 00 45 45 48 45 00 00 45 00 45 48 00 45 00 45 00 45 00 45 00 00 45 48 00 45 00 00 45 45 48 45 00 45 48 45 00 45 45 00 45 48 45 48 00 45 48 45 48 45 00 00 45 48 00 45 00 49 48 45 00 45 45 00 45 48 45 48 45 00 45 48 45 48 45 00 00 45 48 00 00 45 48 00 45 00 00 45 48 45 00 45 48 45 48 45 00 45 00 00 45 00 48 00 45 00 45 00 45 00 45 48 00 45 00 45 45 00 45 00 45 00 00 45 48 00 00 45 48 45 48 00 45 00 45 48 45 00
*/
