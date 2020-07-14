.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19694, %rcx
nop
add %r8, %r8
mov (%rcx), %r13d
nop
nop
nop
xor $6420, %r11
lea addresses_normal_ht+0x60da, %rsi
lea addresses_WT_ht+0x1ce68, %rdi
nop
nop
nop
xor %r11, %r11
mov $66, %rcx
rep movsl
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x3eda, %r11
nop
nop
nop
nop
nop
xor $48415, %rax
movw $0x6162, (%r11)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0xe4be, %rsi
lea addresses_WT_ht+0x1dcda, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r10, %r10
mov $105, %rcx
rep movsb
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x13666, %r14
nop
nop
nop
nop
nop
cmp $33229, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
dec %r11

// Store
lea addresses_D+0xc5a, %r14
nop
nop
nop
nop
xor $7267, %rsi
movw $0x5152, (%r14)
nop
nop
and $8866, %rax

// REPMOV
lea addresses_PSE+0x140da, %rsi
lea addresses_WT+0x1d64a, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $46, %rcx
rep movsq
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_D+0x2ad2, %rcx
clflush (%rcx)
nop
sub $49261, %rax
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and $10144, %r14

// Load
lea addresses_US+0x2b02, %rbp
clflush (%rbp)
nop
nop
nop
add $9049, %rax
mov (%rbp), %rdi
nop
nop
nop
inc %r11

// Store
lea addresses_A+0x10b9a, %rax
nop
cmp $22259, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rax)
and $60176, %r12

// Faulty Load
lea addresses_PSE+0x140da, %r11
xor %rbp, %rbp
movntdqa (%r11), %xmm7
vpextrq $1, %xmm7, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 4, 'e4': 1, '33': 62, '44': 9, '49': 6}
33 33 33 33 33 00 33 33 33 33 44 33 44 33 33 33 33 33 33 33 33 33 33 33 44 33 33 33 49 33 49 33 33 33 33 44 44 33 33 33 33 33 33 33 33 33 33 49 33 e4 33 33 33 33 44 33 33 33 33 33 33 33 00 44 44 33 33 00 33 49 33 33 33 33 33 49 44 33 33 00 33 49
*/
