.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x3b7d, %rsi
lea addresses_A_ht+0xf95d, %rdi
nop
nop
nop
nop
add $43642, %rdx
mov $18, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xb6fd, %r11
nop
cmp %rbp, %rbp
mov (%r11), %r9
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0xe47d, %rax
nop
xor $15775, %rcx
movw $0x5152, (%rax)
add $13454, %rdx

// Store
lea addresses_A+0x18561, %r12
and %rax, %rax
movb $0x51, (%r12)
nop
nop
and $34384, %rcx

// Store
lea addresses_WC+0x146eb, %r12
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movntdq %xmm3, (%r12)
nop
nop
nop
nop
cmp $6219, %rax

// Store
lea addresses_normal+0xe47d, %r12
nop
nop
nop
nop
nop
add $53234, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r12)
nop
nop
and %rax, %rax

// Store
lea addresses_D+0x7f9d, %r10
nop
sub $51250, %rdx
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp $34759, %rbp

// Store
lea addresses_WT+0xc77d, %rax
clflush (%rax)
nop
nop
nop
nop
nop
sub $28816, %rdx
movw $0x5152, (%rax)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_US+0x1c87d, %r10
nop
nop
nop
nop
nop
add %r12, %r12
movw $0x5152, (%r10)
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_normal+0xe47d, %r12
clflush (%r12)
nop
nop
nop
add $41146, %r10
mov (%r12), %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 1}
58
*/
