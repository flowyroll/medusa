.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x11d22, %rax
nop
nop
nop
add $36381, %rcx
mov (%rax), %r14w
nop
nop
add %rbx, %rbx

// Store
lea addresses_WC+0x15e8c, %r11
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
and %r12, %r12

// Store
lea addresses_WT+0x8ba4, %r14
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r14)
nop
nop
dec %rbx

// Store
lea addresses_normal+0x11874, %r14
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%r14)
nop
nop
nop
nop
add $39380, %r8

// REPMOV
lea addresses_WT+0x8ba4, %rsi
lea addresses_WT+0x8ba4, %rdi
nop
nop
nop
sub $6140, %r14
mov $116, %rcx
rep movsq
nop
nop
nop
cmp $25035, %r11

// Store
lea addresses_PSE+0xf7a4, %rax
dec %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
add %r8, %r8

// Store
lea addresses_RW+0x1bca4, %r8
xor %rcx, %rcx
movb $0x51, (%r8)
nop
nop
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_WT+0x8ba4, %rax
nop
nop
nop
nop
nop
cmp $13350, %rbx
mov (%rax), %edi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 67}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
