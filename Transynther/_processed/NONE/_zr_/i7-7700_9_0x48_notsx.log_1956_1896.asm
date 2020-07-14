.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x4211, %r15
nop
nop
nop
xor $42038, %rbp
movb (%r15), %r14b
and %rdi, %rdi
lea addresses_normal_ht+0x1b211, %rsi
lea addresses_A_ht+0x8251, %rdi
nop
nop
nop
sub %r12, %r12
mov $62, %rcx
rep movsl
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x19411, %rsi
lea addresses_A_ht+0x1986f, %rdi
clflush (%rdi)
nop
xor $34856, %r12
mov $27, %rcx
rep movsl
sub $17300, %r14
lea addresses_normal_ht+0x1d011, %rdi
nop
nop
nop
nop
add $1899, %r12
movb (%rdi), %cl
nop
xor $10540, %rdi
lea addresses_D_ht+0xb811, %rcx
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x2689, %rsi
lea addresses_A_ht+0x11c11, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $113, %rcx
rep movsq
nop
nop
nop
xor $12601, %rbp
lea addresses_WC_ht+0xe439, %rsi
lea addresses_WC_ht+0x1d211, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $28, %rcx
rep movsq
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x18d11, %r12
nop
nop
nop
sub $51178, %r15
mov (%r12), %r9w
nop
add %rdi, %rdi
lea addresses_UC_ht+0x10411, %r9
inc %rcx
movw $0x6162, (%r9)
nop
nop
nop
and $46377, %r12
lea addresses_D_ht+0xefb3, %r9
nop
nop
nop
nop
nop
cmp $47258, %rbp
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
cmp %r15, %r15
lea addresses_A_ht+0xa111, %rsi
lea addresses_D_ht+0xf8c1, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $89, %rcx
rep movsb
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x716d, %rsi
sub %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xe7b1, %rsi
lea addresses_WT_ht+0x16411, %rdi
nop
nop
nop
nop
nop
and $30602, %rbp
mov $7, %rcx
rep movsw
nop
xor %r14, %r14
lea addresses_UC_ht+0x1c441, %rdi
nop
nop
add $4582, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdi)
xor $48468, %rdi
lea addresses_WC_ht+0x1d811, %r14
nop
nop
nop
nop
nop
add $11911, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xf691, %rsi
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
sub %r13, %r13

// Load
lea addresses_RW+0x5a51, %rax
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%rax), %r13d
nop
nop
inc %rsi

// Store
lea addresses_UC+0x5c75, %rsi
nop
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
lfence

// Load
lea addresses_PSE+0x8111, %rdx
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdx), %r13w
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_RW+0xc311, %r13
nop
nop
dec %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r13)
nop
nop
nop
sub $58824, %r10

// Faulty Load
lea addresses_A+0x7411, %r10
nop
nop
nop
and $53670, %rdi
mov (%r10), %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'00': 1956}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
