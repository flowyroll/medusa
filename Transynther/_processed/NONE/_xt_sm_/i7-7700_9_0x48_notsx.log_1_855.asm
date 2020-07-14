.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1f72, %r15
nop
nop
nop
nop
sub $48246, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r15)
and $28905, %r8
lea addresses_UC_ht+0x8392, %rsi
lea addresses_normal_ht+0x13f92, %rdi
sub %r11, %r11
mov $7, %rcx
rep movsw
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1b7d2, %r9
clflush (%r9)
nop
add %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r9)
xor $60989, %r9
lea addresses_UC_ht+0x1b92, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rdi)
xor %rdi, %rdi
lea addresses_WT_ht+0xa392, %rsi
lea addresses_normal_ht+0x1d792, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $2262, %r14
mov $121, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $45019, %r14
lea addresses_WC_ht+0xfe92, %r15
nop
xor %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r15)
and $18847, %r15
lea addresses_normal_ht+0x19af0, %r11
nop
nop
xor %r8, %r8
mov (%r11), %r9d
nop
and $52785, %r14
lea addresses_WT_ht+0x1e622, %r14
clflush (%r14)
nop
add %rdi, %rdi
movb (%r14), %r15b
mfence
lea addresses_normal_ht+0x78c2, %rsi
lea addresses_A_ht+0xfb92, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $73, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $6851, %r8
lea addresses_D_ht+0x6392, %r9
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%r9)
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1e342, %r11
nop
xor %rdi, %rdi
mov (%r11), %esi
and %r8, %r8
lea addresses_normal_ht+0x3b92, %rsi
lea addresses_A_ht+0xb92, %rdi
clflush (%rsi)
cmp %r15, %r15
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x3212, %rdi
nop
nop
nop
xor %r14, %r14
mov (%rdi), %r11d
xor $1395, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x792, %r15
nop
nop
add $22132, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovaps %ymm4, (%r15)
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_WT+0x12b92, %rbp
nop
add %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%rbp)
nop
nop
and $15600, %rax

// Store
lea addresses_RW+0x15ea2, %r15
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movntdq %xmm5, (%r15)
cmp %rcx, %rcx

// REPMOV
lea addresses_PSE+0x13862, %rsi
lea addresses_US+0x4732, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $121, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbp

// Load
lea addresses_WT+0x13e92, %rcx
xor $10052, %rdi
movb (%rcx), %r8b
nop
nop
nop
nop
nop
and %r13, %r13

// Load
lea addresses_D+0x1f892, %r13
clflush (%r13)
nop
nop
nop
and $13060, %rcx
mov (%r13), %rax
nop
nop
nop
inc %r14

// Store
lea addresses_D+0x1493a, %rbp
nop
nop
inc %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rbp)
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_WT+0x12b92, %rbp
inc %r8
mov (%rbp), %r13w
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_US'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_PSE'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'53': 1}
53
*/
