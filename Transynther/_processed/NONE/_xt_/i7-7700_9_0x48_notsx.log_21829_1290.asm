.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x6d8d, %r8
nop
nop
nop
nop
nop
inc %r15
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
nop
nop
nop
sub $54511, %r14
lea addresses_D_ht+0x31cd, %rsi
nop
sub $12398, %r11
movl $0x61626364, (%rsi)
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x9acd, %r12
nop
nop
nop
nop
sub $41564, %rax
movb $0x61, (%r12)
nop
nop
nop
nop
cmp $64854, %r15
lea addresses_normal_ht+0x197d0, %r14
xor %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, (%r14)
nop
xor %r8, %r8
lea addresses_WT_ht+0x190cd, %rax
add $12911, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1b66d, %rsi
lea addresses_A_ht+0x123cd, %rdi
nop
add %r8, %r8
mov $9, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x1cbcd, %rdi
nop
and $34905, %rcx
mov (%rdi), %ax
nop
nop
nop
add $40236, %r12
lea addresses_WC_ht+0xfe4d, %rsi
lea addresses_UC_ht+0xc0ad, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r12
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
and $19970, %rdi
lea addresses_normal_ht+0x44fd, %rsi
lea addresses_UC_ht+0x71f3, %rdi
nop
nop
cmp $13458, %r8
mov $79, %rcx
rep movsb
nop
nop
dec %r8
lea addresses_normal_ht+0x1050d, %rsi
lea addresses_UC_ht+0x18bef, %rdi
nop
nop
nop
nop
mfence
mov $68, %rcx
rep movsq
nop
nop
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x294d, %rdi
cmp %r12, %r12
mov (%rdi), %rbp
xor %r11, %r11

// Store
lea addresses_A+0x974d, %rbx
xor %rdi, %rdi
movb $0x51, (%rbx)
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_D+0x134c5, %rbp
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
nop
and $13429, %rsi

// Store
lea addresses_UC+0xabcd, %rbx
clflush (%rbx)
nop
nop
nop
dec %rsi
movb $0x51, (%rbx)
nop
nop
nop
nop
dec %r12

// REPMOV
lea addresses_RW+0x10e75, %rsi
lea addresses_WC+0xcd0d, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $77, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x43cd, %rbx
nop
nop
xor $20202, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
cmp %rdi, %rdi

// REPMOV
lea addresses_UC+0x47a5, %rsi
lea addresses_A+0xe37d, %rdi
nop
nop
nop
nop
nop
xor $26342, %r14
mov $42, %rcx
rep movsw
nop
nop
and $61498, %r12

// Faulty Load
lea addresses_WC+0x43cd, %r12
nop
xor %rsi, %rsi
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_RW'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
