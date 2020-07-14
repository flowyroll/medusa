.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x4dd1, %rsi
lea addresses_UC_ht+0x2c71, %rdi
dec %r12
mov $96, %rcx
rep movsw
nop
xor %rsi, %rsi
lea addresses_A_ht+0xe82d, %rsi
lea addresses_normal_ht+0x7769, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rax, %rax
mov $99, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_A_ht+0x37f1, %rsi
nop
nop
and $19822, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
xor $3123, %r12
lea addresses_WT_ht+0xc4b1, %rsi
lea addresses_A_ht+0x144b1, %rdi
add $60762, %r13
mov $53, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x22b1, %rdi
nop
sub $8875, %rsi
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
add $7084, %r12
lea addresses_WC_ht+0x130ef, %r13
clflush (%r13)
nop
nop
nop
nop
add %rax, %rax
mov (%r13), %rsi
nop
dec %rbp
lea addresses_WC_ht+0x1d8b1, %rsi
nop
nop
nop
nop
inc %r13
movb $0x61, (%rsi)
nop
nop
nop
and $51521, %r13
lea addresses_A_ht+0x2e71, %rsi
lea addresses_WT_ht+0x8bb1, %rdi
nop
nop
add $27212, %r10
mov $15, %rcx
rep movsl
add $3700, %rsi
lea addresses_WT_ht+0x13acd, %rsi
lea addresses_normal_ht+0x110c9, %rdi
nop
nop
nop
nop
xor $4937, %rax
mov $60, %rcx
rep movsb
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x5cb5, %rsi
lea addresses_UC_ht+0xa259, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $55, %rcx
rep movsl
nop
dec %r10
lea addresses_A_ht+0x4335, %rsi
lea addresses_UC_ht+0xdbb1, %rdi
nop
nop
dec %r13
mov $24, %rcx
rep movsl
and $35432, %r10
lea addresses_D_ht+0x6507, %r12
add $35923, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %r12
vmovaps %ymm0, (%r12)
nop
nop
nop
add $44263, %rsi
lea addresses_UC_ht+0x58b1, %rsi
lea addresses_UC_ht+0x1bd31, %rdi
nop
nop
nop
dec %r13
mov $105, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x104b1, %rsi
lea addresses_normal_ht+0xf551, %rdi
nop
and $25328, %r10
mov $41, %rcx
rep movsq
xor $20741, %rcx
lea addresses_D_ht+0x2eb1, %rsi
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x1c8b1, %rdi
nop
nop
xor %rdx, %rdx
mov (%rdi), %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'00': 5}
00 00 00 00 00
*/
