.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8ee, %rsi
clflush (%rsi)
nop
nop
nop
xor $65348, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0xe8d6, %r15
clflush (%r15)
cmp $61, %r13
mov (%r15), %ecx
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x6ea6, %r8
nop
nop
nop
sub $43415, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
dec %rsi
lea addresses_WT_ht+0xb0d8, %r13
nop
nop
nop
inc %rdi
movb (%r13), %cl
and %r13, %r13
lea addresses_UC_ht+0x163a6, %rsi
lea addresses_normal_ht+0x1ea6, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $64766, %rbx
mov $15, %rcx
rep movsq
nop
mfence
lea addresses_WT_ht+0xda6, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $35632, %r8
movb (%r12), %cl
nop
nop
nop
nop
cmp $2114, %rbx
lea addresses_WT_ht+0x1c7a6, %rsi
lea addresses_normal_ht+0xc8ca, %rdi
nop
nop
nop
and $3865, %r8
mov $89, %rcx
rep movsq
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x7ab6, %rsi
nop
nop
nop
nop
nop
cmp $40116, %rdi
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x17c66, %rsi
lea addresses_A_ht+0x12626, %rdi
nop
nop
dec %r13
mov $31, %rcx
rep movsq
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x83a6, %r13
and $16711, %rsi
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
add $56154, %r13
lea addresses_A_ht+0x184a6, %rsi
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x2ca6, %r8
nop
nop
add $28227, %r12
mov (%r8), %rsi
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x17fa6, %rdi
nop
nop
nop
cmp $21829, %rbx
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
nop
sub $39001, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rdi
push %rsi

// Store
mov $0x2c876b0000000fa6, %rdi
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rdi)
nop
nop
xor $13932, %rbp

// Store
lea addresses_UC+0x15706, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add $5233, %r13
movb $0x51, (%r11)
and $19267, %r13

// Store
mov $0xfe6, %r13
nop
nop
nop
xor $51412, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r13)
nop
nop
inc %r12

// Load
lea addresses_WT+0x176a6, %rbp
nop
nop
sub %rdi, %rdi
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_D+0x15926, %r13
nop
nop
nop
dec %rsi
movb $0x51, (%r13)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
mov $0x2c876b0000000fa6, %r8
xor $16570, %rsi
movb (%r8), %r11b
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'f4': 1, 'aa': 1, 'f0': 1, 'fa': 1, '58': 9}
58 58 58 58 58 58 f4 58 58 f0 58 fa aa
*/
