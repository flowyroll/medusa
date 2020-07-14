.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb4fc, %r13
nop
xor %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r13)
nop
xor $32272, %rsi
lea addresses_normal_ht+0xa4fc, %r11
nop
nop
nop
nop
nop
cmp $49991, %r14
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1079c, %r11
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x16efc, %r13
nop
nop
nop
cmp %r15, %r15
movb $0x61, (%r13)
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1de8, %rsi
lea addresses_A_ht+0x186fc, %rdi
nop
nop
nop
and %r9, %r9
mov $81, %rcx
rep movsl
nop
xor $56291, %rsi
lea addresses_WC_ht+0xdd6c, %r15
xor %rsi, %rsi
movb $0x61, (%r15)
nop
add %rdi, %rdi
lea addresses_UC_ht+0x895c, %rsi
lea addresses_D_ht+0x176fc, %rdi
nop
nop
nop
nop
nop
xor $2695, %r9
mov $101, %rcx
rep movsb
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi

// Load
lea addresses_PSE+0x1a084, %rdi
sub $19722, %rcx
movb (%rdi), %r12b
nop
and $17941, %r12

// Store
mov $0xd4c, %r10
nop
xor $41136, %rax
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp $58175, %r12

// Store
lea addresses_normal+0x14500, %r15
and $53851, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
add $56615, %rdi

// Store
lea addresses_normal+0x1524c, %r10
nop
nop
xor %rbp, %rbp
movb $0x51, (%r10)
nop
nop
add %rdi, %rdi

// Store
lea addresses_RW+0x15e94, %rbp
add %rcx, %rcx
movw $0x5152, (%rbp)
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_US+0x14724, %rcx
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovntdq %ymm7, (%rcx)
nop
cmp %rcx, %rcx

// Faulty Load
mov $0x326acd0000000cfc, %rax
nop
nop
nop
sub $16350, %r12
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_P', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'4a': 2, '45': 11374, '9b': 1, '00': 8202, '44': 2249, '99': 1}
45 00 00 45 44 45 45 45 00 00 00 45 44 45 00 00 44 45 45 45 45 45 00 45 00 00 45 45 00 45 45 00 00 45 00 45 45 45 00 00 45 45 45 45 45 45 44 45 45 44 00 00 00 00 45 00 00 44 45 00 45 45 45 45 00 00 44 45 45 45 45 45 45 44 45 45 45 00 00 45 00 45 00 00 45 00 00 00 45 00 45 00 00 00 00 00 45 00 45 00 44 45 45 45 45 00 00 45 45 00 45 45 00 00 00 00 45 00 00 00 45 45 00 45 00 44 45 45 00 44 45 45 00 45 00 00 45 45 45 44 45 00 00 00 45 45 45 45 00 45 45 45 44 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 44 45 45 45 45 45 45 00 00 44 45 00 45 00 00 45 45 44 45 45 00 00 45 00 45 45 45 45 44 00 45 00 45 45 00 45 45 45 44 45 00 00 00 45 45 45 45 45 00 44 45 00 45 00 45 45 00 44 45 45 00 44 00 45 00 45 45 45 00 45 45 45 00 00 45 45 00 00 00 45 44 45 45 45 00 00 45 00 44 45 45 45 44 45 00 00 00 45 44 45 00 45 45 45 45 00 45 45 00 45 45 45 44 00 00 00 44 45 45 45 00 00 45 00 44 45 45 45 44 00 45 00 00 45 45 00 00 45 45 00 00 00 45 00 00 45 45 44 45 45 00 45 45 45 45 00 00 00 00 44 45 00 45 00 00 45 00 00 45 44 45 45 45 00 00 44 45 45 00 00 45 45 45 45 45 45 45 45 45 45 44 00 45 45 45 00 45 00 00 45 44 00 00 45 44 00 45 45 00 44 45 45 45 44 00 45 00 00 00 00 44 00 45 44 45 00 45 44 45 00 45 45 45 00 00 00 00 00 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 00 00 00 00 45 44 00 00 45 00 45 45 45 44 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 00 44 00 45 45 44 00 45 45 44 45 45 45 00 45 00 00 45 45 00 00 00 45 00 00 44 45 00 00 00 00 45 45 45 45 00 45 45 00 44 45 00 00 45 45 00 00 44 45 45 45 00 00 44 45 45 00 44 45 45 45 44 45 45 45 00 45 00 00 00 00 00 45 00 00 00 00 45 45 00 00 45 00 00 45 00 00 45 45 00 00 44 00 00 44 00 45 45 00 45 45 45 00 45 00 00 45 45 45 44 45 00 45 45 45 00 45 45 00 00 00 45 45 45 00 00 45 45 00 00 45 00 45 00 00 45 00 00 45 45 45 44 00 00 00 45 44 45 00 44 45 45 45 44 45 00 45 44 45 00 45 45 44 45 00 45 45 45 45 45 44 45 45 00 00 45 00 44 45 45 44 45 45 00 44 45 45 45 00 00 00 00 44 00 45 45 00 00 00 45 00 00 44 45 45 00 44 00 45 45 00 45 00 00 45 45 00 44 45 45 45 45 45 45 45 00 45 00 00 44 45 45 00 44 45 00 00 00 45 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 45 00 00 44 00 45 00 44 00 45 45 45 00 45 45 45 00 00 00 45 45 45 45 00 00 00 45 45 00 00 45 45 44 45 45 45 44 45 00 44 45 45 45 44 00 45 45 45 00 45 00 00 00 00 45 44 00 45 00 00 00 45 00 00 00 45 45 45 44 00 00 00 44 00 45 45 44 45 45 00 44 00 00 45 00 45 45 45 00 45 00 45 00 00 00 00 45 45 45 00 00 00 45 45 00 45 45 45 00 00 45 45 45 45 00 00 45 45 00 45 45 44 45 45 45 44 45 45 00 45 45 00 00 45 45 45 00 45 45 45 00 45 45 00 45 45 00 45 45 44 45 00 45 45 45 00 00 44 00 45 00 00 00 00 45 44 45 45 00 44 00 45 45 45 00 45 45 44 45 45 45 44 45 45 00 00 00 00 45 45 45 45 45 00 44 45 45 00 45 00 00 00 00 45 45 45 45 44 00 45 00 00 00 45 45 00 00 00 00 45 00 00 45 45 00 00 45 45 00 00 45 45 44 45 00 45 00 45 00 00 45 00 00 45 00 00 00 45 45 45 45 45 00 45 44 45 45 45 00 45 45 45 00 45 00 00 45 45 45 45 00 45 00 45
*/
