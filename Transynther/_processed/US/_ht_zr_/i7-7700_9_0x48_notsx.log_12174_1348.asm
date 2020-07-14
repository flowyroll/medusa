.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x8763, %r14
nop
nop
nop
nop
cmp $9182, %r9
mov $0x6162636465666768, %r11
movq %r11, (%r14)
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x1c863, %rsi
lea addresses_WC_ht+0x284f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $14151, %r10
mov $74, %rcx
rep movsw
nop
nop
sub %r14, %r14
lea addresses_D_ht+0xcc63, %r11
nop
dec %r9
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x19473, %r14
nop
nop
nop
nop
nop
xor $21679, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %r14
movntdq %xmm6, (%r14)
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x16063, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%rdi)
sub %rax, %rax
lea addresses_WT_ht+0x1ad73, %rsi
nop
nop
sub %r14, %r14
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rcx
nop
and $38955, %r10
lea addresses_WT_ht+0xa98d, %r11
clflush (%r11)
cmp %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, (%r11)
nop
nop
nop
nop
add $63778, %r14
lea addresses_D_ht+0x1b663, %rsi
lea addresses_UC_ht+0x3043, %rdi
nop
nop
inc %r11
mov $102, %rcx
rep movsl
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x600f, %rsi
lea addresses_D_ht+0x7dfb, %rdi
nop
nop
nop
nop
inc %r14
mov $63, %rcx
rep movsb
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x1a10b, %rsi
lea addresses_D_ht+0xb863, %rdi
nop
dec %r11
mov $78, %rcx
rep movsw
nop
nop
nop
and $59086, %rcx
lea addresses_A_ht+0x13fe3, %r10
nop
nop
add $38668, %rsi
mov (%r10), %di
nop
nop
nop
nop
and $2748, %r9
lea addresses_UC_ht+0x1aecd, %rsi
lea addresses_WT_ht+0x1cf23, %rdi
nop
nop
sub %r11, %r11
mov $97, %rcx
rep movsb
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0xe063, %r10
nop
nop
nop
nop
and %rdi, %rdi
mov (%r10), %ecx
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1e31b, %rcx
nop
nop
nop
nop
xor %r11, %r11
mov (%rcx), %r10w
nop
nop
nop
nop
nop
cmp $63411, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x14863, %r13
clflush (%r13)
sub $27577, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r13)
nop
xor %rdi, %rdi

// Store
lea addresses_RW+0x1750b, %rsi
xor %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_US+0x16463, %rbp
clflush (%rbp)
add %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rbp)
and $60425, %rax

// REPMOV
mov $0x7ccc6b0000000063, %rsi
lea addresses_US+0x1a063, %rdi
nop
nop
nop
nop
nop
add $26295, %rbp
mov $20, %rcx
rep movsb
cmp %rbp, %rbp

// Faulty Load
lea addresses_US+0x1a063, %rcx
clflush (%rcx)
nop
nop
nop
nop
inc %rax
movb (%rcx), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_US'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_NC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 2}}
{'46': 231, '00': 11943}
46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00
*/
