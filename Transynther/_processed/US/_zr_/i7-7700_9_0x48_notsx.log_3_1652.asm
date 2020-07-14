.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6cbb, %rbx
nop
nop
nop
nop
and $59107, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x13ebb, %r9
nop
nop
nop
sub $40719, %r12
movl $0x61626364, (%r9)
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x13abb, %rbx
clflush (%rbx)
nop
nop
nop
cmp $31520, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xbbfb, %r9
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%r9), %rdi
nop
nop
nop
nop
nop
add $11215, %r12
lea addresses_D_ht+0x1ccab, %rdi
clflush (%rdi)
cmp %r15, %r15
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
inc %r15
lea addresses_WC_ht+0xacf5, %rsi
lea addresses_UC_ht+0x1d2bb, %rdi
and %r15, %r15
mov $114, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0xbb3b, %rsi
lea addresses_WT_ht+0x127f5, %rdi
nop
and %r9, %r9
mov $56, %rcx
rep movsq
add $3118, %rdi
lea addresses_D_ht+0x24fb, %rsi
lea addresses_WT_ht+0x194d7, %rdi
cmp %r13, %r13
mov $43, %rcx
rep movsq
cmp %rsi, %rsi
lea addresses_UC_ht+0x16537, %r9
nop
nop
nop
nop
sub %r13, %r13
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
add $27325, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1fcbb, %rbx
nop
cmp $4871, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_US+0x132bb, %rdx
nop
nop
nop
nop
nop
and %r14, %r14
mov (%rdx), %r15w
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'00': 3}
00 00 00
*/
