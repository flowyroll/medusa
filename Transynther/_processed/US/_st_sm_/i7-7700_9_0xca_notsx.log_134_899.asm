.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf39b, %rsi
lea addresses_WT_ht+0x10f5b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r13
mov $118, %rcx
rep movsl
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x1c05b, %rsi
lea addresses_WC_ht+0x1d11b, %rdi
nop
xor %r13, %r13
mov $5, %rcx
rep movsl
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1005b, %r10
nop
and %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r10)
nop
nop
nop
xor $4618, %r11
lea addresses_A_ht+0x1815b, %rcx
sub %rax, %rax
mov (%rcx), %r11d
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x1af65, %rcx
nop
nop
dec %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x154cb, %rsi
lea addresses_normal_ht+0xd48, %rdi
clflush (%rsi)
xor $15959, %r9
mov $91, %rcx
rep movsq
nop
nop
sub $43020, %r11
lea addresses_D_ht+0x1455b, %r13
nop
nop
nop
nop
and $29541, %rax
mov (%r13), %r9d
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_PSE+0x475b, %rax
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%rax)
nop
add $52373, %r8

// Store
lea addresses_US+0x7f5b, %r12
clflush (%r12)
nop
nop
nop
nop
nop
cmp $3404, %rdi
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_US+0x7f5b, %rbx
nop
nop
add %rdi, %rdi
mov (%rbx), %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'52': 134}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
