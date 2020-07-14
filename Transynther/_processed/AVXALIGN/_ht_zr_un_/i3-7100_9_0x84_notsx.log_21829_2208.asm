.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1c96a, %rdx
nop
nop
cmp $49322, %rax
vmovups (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
lfence
lea addresses_UC_ht+0x1a6ea, %rbp
nop
nop
sub %rdi, %rdi
vmovups (%rbp), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
and %rdx, %rdx
lea addresses_WT_ht+0x16902, %rsi
lea addresses_D_ht+0x1d4ea, %rdi
nop
dec %r9
mov $17, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0x4cca, %rsi
lea addresses_UC_ht+0x19b6a, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $118, %rcx
rep movsq
inc %rax
lea addresses_normal_ht+0x136, %r9
clflush (%r9)
nop
nop
add %rdi, %rdi
mov (%r9), %bp
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x56a, %r15
nop
sub %rax, %rax
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1ed6a, %rsi
cmp $10304, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
cmp $8088, %rcx
lea addresses_normal_ht+0x3c52, %rsi
lea addresses_D_ht+0xf46a, %rdi
nop
xor $9452, %rax
mov $19, %rcx
rep movsl
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x3e6a, %rax
nop
nop
nop
add %rbp, %rbp
movups (%rax), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
add $10551, %rdi
lea addresses_WC_ht+0xf76a, %rsi
lea addresses_D_ht+0x516a, %rdi
clflush (%rdi)
nop
cmp %rax, %rax
mov $81, %rcx
rep movsw
and $50677, %rsi
lea addresses_normal_ht+0x496a, %rsi
lea addresses_WC_ht+0xf56a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r15, %r15
mov $77, %rcx
rep movsb
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x556a, %rax
nop
nop
xor $63936, %rbp
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rdx
nop
xor $38195, %rdx
lea addresses_D_ht+0xd26a, %rsi
lea addresses_WC_ht+0xc16a, %rdi
nop
nop
nop
nop
nop
sub $16846, %rdx
mov $17, %rcx
rep movsq
nop
nop
nop
dec %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Store
mov $0xd6a, %rdi
nop
nop
nop
sub %r13, %r13
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
mov $0xd6a, %rax
nop
nop
nop
nop
nop
cmp $45615, %r8
vmovntdqa (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'47': 27, 'aa': 2, '7d': 1, '48': 1, '46': 12566, '00': 8923, 'a9': 1, 'ff': 1, '45': 284, '06': 2, '08': 21}
46 46 00 46 46 00 46 45 00 00 46 46 00 46 46 46 00 46 46 46 46 00 00 00 46 46 46 00 46 46 00 46 46 45 00 46 46 00 46 46 00 46 46 00 46 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 46 00 46 46 00 00 46 46 46 46 46 46 00 46 46 00 46 45 46 00 00 46 00 00 00 00 00 46 46 46 46 46 46 00 46 00 00 46 00 46 00 00 00 00 00 00 46 46 00 00 00 46 46 46 46 00 46 00 00 46 00 46 46 46 45 46 00 45 00 00 46 45 46 00 46 46 00 46 46 46 00 46 08 46 00 46 46 46 00 46 00 46 46 00 46 46 00 46 46 00 00 46 46 46 00 46 00 00 46 00 00 46 45 00 00 46 00 00 46 46 00 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 00 00 00 00 46 46 46 00 00 00 46 46 46 00 00 00 46 46 00 00 46 00 46 46 00 46 00 46 00 46 46 46 46 46 46 46 46 00 46 00 46 00 46 00 46 46 46 46 46 46 46 46 00 46 46 00 00 00 46 00 46 00 00 00 00 46 00 46 00 46 00 46 00 00 00 46 00 00 46 46 46 46 46 00 00 46 46 00 00 46 46 00 46 00 00 46 00 46 00 46 00 46 46 46 46 46 46 00 46 00 46 46 00 00 46 46 00 00 46 46 46 00 00 46 46 00 46 46 46 00 00 00 00 00 00 46 46 00 46 00 46 00 46 00 46 46 46 00 46 00 46 00 46 46 46 00 46 46 46 46 46 46 46 00 46 46 45 46 46 46 00 46 46 46 00 46 00 46 00 00 00 46 46 46 46 46 46 46 46 46 46 00 46 00 00 46 46 00 46 46 46 00 00 46 00 00 46 46 00 46 46 00 46 00 46 00 00 46 00 00 46 46 46 00 00 46 46 46 00 46 46 46 46 46 45 00 00 46 00 00 00 47 46 00 45 00 46 46 46 00 46 46 46 46 00 46 46 46 46 00 46 46 00 46 46 00 46 46 46 46 46 46 46 00 46 00 46 46 46 46 00 46 00 00 00 46 00 46 46 00 46 00 00 46 00 00 00 00 00 46 46 00 00 46 00 00 00 00 46 46 46 46 00 46 46 46 00 00 00 00 46 46 46 00 46 46 46 00 00 46 46 00 00 00 00 45 00 00 00 46 00 46 46 00 00 46 00 46 00 46 00 46 46 46 00 46 46 00 00 46 46 00 00 46 00 46 46 00 46 46 46 00 00 46 00 00 00 46 46 46 00 46 00 00 46 46 46 00 00 46 00 00 46 00 00 46 46 46 46 46 00 46 45 00 46 46 46 00 00 46 46 46 46 00 46 46 46 46 46 46 00 46 46 00 00 00 46 00 45 46 00 46 46 00 00 46 46 46 00 00 46 46 00 46 46 46 00 46 00 46 00 00 46 46 46 46 46 00 00 00 00 46 46 00 46 00 46 46 00 00 00 46 46 00 46 46 46 46 00 00 00 46 46 46 00 46 00 00 46 46 00 46 00 00 46 46 00 46 46 46 00 00 46 46 00 00 00 46 46 46 46 46 46 46 00 46 46 00 45 46 46 00 46 46 46 46 00 46 45 46 00 46 46 46 00 00 00 46 46 00 00 46 00 46 46 00 00 00 46 46 00 46 00 00 46 00 46 00 00 46 47 46 46 00 46 00 00 46 00 46 00 00 46 00 46 46 00 00 46 46 00 46 46 46 00 46 46 00 00 46 46 00 00 46 46 46 00 46 00 00 00 46 00 00 00 00 00 00 46 46 00 46 00 00 00 46 00 46 00 00 46 46 46 46 46 46 46 00 00 46 46 00 46 46 46 00 46 46 00 46 46 46 00 00 46 00 00 00 46 46 46 00 46 46 00 00 00 00 00 00 00 46 46 46 46 00 00 46 46 00 00 00 00 46 46 46 46 00 00 46 00 46 00 00 00 46 00 46 00 00 00 00 46 46 46 46 45 00 00 46 46 00 46 46 00 00 46 46 00 46 00 46 46 46 46 46 46 00 46 46 45 46 46 46 46 46 46 46 46 00 00 46 46 45 46 46 46 46 00 46 00 46 00 46 46 46 00 00 00 45 46 46 00 00 46 00 46 00 46 46 46 00 00 46 00 46 46 46 46 00 00 46 00 46 46 46 46 00 00 46 46 00 46 46 46 00 46 46 00 00 46 00 46 46 46 00 46 46
*/
