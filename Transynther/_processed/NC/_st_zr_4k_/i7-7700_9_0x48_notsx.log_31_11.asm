.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc2d5, %rdi
clflush (%rdi)
nop
nop
add %rbp, %rbp
mov (%rdi), %r12
nop
nop
cmp $47181, %r9
lea addresses_WT_ht+0x1b885, %rcx
nop
xor $45019, %r10
movb $0x61, (%rcx)
nop
nop
nop
xor $6510, %r10
lea addresses_WT_ht+0x12215, %rbp
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rbp)
nop
xor %r10, %r10
lea addresses_WT_ht+0x12955, %rcx
nop
nop
nop
mfence
mov $0x6162636465666768, %r12
movq %r12, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0x17985, %r15
cmp $61815, %r10
movb $0x61, (%r15)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0xce55, %r9
nop
inc %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r9)
nop
cmp %r12, %r12
lea addresses_UC_ht+0xe70d, %rbp
and $15097, %rcx
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
and $53798, %rdi
lea addresses_WT_ht+0xf995, %r9
nop
nop
nop
xor $25311, %r10
mov (%r9), %ebp
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x10055, %rsi
lea addresses_WC_ht+0xbfd5, %rdi
nop
nop
nop
xor %r9, %r9
mov $114, %rcx
rep movsq
sub $55564, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0xcf29, %r12
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovntdq %ymm3, (%r12)
nop
nop
add $12571, %rdi

// Store
lea addresses_US+0x14255, %rsi
clflush (%rsi)
nop
nop
dec %rax
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
sub $16548, %r14

// Store
mov $0xe61, %rdx
nop
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
cmp $21964, %rsi

// Faulty Load
mov $0x233ad40000000255, %rax
nop
xor %r8, %r8
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'52': 30, '00': 1}
52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
