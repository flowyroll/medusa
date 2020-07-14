.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1f7f, %rcx
nop
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x193c9, %rdi
clflush (%rdi)
nop
nop
xor %r13, %r13
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp $23523, %rdx
lea addresses_WC_ht+0x1a77f, %r11
cmp %r12, %r12
mov (%r11), %r15w
nop
nop
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x19b2f, %rdx
and %r12, %r12
movb $0x61, (%rdx)
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x65a7, %r15
nop
nop
nop
nop
nop
sub $26059, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r15)
nop
nop
nop
nop
add $43780, %r15
lea addresses_WC_ht+0x1af7f, %rdi
nop
dec %rdx
mov (%rdi), %ecx
nop
sub $49841, %r13
lea addresses_normal_ht+0x10b7f, %r13
nop
xor %r12, %r12
and $0xffffffffffffffc0, %r13
movntdqa (%r13), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x323f, %rdi
nop
nop
nop
nop
xor $42444, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rdi)
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x114fd, %rsi
lea addresses_A_ht+0x19437, %rdi
nop
nop
nop
inc %r12
mov $107, %rcx
rep movsw
nop
add $25999, %r13
lea addresses_UC_ht+0x1dc7f, %rdi
nop
xor $51599, %r12
movb $0x61, (%rdi)
xor $31556, %rcx
lea addresses_normal_ht+0x1d7f, %r12
nop
nop
nop
nop
nop
sub %r11, %r11
movw $0x6162, (%r12)
nop
nop
xor $29082, %rsi
lea addresses_A_ht+0x6087, %rsi
lea addresses_WC_ht+0xf88f, %rdi
mfence
mov $101, %rcx
rep movsl
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rdx

// Store
lea addresses_UC+0x16567, %rdx
and %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_US+0x1577f, %rbx
clflush (%rbx)
inc %r9
movaps (%rbx), %xmm4
vpextrq $0, %xmm4, %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
