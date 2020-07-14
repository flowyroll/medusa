.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x5409, %r9
nop
nop
inc %rdx
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r8
and $10517, %r9
lea addresses_WC_ht+0x2ea9, %rsi
lea addresses_WC_ht+0x18a09, %rdi
nop
nop
nop
add %rdx, %rdx
mov $36, %rcx
rep movsl
nop
nop
nop
nop
xor $23028, %rcx
lea addresses_A_ht+0x14409, %rsi
lea addresses_WC_ht+0x7409, %rdi
nop
sub $40900, %rax
mov $42, %rcx
rep movsl
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x15409, %rsi
lea addresses_WT_ht+0xce18, %rdi
sub %r13, %r13
mov $76, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x5565, %rdx
nop
sub %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
and $33218, %rdi

// Store
mov $0x34d5a40000000409, %r9
nop
nop
nop
nop
cmp $39257, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
nop
add %rdi, %rdi

// Store
mov $0x6cfa3f0000000809, %r15
nop
nop
nop
nop
nop
and $22514, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%r15)
nop
nop
nop
cmp $49851, %r9

// Store
mov $0x5cedb80000000889, %rdi
nop
nop
nop
xor $37992, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
nop
and $2026, %r15

// Load
mov $0x109, %rbx
dec %r9
mov (%rbx), %edx
nop
and %r15, %r15

// Store
lea addresses_US+0x9c09, %r15
nop
inc %r10
movl $0x51525354, (%r15)
nop
nop
and %rdi, %rdi

// Faulty Load
mov $0x34d5a40000000409, %rdx
clflush (%rdx)
nop
nop
nop
nop
and $38500, %r10
mov (%rdx), %ebx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'58': 13}
58 58 58 58 58 58 58 58 58 58 58 58 58
*/
