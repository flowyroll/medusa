.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xcf68, %rax
cmp $22036, %rbp
mov (%rax), %si
xor %r10, %r10
lea addresses_WC_ht+0xf0e5, %r12
add %rdi, %rdi
movb (%r12), %r14b
nop
nop
nop
nop
xor $33652, %r14
lea addresses_WT_ht+0x5e19, %rsi
lea addresses_A_ht+0x9d05, %rdi
nop
nop
nop
nop
cmp $53742, %r14
mov $78, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x7ce3, %rsi
lea addresses_D_ht+0x1ec15, %rdi
nop
nop
nop
nop
xor $62390, %r12
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
add $19638, %rbp
lea addresses_WT_ht+0x17105, %rax
clflush (%rax)
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rax)
xor $32964, %rdi
lea addresses_WT_ht+0xfa85, %rsi
lea addresses_normal_ht+0x6cf5, %rdi
nop
nop
add %r14, %r14
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0xe3bd, %rax
nop
nop
nop
nop
and $19056, %r10
and $0xffffffffffffffc0, %rax
vmovntdqa (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xbba5, %rsi
lea addresses_normal_ht+0x13245, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $49, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x1dc05, %rsi
lea addresses_UC_ht+0xca85, %rdi
nop
nop
nop
nop
nop
sub $56542, %r14
mov $15, %rcx
rep movsb
nop
nop
nop
nop
cmp $27311, %r14
lea addresses_A_ht+0x196d, %rsi
lea addresses_UC_ht+0x15e7d, %rdi
clflush (%rdi)
nop
sub %rbp, %rbp
mov $62, %rcx
rep movsq
cmp $26286, %r14
lea addresses_UC_ht+0x1905, %rbp
nop
nop
add %r12, %r12
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0xb785, %r14
clflush (%r14)
cmp %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0xf905, %rsi
lea addresses_D_ht+0x46d5, %rdi
nop
nop
nop
nop
nop
and $39578, %rbp
mov $71, %rcx
rep movsl
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x14a0d, %rsi
lea addresses_WC_ht+0x1af05, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $114, %rcx
rep movsw
nop
nop
add $25331, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xf64d, %rsi
and $14180, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
inc %r13

// Store
lea addresses_RW+0x1c7c5, %r10
nop
nop
inc %r15
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
nop
nop
nop
sub $49435, %r15

// Store
lea addresses_UC+0xa805, %r15
nop
nop
nop
nop
and $2351, %rdx
movw $0x5152, (%r15)
nop
nop
xor %r15, %r15

// Store
lea addresses_normal+0x1ed85, %r12
nop
sub $33843, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_US+0x15d05, %r13
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
sub $12050, %r10

// Faulty Load
mov $0x58e6b50000000905, %rdx
nop
nop
nop
nop
add $18079, %r12
movb (%rdx), %r10b
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
