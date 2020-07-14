.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xae15, %r14
nop
nop
nop
nop
nop
xor %r11, %r11
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rsi
add $6443, %rbx
lea addresses_WC_ht+0x1e837, %rsi
lea addresses_WC_ht+0x1b457, %rdi
nop
nop
nop
cmp $25567, %r13
mov $120, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x5537, %rsi
lea addresses_WC_ht+0x14e45, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $82, %rcx
rep movsl
nop
sub $9973, %rdi
lea addresses_D_ht+0x177a7, %r13
nop
nop
nop
dec %rdi
movb (%r13), %cl
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x12bc7, %rbx
nop
nop
nop
xor %rcx, %rcx
mov (%rbx), %r14
add $20327, %rsi
lea addresses_UC_ht+0x1d1a7, %r14
inc %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r14)
add $43589, %rdi
lea addresses_WT_ht+0x11c37, %rsi
lea addresses_D_ht+0x102f3, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $42636, %r15
mov $67, %rcx
rep movsb
cmp $48119, %r14
lea addresses_WT_ht+0x43f7, %rsi
lea addresses_WT_ht+0x199c7, %rdi
nop
nop
nop
add $54507, %r15
mov $114, %rcx
rep movsw
nop
nop
inc %rdi
lea addresses_A_ht+0xa8f7, %rsi
lea addresses_D_ht+0x6837, %rdi
sub $9250, %rbx
mov $88, %rcx
rep movsb
nop
nop
nop
nop
add $20424, %r11
lea addresses_D_ht+0x14947, %r14
nop
nop
nop
sub %rcx, %rcx
mov (%r14), %r11d
nop
dec %rsi
lea addresses_normal_ht+0x90ac, %rsi
lea addresses_WC_ht+0x1b937, %rdi
and $40970, %r11
mov $57, %rcx
rep movsb
nop
inc %r11
lea addresses_D_ht+0x19837, %r14
nop
nop
nop
inc %rcx
movw $0x6162, (%r14)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x11517, %rsi
lea addresses_A_ht+0x14f38, %rdi
nop
nop
and $56473, %r15
mov $87, %rcx
rep movsb
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x1e90f, %rsi
lea addresses_UC+0x837, %rdi
nop
and $50435, %r12
mov $18, %rcx
rep movsl
inc %rdi

// REPMOV
lea addresses_UC+0x1bd37, %rsi
lea addresses_UC+0x10837, %rdi
and $7261, %rbx
mov $79, %rcx
rep movsl
nop
nop
nop
nop
cmp %r11, %r11

// REPMOV
lea addresses_normal+0x37, %rsi
lea addresses_normal+0x37, %rdi
nop
nop
cmp %rbp, %rbp
mov $98, %rcx
rep movsw
add $35865, %r12

// REPMOV
lea addresses_PSE+0x5837, %rsi
lea addresses_WC+0x3f77, %rdi
nop
nop
cmp %r8, %r8
mov $31, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $2691, %r12

// Store
lea addresses_A+0x121eb, %r11
nop
nop
cmp $43757, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r11)
sub %r11, %r11

// Store
lea addresses_A+0x4f1b, %rcx
nop
cmp %rsi, %rsi
movl $0x51525354, (%rcx)

// Exception!!!
nop
mov (0), %r12
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0x11237, %rsi
nop
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
xor $64668, %r12

// Load
lea addresses_D+0x19837, %r12
nop
nop
nop
cmp %rdi, %rdi
mov (%r12), %bx
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_D+0x12ce7, %rdi
cmp $65123, %rbx
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
cmp %r8, %r8

// Store
lea addresses_WC+0x4637, %r11
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_UC+0x21f7, %rcx
nop
nop
nop
sub $37388, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_D+0x5037, %rcx
nop
nop
nop
nop
cmp $4090, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
nop
and $15281, %r12

// Store
lea addresses_normal+0x37, %r8
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r8)
xor $7470, %rbp

// Store
lea addresses_WT+0xc4d7, %r12
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
xor $15559, %rbp

// Faulty Load
lea addresses_normal+0x37, %rsi
nop
nop
xor $60337, %rdi
movb (%rsi), %r12b
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'35': 44, '51': 3825}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
