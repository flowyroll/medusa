.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xd6eb, %r11
clflush (%r11)
nop
nop
xor %r13, %r13
mov (%r11), %dx
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0x886b, %rsi
nop
add $32706, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
sub $24501, %r13
lea addresses_UC_ht+0xeeb, %rsi
lea addresses_WT_ht+0xaaeb, %rdi
nop
nop
xor %r13, %r13
mov $23, %rcx
rep movsl
nop
and $723, %r15
lea addresses_WC_ht+0x2b1b, %rsi
nop
nop
nop
xor %r15, %r15
movb $0x61, (%rsi)
nop
cmp $9061, %rdi
lea addresses_normal_ht+0x12051, %rsi
lea addresses_WC_ht+0x1050b, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $95, %rcx
rep movsw
nop
nop
add %r13, %r13
lea addresses_A_ht+0xabd1, %rsi
lea addresses_D_ht+0x89eb, %rdi
nop
nop
nop
nop
add $10268, %rbp
mov $112, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x1253b, %rsi
lea addresses_WT_ht+0x9aeb, %rdi
nop
nop
nop
xor %r11, %r11
mov $13, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $26423, %r15
lea addresses_A_ht+0x72eb, %r11
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r15
movq %r15, (%r11)
nop
nop
nop
nop
add $19180, %r11
lea addresses_WT_ht+0x1aaeb, %r11
nop
nop
nop
and $52262, %rdx
movl $0x61626364, (%r11)
nop
nop
nop
nop
cmp $46249, %rdx
lea addresses_WT_ht+0xa3eb, %r11
nop
nop
nop
nop
add %rsi, %rsi
movb (%r11), %r15b
nop
nop
nop
nop
nop
add $30497, %rsi
lea addresses_UC_ht+0x1686b, %rsi
lea addresses_D_ht+0xb001, %rdi
nop
nop
nop
nop
xor $34262, %rdx
mov $33, %rcx
rep movsq
sub %r15, %r15
lea addresses_UC_ht+0x1478b, %rdi
nop
nop
xor $11239, %r11
movw $0x6162, (%rdi)
add $65076, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x133ab, %rsi
lea addresses_WT+0xe887, %rdi
nop
nop
nop
and %r9, %r9
mov $112, %rcx
rep movsw
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_A+0x1e2eb, %r9
nop
nop
nop
nop
and %r12, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
sub $41396, %rbx

// Store
lea addresses_D+0x12eb, %rcx
clflush (%rcx)
nop
dec %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
dec %r9

// Store
lea addresses_RW+0x106eb, %rbx
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
sub $14943, %r9

// Store
lea addresses_UC+0x17ceb, %r9
cmp %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
nop
nop
nop
cmp $31097, %rcx

// Faulty Load
lea addresses_A+0x1e2eb, %r9
clflush (%r9)
nop
inc %r12
vmovaps (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'58': 20929, '00': 900}
58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58
*/
