.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x19b85, %r11
nop
nop
add %r14, %r14
movl $0x61626364, (%r11)
sub $55662, %r11
lea addresses_A_ht+0x1c185, %r9
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
cmp $20994, %r9
lea addresses_normal_ht+0x3e85, %rsi
lea addresses_WT_ht+0x94d5, %rdi
nop
xor %r11, %r11
mov $26, %rcx
rep movsb
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x11805, %rdx
nop
nop
xor $16106, %r11
movb (%rdx), %r9b
nop
xor $60176, %rdx
lea addresses_D_ht+0xa185, %rbp
nop
nop
nop
nop
add $38660, %rdi
movb (%rbp), %r11b
nop
add %r14, %r14
lea addresses_UC_ht+0xe785, %r9
nop
nop
nop
nop
add $54516, %rdi
mov (%r9), %ecx
cmp %r11, %r11
lea addresses_D_ht+0x19985, %rsi
lea addresses_UC_ht+0x1ec85, %rdi
nop
inc %r9
mov $82, %rcx
rep movsl
nop
nop
dec %r9
lea addresses_UC_ht+0x1d585, %rsi
lea addresses_WC_ht+0xa185, %rdi
nop
nop
nop
nop
cmp $30657, %rdx
mov $0, %rcx
rep movsw
nop
nop
nop
nop
sub $26767, %rdx
lea addresses_UC_ht+0x128e3, %rcx
nop
cmp $60569, %rsi
movb (%rcx), %r9b
nop
nop
nop
nop
xor $21792, %r9
lea addresses_WC_ht+0x11d25, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
and $2506, %rdx
lea addresses_normal_ht+0x15e1b, %rsi
lea addresses_WC_ht+0x7b85, %rdi
xor $10873, %r14
mov $12, %rcx
rep movsw
cmp %rdx, %rdx
lea addresses_A_ht+0x179b1, %rsi
lea addresses_D_ht+0x1a85, %rdi
nop
nop
nop
xor $65047, %r11
mov $1, %rcx
rep movsl
nop
nop
nop
xor $36454, %r14
lea addresses_WC_ht+0xa385, %rsi
lea addresses_D_ht+0x6d05, %rdi
clflush (%rsi)
dec %rbp
mov $78, %rcx
rep movsq
nop
nop
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xa985, %rsi
lea addresses_WC+0x8fa1, %rdi
nop
add %rbx, %rbx
mov $72, %rcx
rep movsl
nop
nop
nop
and $48964, %rbx

// Load
lea addresses_D+0x1f97d, %rsi
nop
nop
cmp $24016, %rax
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
add $52501, %r11

// REPMOV
lea addresses_RW+0x1961b, %rsi
lea addresses_UC+0x1a1b5, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $89, %rcx
rep movsw
nop
inc %rbx

// Store
lea addresses_D+0x2265, %rsi
nop
sub $61534, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rsi)
nop
and %rdi, %rdi

// REPMOV
lea addresses_normal+0xc9cd, %rsi
lea addresses_WT+0x5575, %rdi
nop
nop
nop
xor $7070, %rbx
mov $62, %rcx
rep movsl
nop
cmp $45703, %rbx

