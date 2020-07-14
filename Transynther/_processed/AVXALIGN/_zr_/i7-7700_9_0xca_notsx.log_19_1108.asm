.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x197ed, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $28271, %rax
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
sub $44500, %r8
lea addresses_WC_ht+0x1a709, %rdx
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r12
movq %r12, (%rdx)
nop
nop
nop
nop
cmp $4311, %r8
lea addresses_WT_ht+0x1440d, %rsi
lea addresses_UC_ht+0xe529, %rdi
nop
add %r14, %r14
mov $3, %rcx
rep movsl
nop
nop
nop
and $36749, %r14
lea addresses_WC_ht+0xdc09, %r8
nop
add $33964, %rax
mov $0x6162636465666768, %r14
movq %r14, (%r8)
xor $28042, %rcx
lea addresses_UC_ht+0xe089, %r12
xor $36547, %rsi
mov (%r12), %r8d
nop
sub $38101, %r12
lea addresses_D_ht+0xec89, %rsi
lea addresses_UC_ht+0x286b, %rdi
nop
add $4952, %rax
mov $116, %rcx
rep movsq
nop
inc %rax
lea addresses_D_ht+0x15e09, %rsi
lea addresses_normal_ht+0xf1c9, %rdi
clflush (%rsi)
nop
add %r12, %r12
mov $76, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x12c79, %rsi
lea addresses_UC_ht+0xbe09, %rdi
nop
nop
nop
nop
xor $20277, %rax
mov $102, %rcx
rep movsl
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0xa539, %rdx
nop
cmp %r8, %r8
movl $0x61626364, (%rdx)
nop
nop
nop
and $50470, %r8
lea addresses_normal_ht+0xf047, %r14
nop
nop
nop
dec %rcx
mov (%r14), %si
cmp $24347, %rax
lea addresses_WT_ht+0x18c09, %rsi
lea addresses_WC_ht+0x2441, %rdi
dec %rdx
mov $111, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $9718, %r14
lea addresses_WC_ht+0x1ee09, %rsi
lea addresses_UC_ht+0x1323, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $88, %rcx
rep movsq
nop
sub %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_A+0x5a49, %rax
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovntdq %ymm4, (%rax)
nop
nop
nop
cmp $6922, %rcx

// Store
lea addresses_D+0x15009, %rsi
cmp $27942, %r8
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
inc %rsi

// Faulty Load
lea addresses_A+0x16e09, %rcx
nop
nop
nop
nop
and %r13, %r13
movb (%rcx), %r8b
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
