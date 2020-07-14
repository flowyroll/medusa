.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x8bf9, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rdx
nop
dec %r14
lea addresses_UC_ht+0xa7d2, %r14
clflush (%r14)
nop
nop
sub %rdx, %rdx
movb $0x61, (%r14)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0xae39, %rsi
lea addresses_UC_ht+0x1e501, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r8, %r8
mov $38, %rcx
rep movsq
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x21f9, %rdx
nop
inc %rdi
mov (%rdx), %r13
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x4b8d, %rsi
nop
nop
nop
cmp $40531, %rdi
movl $0x61626364, (%rsi)
cmp $21864, %rcx
lea addresses_normal_ht+0x14879, %rdx
clflush (%rdx)
nop
nop
add $43000, %rcx
mov (%rdx), %r13d
nop
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0x4739, %rax
nop
cmp %r13, %r13
mov (%rax), %rdx
nop
nop
nop
nop
add $24911, %rdx
lea addresses_A_ht+0x12d39, %rsi
lea addresses_normal_ht+0x8539, %rdi
clflush (%rsi)
nop
nop
nop
inc %r14
mov $125, %rcx
rep movsb
nop
nop
nop
sub $27072, %rsi
lea addresses_WC_ht+0x1af19, %r14
nop
nop
nop
nop
nop
sub $28842, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r14
movntdq %xmm3, (%r14)
nop
nop
and $20218, %rax
lea addresses_UC_ht+0x1ab9, %rdi
and %rdx, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0xa839, %r8
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r8)
nop
add $65456, %rcx
lea addresses_WC_ht+0xe939, %rdi
nop
sub %r8, %r8
mov (%rdi), %cx
nop
nop
nop
nop
xor $14971, %r8
lea addresses_UC_ht+0xbfe9, %rcx
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rcx)
nop
and $31378, %rdi
lea addresses_WC_ht+0x8c99, %rdx
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
nop
nop
sub $57677, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rdi

// Store
mov $0x3ce7740000000811, %r10
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
and %r15, %r15

// Store
mov $0x439, %r14
nop
xor $50789, %rbx
movw $0x5152, (%r14)
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_D+0x1539, %rbp
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%rbp), %r10w
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'36': 20}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
