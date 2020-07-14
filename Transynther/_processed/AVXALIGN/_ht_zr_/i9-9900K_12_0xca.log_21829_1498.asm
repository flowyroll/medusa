.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5693, %r10
nop
inc %rax
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
sub $25228, %rax
lea addresses_A_ht+0x1659, %rsi
lea addresses_D_ht+0x1b859, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $31, %rcx
rep movsw
nop
nop
add $36702, %rdi
lea addresses_D_ht+0x18459, %rax
nop
nop
nop
nop
nop
cmp $3012, %rcx
movb $0x61, (%rax)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1df59, %r13
nop
dec %rsi
movw $0x6162, (%r13)
nop
nop
nop
nop
and $59953, %rax
lea addresses_D_ht+0x1372, %rsi
nop
nop
nop
and $14002, %rax
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
and $60788, %rbx
lea addresses_D_ht+0xa959, %rsi
lea addresses_normal_ht+0x4259, %rdi
inc %r15
mov $34, %rcx
rep movsq
nop
dec %r10
lea addresses_UC_ht+0x19859, %rsi
lea addresses_WT_ht+0x11859, %rdi
clflush (%rsi)
xor %rbx, %rbx
mov $80, %rcx
rep movsb
add $59749, %rax
lea addresses_normal_ht+0xd459, %r15
nop
sub $15639, %rsi
vmovups (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
xor $16929, %rax
lea addresses_WC_ht+0x1677d, %rsi
lea addresses_WT_ht+0xef41, %rdi
clflush (%rsi)
nop
nop
xor %r15, %r15
mov $11, %rcx
rep movsw
nop
nop
xor $1753, %r10
lea addresses_WC_ht+0x15c59, %rsi
lea addresses_WT_ht+0x1c819, %rdi
nop
nop
nop
nop
sub $43260, %r13
mov $123, %rcx
rep movsl
xor %rax, %rax
lea addresses_WC_ht+0x1c859, %r15
nop
nop
cmp $14672, %rax
movw $0x6162, (%r15)
nop
nop
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x79ea8d0000000419, %rbp
nop
nop
nop
nop
nop
inc %rcx
movb $0x51, (%rbp)
nop
nop
nop
nop
inc %r14

// Store
lea addresses_WT+0x1459, %r15
nop
cmp $10611, %rdx
movl $0x51525354, (%r15)
nop
sub %rdi, %rdi

// Store
lea addresses_WC+0x459, %rdi
sub %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_UC+0x13c59, %rcx
nop
nop
nop
nop
nop
sub $46396, %rbx
movntdqa (%rcx), %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'44': 1189, '45': 67, '00': 15236, '46': 5337}
46 00 46 46 00 00 00 00 46 44 00 00 00 00 46 46 46 00 00 00 00 00 44 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 46 45 00 00 00 00 00 44 46 46 00 00 00 00 46 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 44 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 44 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 44 44 00 00 00 00 00 46 00 00 00 00 00 00 46 44 00 00 00 00 00 00 46 00 00 00 00 00 00 46 46 00 00 00 00 00 00 44 46 45 00 00 00 00 00 46 46 00 00 00 00 00 00 46 44 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 46 46 46 00 00 00 00 00 44 44 00 00 00 00 00 46 46 46 00 00 00 00 00 44 46 00 00 00 00 00 46 46 00 00 00 00 00 44 44 00 00 00 00 00 00 46 46 00 00 00 00 00 44 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 00 46 44 00 00 00 00 46 44 00 00 00 00 00 00 46 44 00 00 00 00 00 00 46 44 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 44 00 00 00 00 00 44 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 44 00 00 00 00 00 44 46 46 00 00 00 00 00 46 00 00 00 00 00 46 44 44 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 44 00 00 00 00 00 46 46 46 00 00 00 00 00 46 44 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 44 46 46 00 00 00 00 00 44 46 00 00 00 00 00 00 46 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 46 44 46 00 00 00 00 00 46 00 00 00 00 00 46 44 46 00 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 00 46 46 45 00 00 00 00 00 46 44 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 44 46 00 00 00 00 46 44 46 00 00 00 00 00 46 44 46 45 00 00 00 00 46 46 46 00 00 00 00 00 00 46 44 00 00 00 00 00 00 46 46 00 00 00 00 00 00 44 46 45 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 00 46 00 00 00 00 00 00 44 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 46 00 00 00 00 44 46 00 00 00 00 00 44 46 00 00 00 00 00 44 46 44 00 00 00 00 00 44 46 00 00 00 00 46 46 44 00 00 00 00 00 00 44 46 45 00 00 00 00 00 46 46 00 00 00 00 00 00 44 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 44 46 45 00 00 00 00 00 46 44 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 44 45 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 44 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 44 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 44 00 00 00 00 00 46 44 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 44 44 00 00 00 00 00 46 00 00 00 00 44 46 46 00 00 00 00 46 46 00 00 00 00 00 46 44 00 00 00 00 00 46 44 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 44 46 00 00 00 00 00 46 46 46 00 00 00 00 00
*/
