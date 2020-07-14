.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x378b, %rbx
nop
cmp $33664, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x14bac, %rsi
lea addresses_D_ht+0x1a0a9, %rdi
sub %r13, %r13
mov $42, %rcx
rep movsl
cmp $60165, %rbx
lea addresses_UC_ht+0x138f5, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x6162, (%r10)
nop
and $17585, %rsi
lea addresses_A_ht+0x16e39, %rdi
nop
inc %rbx
movw $0x6162, (%rdi)
nop
dec %r15
lea addresses_WT_ht+0x11205, %rbx
nop
nop
nop
nop
inc %rbp
mov (%rbx), %rcx
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x18f19, %rbp
nop
nop
nop
nop
dec %rsi
movb $0x61, (%rbp)
nop
nop
xor $63230, %rsi
lea addresses_WC_ht+0x18299, %r10
nop
nop
nop
nop
nop
and $2033, %r13
movw $0x6162, (%r10)
nop
sub %r15, %r15
lea addresses_WC_ht+0x9471, %r10
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x61, (%r10)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x8519, %r10
nop
nop
nop
xor %rbp, %rbp
movw $0x6162, (%r10)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x106d5, %r10
nop
nop
nop
dec %r13
movl $0x61626364, (%r10)
xor %rdi, %rdi
lea addresses_WT_ht+0x16ef9, %rdi
xor $15089, %rbp
movb $0x61, (%rdi)
nop
nop
nop
xor $34974, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_UC+0xfd19, %rcx
nop
nop
nop
nop
nop
add $40599, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movaps %xmm4, (%rcx)
nop
nop
dec %r9

// Store
lea addresses_A+0x18919, %r13
clflush (%r13)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
cmp $19634, %r9

// Store
mov $0xd45, %rax
nop
nop
nop
nop
add $34596, %rsi
movb $0x51, (%rax)
nop
xor %r9, %r9

// Store
lea addresses_D+0x1e459, %rsi
nop
nop
xor $37639, %rcx
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
inc %r15

// Faulty Load
lea addresses_D+0x15319, %r9
and %r13, %r13
movb (%r9), %cl
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_P', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'36': 17}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
