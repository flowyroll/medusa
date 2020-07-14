.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1d48f, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%rdx)
and $8925, %rbx
lea addresses_WT_ht+0x53cf, %rsi
lea addresses_D_ht+0x1b07f, %rdi
nop
nop
xor %r10, %r10
mov $10, %rcx
rep movsq
nop
dec %rdx
lea addresses_D_ht+0x10e93, %rbx
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
add $27976, %rbx
lea addresses_D_ht+0x1c272, %rsi
nop
add $41698, %rcx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0xa967, %r14
clflush (%r14)
nop
nop
xor %rbx, %rbx
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x912f, %rdi
nop
nop
and $60846, %rbx
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp $5124, %rbx
lea addresses_normal_ht+0x1d21a, %rcx
sub %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rcx)
xor $55400, %rsi
lea addresses_UC_ht+0x1c62f, %rsi
lea addresses_D_ht+0x16937, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $79, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x16f2f, %rbx
nop
cmp %rsi, %rsi
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
nop
sub $50201, %r14
lea addresses_normal_ht+0xa72f, %r14
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%r14)
nop
cmp $50814, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rsi

// Load
lea addresses_normal+0x1fb8f, %rbx
nop
nop
nop
add $62307, %r14
mov (%rbx), %ax
nop
nop
nop
add %rax, %rax

// Store
mov $0x4e36e0000000062f, %r13
nop
nop
nop
nop
xor $62728, %rbx
movw $0x5152, (%r13)
nop
nop
nop
dec %r12

// Store
lea addresses_D+0xf337, %rsi
nop
xor %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
xor $28089, %r13

// Store
mov $0x36546000000054f, %rsi
dec %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovntdq %ymm0, (%rsi)
nop
nop
inc %r13

// Store
mov $0xe2f, %r12
nop
and $1796, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_WT+0x1802f, %r11
nop
nop
nop
nop
cmp $44640, %r12
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
add $45774, %rax

// Store
lea addresses_PSE+0x1f72f, %r11
xor %rax, %rax
movl $0x51525354, (%r11)
nop
add $27474, %r14

// Load
lea addresses_normal+0x7e2f, %rax
nop
nop
nop
and %r12, %r12
movb (%rax), %r13b
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_A+0x11e2f, %r11
dec %r12
movl $0x51525354, (%r11)
nop
add $18620, %r14

// Load
lea addresses_normal+0x985f, %rbx
and %rsi, %rsi
movb (%rbx), %al
nop
nop
and $61266, %r13

// Store
lea addresses_RW+0x108bf, %rbx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
mov $0x4e36e0000000062f, %rsi
add %r12, %r12
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal', 'congruent': 5}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'52': 3}
52 52 52
*/
