.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe4e9, %rsi
lea addresses_A_ht+0x1b0e9, %rdi
inc %r13
mov $117, %rcx
rep movsq
nop
nop
nop
add $50565, %r8
lea addresses_normal_ht+0x12ce9, %rsi
lea addresses_A_ht+0x17ea9, %rdi
nop
nop
nop
nop
xor $28449, %rbp
mov $12, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x99a1, %r12
xor %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r12)
nop
cmp $61530, %r12

// Store
mov $0x499e8200000000e9, %rcx
nop
nop
dec %rsi
movw $0x5152, (%rcx)
add %r12, %r12

// Load
lea addresses_D+0xa0e9, %r14
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r14), %r12
nop
nop
nop
nop
nop
and $17778, %r12

// Store
mov $0x3e99590000000329, %rsi
sub %r14, %r14
movl $0x51525354, (%rsi)
nop
and %rcx, %rcx

// Faulty Load
mov $0x499e8200000000e9, %rsi
nop
nop
sub $20383, %r13
movb (%rsi), %r12b
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'00': 2, '52': 1}
00 52 00
*/