// Faulty Load
lea addresses_RW+0xa985, %rsi
nop
nop
nop
nop
nop
sub $42712, %rax
movntdqa (%rsi), %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_RW'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'48': 4635, '46': 8519, '00': 2520, '47': 1, '44': 6148, '34': 4, '45': 2}
44 44 48 46 46 44 46 00 46 46 44 46 46 48 48 44 46 44 00 48 44 46 00 00 46 44 00 44 00 44 44 44 46 00 46 00 00 44 46 46 48 46 46 48 48 44 44 46 44 48 46 46 46 46 46 46 00 44 48 44 44 46 48 46 46 46 44 44 44 48 44 46 00 46 48 46 44 44 44 46 46 44 48 46 44 44 48 46 44 46 44 44 00 46 46 46 46 00 48 44 00 44 00 44 46 44 46 48 48 44 46 00 44 00 46 46 00 44 46 46 46 44 48 46 48 44 44 46 46 48 44 46 44 46 48 48 46 46 44 48 44 48 44 44 00 46 46 44 00 48 48 48 46 00 44 44 00 44 46 46 44 46 44 48 46 46 46 44 48 46 44 44 46 46 46 48 46 46 44 46 44 46 44 46 46 46 48 46 44 00 46 46 46 44 44 46 48 46 44 00 48 44 44 46 44 46 48 46 46 48 46 00 46 48 46 46 46 48 48 44 00 46 48 46 46 48 46 48 46 46 48 46 48 44 46 46 00 46 00 44 48 46 48 46 48 44 44 48 46 48 46 44 48 46 46 48 00 46 00 46 44 48 46 46 46 44 00 46 44 48 44 00 46 44 46 44 48 44 44 44 46 48 46 46 00 46 46 46 48 46 46 46 48 46 44 48 44 44 44 48 46 46 48 46 48 44 46 46 48 46 44 46 00 44 44 48 46 46 44 46 00 44 48 44 46 00 44 44 48 44 46 46 46 48 00 46 44 46 44 46 48 46 46 44 48 46 48 44 44 44 44 48 46 44 46 00 46 44 46 44 46 46 44 44 48 44 46 44 46 44 46 44 46 46 44 46 44 00 46 44 00 48 44 48 00 44 44 00 46 48 48 46 48 46 48 48 48 44 44 00 46 46 48 46 44 00 46 48 46 00 44 46 44 46 46 46 46 48 00 46 46 48 44 46 44 46 44 46 48 44 48 44 46 46 48 44 46 46 48 44 00 46 44 00 46 44 48 46 44 00 46 44 44 48 44 44 44 48 44 48 46 00 44 48 46 00 46 44 46 00 44 46 46 46 44 48 44 46 46 44 46 48 46 48 44 00 46 48 44 46 00 00 46 44 00 46 00 46 46 00 46 00 46 48 44 00 46 48 46 44 44 00 44 48 46 44 48 44 44 46 44 48 44 46 46 44 46 44 46 44 44 48 48 46 46 46 48 44 44 46 48 00 48 48 44 46 48 46 44 44 44 00 46 46 46 44 46 00 44 44 00 44 46 48 44 46 44 44 44 44 44 48 46 46 48 44 46 46 46 46 46 00 00 44 48 44 48 48 46 44 48 46 00 46 44 44 00 44 48 48 44 46 46 46 48 00 44 48 48 44 00 46 44 46 00 46 48 48 00 46 44 46 44 48 48 46 48 46 44 00 46 44 44 44 48 48 00 46 48 48 44 48 46 00 44 46 44 44 46 00 46 44 48 46 44 46 44 44 44 44 46 46 44 48 46 00 48 46 44 48 46 46 48 44 46 46 44 46 00 44 48 46 44 44 46 48 44 44 46 44 48 44 46 46 46 48 46 46 44 46 46 44 46 48 44 46 44 48 48 00 46 48 46 00 00 46 00 44 46 44 48 44 48 46 48 46 46 48 48 46 44 48 44 46 44 46 44 48 44 44 46 46 00 48 44 46 46 44 44 00 46 46 44 00 46 46 48 46 48 46 46 00 44 48 44 46 46 46 44 48 44 46 00 48 46 44 00 48 46 46 48 46 44 48 46 46 46 48 44 00 46 44 48 44 00 44 44 46 46 00 46 44 44 44 48 44 48 46 48 46 46 44 46 46 46 48 46 46 44 48 48 46 46 48 46 00 00 46 44 48 46 46 44 48 48 48 46 00 46 46 44 00 46 44 44 46 48 48 46 46 00 48 46 46 48 46 48 44 46 46 46 44 48 44 46 48 46 46 46 46 48 48 48 44 48 44 44 44 46 44 44 46 44 00 44 46 00 46 00 46 44 46 46 48 46 48 48 00 48 46 46 44 46 44 44 46 48 46 46 44 44 48 46 46 48 48 46 46 48 48 44 46 46 00 00 44 46 46 46 46 46 48 48 44 46 46 44 44 46 44 46 46 46 46 46 48 44 00 46 44 48 46 48 44 44 00 46 46 46 46 00 46 44 46 48 00 46 46 46 46 44 44 46 44 48 46 44 46 44 46 48 46 46 44 44 48 44 46 44 46 48 44 00 48 46 44 00 46 48 44
*/
