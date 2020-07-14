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
lea addresses_UC_ht+0x16b2d, %r13
nop
nop
and %r14, %r14
movb (%r13), %r15b
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x1b70f, %rsi
lea addresses_D_ht+0x56d5, %rdi
nop
nop
nop
nop
nop
add $62338, %r9
mov $76, %rcx
rep movsw
nop
nop
nop
nop
and $31690, %r14
lea addresses_WC_ht+0x10387, %rcx
dec %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
and $21511, %rcx
lea addresses_WT_ht+0x1263f, %rsi
lea addresses_WC_ht+0x423f, %rdi
sub %r13, %r13
mov $126, %rcx
rep movsw
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xad3f, %rcx
nop
nop
nop
nop
nop
sub %rdi, %rdi
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x473f, %rsi
lea addresses_A_ht+0x15813, %rdi
and $22607, %r11
mov $23, %rcx
rep movsq
and $27937, %r11
lea addresses_D_ht+0x23f, %r14
add %rdi, %rdi
mov (%r14), %r15
xor %r15, %r15
lea addresses_A_ht+0xb03f, %r9
nop
nop
inc %r14
mov (%r9), %esi
nop
add $22436, %rsi
lea addresses_WC_ht+0x1669f, %r13
nop
nop
nop
nop
xor $23701, %r15
movb $0x61, (%r13)
and $26024, %rcx
lea addresses_UC_ht+0x8f2f, %r11
clflush (%r11)
nop
and $30905, %r9
movb $0x61, (%r11)
nop
sub $22790, %r13
lea addresses_normal_ht+0x1da93, %rsi
lea addresses_normal_ht+0x1e93f, %rdi
nop
nop
nop
sub %r11, %r11
mov $68, %rcx
rep movsb
nop
cmp %rdi, %rdi
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
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x16237, %r12
nop
nop
nop
nop
nop
add %r14, %r14
movw $0x5152, (%r12)
nop
nop
nop
nop
add $63224, %rax

// Store
lea addresses_D+0x9e3f, %r12
nop
nop
nop
add $48689, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
cmp %r12, %r12

// REPMOV
lea addresses_A+0x1373f, %rsi
lea addresses_WC+0x7e3f, %rdi
and $57833, %rbx
mov $98, %rcx
rep movsb
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_US+0x1de3f, %rsi
cmp $7345, %rbx
movb (%rsi), %r11b
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'c0': 17, '00': 49, '35': 35}
00 00 00 00 00 c0 c0 00 35 00 c0 00 00 00 00 00 35 35 c0 00 c0 00 00 35 00 00 00 c0 00 c0 35 00 c0 00 35 35 35 00 35 35 35 c0 00 35 00 00 c0 c0 00 35 00 00 35 35 00 00 35 00 c0 00 c0 00 00 00 00 35 35 00 00 35 00 c0 35 35 00 c0 35 00 00 00 35 00 00 00 00 35 c0 c0 00 35 35 35 35 35 35 35 35 35 35 35 00
*/
