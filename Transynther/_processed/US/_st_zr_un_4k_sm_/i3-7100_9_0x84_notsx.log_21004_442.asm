.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xac8f, %r13
nop
nop
nop
nop
xor %r14, %r14
mov (%r13), %r10
nop
nop
nop
nop
add $10236, %r11
lea addresses_UC_ht+0x10db1, %rsi
clflush (%rsi)
nop
and $12930, %rax
movw $0x6162, (%rsi)
nop
nop
nop
add $61636, %rbp
lea addresses_D_ht+0x16b89, %rbp
nop
nop
nop
nop
nop
sub $68, %r11
mov (%rbp), %r13d
nop
and %rsi, %rsi
lea addresses_normal_ht+0x16ee9, %rax
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %rax
movntdq %xmm2, (%rax)
nop
nop
nop
sub $1608, %r11
lea addresses_WC_ht+0x3919, %rsi
lea addresses_WC_ht+0xf669, %rdi
nop
nop
nop
nop
nop
add $16285, %rbp
mov $8, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x83f9, %rsi
lea addresses_normal_ht+0x1c7c0, %rdi
nop
nop
nop
nop
and $14050, %r13
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $33682, %r13
lea addresses_WT_ht+0xb2e9, %r10
nop
sub %rsi, %rsi
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
cmp $4430, %r11
lea addresses_A_ht+0x4929, %rcx
nop
inc %r13
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
add $30675, %r11
lea addresses_D_ht+0xf6e9, %rsi
lea addresses_A_ht+0x18ee9, %rdi
nop
nop
inc %r10
mov $100, %rcx
rep movsb
nop
nop
nop
xor $25595, %rax
lea addresses_A_ht+0xaf11, %rdi
nop
nop
nop
nop
nop
and $11943, %rax
mov (%rdi), %r10d
nop
nop
nop
add $36293, %r11
lea addresses_A_ht+0x18eb9, %rcx
nop
nop
nop
xor $8332, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm5, (%rcx)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x12ae9, %r11
cmp %rdi, %rdi
movl $0x61626364, (%r11)
nop
add %rcx, %rcx
lea addresses_normal_ht+0x19ba9, %rdi
nop
nop
and %r13, %r13
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x5a69, %rsi
lea addresses_WC_ht+0x17fea, %rdi
clflush (%rdi)
nop
nop
nop
cmp $37688, %r11
mov $100, %rcx
rep movsw
nop
nop
nop
nop
xor $36462, %rdi
lea addresses_normal_ht+0x1ace9, %rbp
nop
nop
nop
sub $62711, %rdi
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_A+0x1e4e9, %r11
and $35651, %rdi
movl $0x51525354, (%r11)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_RW+0xdae9, %rsi
nop
nop
nop
inc %r8
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_WC+0xfae9, %rsi
nop
dec %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rsi)
sub %r11, %r11

// Store
lea addresses_WT+0x7ae9, %r11
nop
nop
xor $51626, %r14
movw $0x5152, (%r11)
nop
nop
nop
and $3039, %rbx

// Store
mov $0xa29, %r8
sub %rax, %rax
movl $0x51525354, (%r8)
nop
nop
nop
cmp $8033, %r11

// Store
mov $0x4f7fb200000008a9, %r8
inc %r14
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
and $18, %rax

// Store
lea addresses_US+0xd2e9, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
nop
xor %rsi, %rsi

// Store
lea addresses_US+0x17ae9, %rbx
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rbx)
inc %rdi

// Faulty Load
lea addresses_US+0x17ae9, %rbx
nop
dec %r11
movb (%rbx), %r14b
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 11, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2256, '58': 18491, '52': 256, '88': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 52 58 58 58 00 00 58 52 58 58 58 00 58 00 52 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 52 58 00 58 58 00 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 00 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 52 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 52 00 58 00 58 52 52 58 58 58 58 00 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 00 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 00 58 52 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 52 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58
*/
