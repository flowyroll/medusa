.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rsi
lea addresses_WC_ht+0x19833, %r15
nop
sub %rbp, %rbp
movw $0x6162, (%r15)
nop
nop
nop
sub $19160, %rbx
lea addresses_A_ht+0x1b333, %rax
nop
nop
nop
nop
dec %rbp
movw $0x6162, (%rax)
nop
nop
and $28890, %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rsi

// Store
lea addresses_PSE+0x48b3, %r12
nop
nop
dec %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r12)
nop
nop
dec %r12

// Faulty Load
mov $0x33, %r12
nop
nop
nop
nop
sub $16410, %r10
mov (%r12), %r13d
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rsi
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 1}
00
*/
