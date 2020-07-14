.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13dbf, %rsi
lea addresses_UC_ht+0x2c37, %rdi
nop
nop
nop
nop
sub $50307, %r14
mov $106, %rcx
rep movsw
sub $45452, %r13
lea addresses_A_ht+0x1d7c7, %rsi
lea addresses_WC_ht+0x708f, %rdi
nop
nop
nop
nop
and $18083, %rbp
mov $6, %rcx
rep movsq
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x12e3a, %rsi
lea addresses_normal_ht+0xe065, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $113, %rcx
rep movsw
nop
sub $51618, %r13
lea addresses_UC_ht+0x1bc97, %rsi
lea addresses_normal_ht+0x4297, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $48093, %r11
mov $81, %rcx
rep movsl
nop
nop
add $37740, %r11
lea addresses_WC_ht+0x1d5d7, %rsi
lea addresses_WC_ht+0x417, %rdi
clflush (%rdi)
nop
nop
nop
nop
mfence
mov $121, %rcx
rep movsw
nop
nop
nop
nop
cmp $51652, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Store
mov $0x7084b20000000d37, %rcx
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %rax
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x1a987, %rdx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%rdx)
nop
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_A+0x1dd97, %r12
nop
nop
add %r10, %r10
mov (%r12), %r9w
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
