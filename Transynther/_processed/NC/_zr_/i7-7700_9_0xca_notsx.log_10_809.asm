.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x18e5a, %rcx
nop
nop
add %r12, %r12
mov (%rcx), %edi
nop
sub %r9, %r9
lea addresses_A_ht+0xefea, %r13
and $8964, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
and $0xffffffffffffffc0, %r13
movntdq %xmm0, (%r13)
nop
add $534, %r12
lea addresses_UC_ht+0x6725, %rcx
nop
nop
nop
nop
and $40566, %rsi
mov (%rcx), %r12
sub $43106, %r8
lea addresses_WC_ht+0xb19a, %r13
nop
xor $6804, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
nop
add $22147, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rdx

// Load
lea addresses_PSE+0x171a, %rcx
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%rcx), %r11w
dec %r11

// Store
lea addresses_A+0x68fa, %r10
clflush (%r10)
nop
add %r11, %r11
movw $0x5152, (%r10)
nop
nop
nop
sub $57040, %r10

// Store
lea addresses_A+0x1ab72, %rdi
nop
nop
nop
nop
add $17826, %r8
movb $0x51, (%rdi)
nop
nop
nop
and %r8, %r8

// Store
lea addresses_WT+0xdf0a, %rdx
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovaps %ymm3, (%rdx)
nop
nop
nop
nop
nop
sub $40511, %r11

// Store
lea addresses_UC+0x892, %rdx
and %r12, %r12
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
sub $12020, %r10

// Load
lea addresses_UC+0x1cccb, %r10
nop
xor $16369, %r12
mov (%r10), %r8
nop
nop
nop
nop
xor $2942, %r10

// Store
lea addresses_D+0x1be1a, %r12
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
mov $0xb9a, %rcx
nop
add %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
and %r12, %r12

// Faulty Load
mov $0x195e47000000099a, %r11
nop
nop
nop
cmp %r12, %r12
mov (%r11), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': True, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
