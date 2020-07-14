.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3ef5, %rax
nop
nop
add $60544, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x13f35, %r13
nop
cmp $59196, %rcx
movb (%r13), %r14b
nop
xor $7752, %r14
lea addresses_UC_ht+0xe335, %r14
nop
nop
and %rbx, %rbx
movb $0x61, (%r14)
nop
sub $4464, %r14
lea addresses_A_ht+0xab35, %rbx
nop
nop
nop
nop
nop
sub %r15, %r15
movb (%rbx), %cl
nop
nop
add $34865, %rbx
lea addresses_A_ht+0x17735, %rsi
lea addresses_D_ht+0xbfd, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $82, %rcx
rep movsq
nop
xor $42493, %rax
lea addresses_D_ht+0xb535, %rsi
nop
nop
xor $14733, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm7, (%rsi)
and %rax, %rax
lea addresses_UC_ht+0x1535, %rsi
nop
nop
nop
sub %r15, %r15
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x13635, %r15
nop
nop
nop
nop
nop
add $5756, %rsi
movb (%r15), %bl
nop
nop
nop
lfence
lea addresses_D_ht+0xcd35, %r15
sub %rdi, %rdi
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
xor $41404, %r13
lea addresses_WT_ht+0x15935, %rsi
lea addresses_UC_ht+0x1bba5, %rdi
nop
nop
nop
sub $65078, %r14
mov $61, %rcx
rep movsq
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x10535, %rsi
lea addresses_A_ht+0x5c3d, %rdi
nop
sub %r14, %r14
mov $102, %rcx
rep movsw
nop
nop
nop
xor $52729, %r13
lea addresses_normal_ht+0x1677d, %rcx
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xd535, %rbx
nop
cmp $64167, %rdi
mov (%rbx), %r13
nop
nop
nop
and $19891, %r15
lea addresses_WC_ht+0x2435, %rsi
lea addresses_A_ht+0xa285, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $45, %rcx
rep movsl
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Faulty Load
mov $0x535, %r10
nop
nop
nop
add %r15, %r15
mov (%r10), %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'00': 380}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
