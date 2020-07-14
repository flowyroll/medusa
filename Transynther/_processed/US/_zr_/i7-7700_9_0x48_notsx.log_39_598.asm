.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x4f89, %rax
nop
nop
nop
nop
sub %r10, %r10
movw $0x6162, (%rax)
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x18e11, %rsi
lea addresses_WC_ht+0x14ab1, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $20, %rcx
rep movsl
nop
sub $33380, %rcx
lea addresses_D_ht+0x1d7de, %rdi
nop
nop
nop
nop
nop
cmp $30097, %r13
mov (%rdi), %r10d
nop
nop
xor %r13, %r13
lea addresses_A_ht+0xc151, %rcx
nop
nop
nop
add $46536, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and $22929, %rsi
lea addresses_WT_ht+0xc111, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add $11410, %r13
mov (%rax), %r10w
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x1d7da, %rax
clflush (%rax)
nop
nop
nop
inc %rdi
mov (%rax), %esi
nop
nop
xor $57037, %rdi
lea addresses_A_ht+0x777, %rsi
sub %r10, %r10
movw $0x6162, (%rsi)
nop
and $60581, %r10
lea addresses_normal_ht+0x3a89, %rax
nop
and $36084, %r13
movw $0x6162, (%rax)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1a611, %rsi
lea addresses_normal_ht+0x1c311, %rdi
nop
nop
nop
inc %rax
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x13451, %rsi
lea addresses_WC_ht+0xd911, %rdi
nop
xor $28973, %r13
mov $3, %rcx
rep movsb
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_RW+0x1f491, %r12
clflush (%r12)
nop
nop
nop
cmp $52787, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r12)
dec %rbp

// Store
lea addresses_US+0xe11, %rdx
nop
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdx)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_UC+0xc1a1, %r12
nop
nop
nop
add $25912, %r9
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_US+0xe11, %r12
clflush (%r12)
nop
nop
and $65154, %r10
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'00': 39}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
