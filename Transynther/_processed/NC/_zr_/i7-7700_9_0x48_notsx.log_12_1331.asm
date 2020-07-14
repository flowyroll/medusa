.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x585, %r9
nop
nop
nop
nop
nop
dec %r15
movw $0x6162, (%r9)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x85f8, %r12
nop
nop
nop
nop
nop
inc %rbx
movb $0x61, (%r12)
cmp %rdi, %rdi
lea addresses_normal_ht+0xcd85, %r9
add $12554, %r15
mov (%r9), %r8
nop
nop
nop
nop
nop
sub $54521, %r8
lea addresses_D_ht+0x1758d, %rbx
nop
dec %r12
movb (%rbx), %r9b
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1de9b, %r14
nop
nop
sub $31409, %r8
movb $0x61, (%r14)
cmp $4786, %rdi
lea addresses_A_ht+0xd845, %rsi
lea addresses_A_ht+0x64d9, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $38158, %r15
mov $7, %rcx
rep movsw
nop
nop
nop
inc %r9
lea addresses_WC_ht+0xe0cd, %rsi
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x948d, %r8
nop
and %r15, %r15
movb $0x61, (%r8)
nop
nop
nop
nop
nop
sub $11020, %r8
lea addresses_WT_ht+0xd37d, %rsi
lea addresses_WT_ht+0x18b45, %rdi
nop
add $55633, %r14
mov $77, %rcx
rep movsw
sub $38970, %r9
lea addresses_UC_ht+0x12020, %r12
nop
nop
and $31785, %r9
movb $0x61, (%r12)
nop
and $35163, %rbx
lea addresses_WC_ht+0x18d85, %rsi
lea addresses_normal_ht+0x1b185, %rdi
nop
inc %r8
mov $118, %rcx
rep movsl
nop
nop
nop
nop
cmp $19666, %r12
lea addresses_A_ht+0x6185, %rcx
nop
nop
nop
nop
xor $59980, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x1cfe5, %r12
nop
nop
nop
nop
nop
add $24169, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r12)
nop
nop
nop
nop
nop
xor $44645, %rdi
lea addresses_WT_ht+0x12d85, %rsi
lea addresses_normal_ht+0x3785, %rdi
nop
add %rbx, %rbx
mov $83, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $60034, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
mov $0x7d84ff000000009d, %r9
clflush (%r9)
nop
nop
nop
nop
and $17911, %rbx
movw $0x5152, (%r9)
nop
nop
nop
nop
sub $58199, %r13

// Store
lea addresses_A+0x4629, %r12
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r12)
nop
nop
add $60723, %rbx

// Store
lea addresses_normal+0xa185, %rdx
nop
nop
nop
cmp $48130, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
nop
dec %r13

// Faulty Load
mov $0x6f592c0000000985, %r9
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r9), %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
