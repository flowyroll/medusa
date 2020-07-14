.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rdi
lea addresses_normal_ht+0x23b5, %r15
nop
nop
lfence
movb (%r15), %r10b
nop
nop
nop
nop
nop
xor $56361, %rbp
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_normal+0x18bb1, %r15
nop
nop
nop
nop
sub $44471, %r8
movb $0x51, (%r15)
nop
nop
nop
nop
xor $40532, %r15

// Store
lea addresses_WT+0x47f1, %r8
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
xor $7867, %r8

// Store
mov $0x491, %rsi
clflush (%rsi)
nop
nop
dec %rdx
movb $0x51, (%rsi)
nop
nop
nop
add $64409, %rbx

// Store
lea addresses_A+0xce23, %r15
nop
nop
xor %rbx, %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
cmp $22325, %rsi

// Store
lea addresses_WC+0x152f1, %rsi
nop
cmp $31025, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
add %r14, %r14

// Store
lea addresses_PSE+0x67f1, %r14
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r14)
nop
nop
add %rsi, %rsi

// Store
lea addresses_A+0xaf91, %rbx
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rbx)
nop
dec %rdx

// Store
mov $0xbf1, %rdx
nop
nop
nop
add $40975, %r15
movw $0x5152, (%rdx)
nop
nop
nop
nop
xor $26976, %rbx

// Store
lea addresses_WT+0x474b, %r14
add %r15, %r15
movb $0x51, (%r14)
nop
nop
nop
nop
and $18872, %rsi

// Faulty Load
lea addresses_A+0x16ff1, %rbx
nop
nop
nop
nop
cmp $52166, %rbp
movb (%rbx), %dl
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
