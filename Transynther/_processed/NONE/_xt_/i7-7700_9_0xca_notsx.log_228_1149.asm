.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14914, %rbp
nop
nop
nop
nop
nop
inc %r10
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
nop
nop
sub $20581, %rsi
lea addresses_WC_ht+0x3924, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
xor $20043, %r12
lea addresses_normal_ht+0x4d0c, %rsi
lea addresses_D_ht+0x510c, %rdi
add %r10, %r10
mov $9, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x17a2c, %rsi
nop
inc %r15
mov (%rsi), %rdi
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x65ec, %rsi
lea addresses_normal_ht+0x1ce8c, %rdi
nop
nop
nop
nop
add $2915, %r10
mov $31, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rsi

// Store
mov $0x2f0c2400000002dc, %r11
cmp $6746, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_A+0x9a08, %r10
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r10)
nop
and $5059, %r14

// Faulty Load
lea addresses_D+0x1cd0c, %r11
nop
nop
nop
nop
nop
and $13419, %r14
mov (%r11), %r8w
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'36': 228}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
