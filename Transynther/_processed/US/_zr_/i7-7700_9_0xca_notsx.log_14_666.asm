.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdx
lea addresses_A_ht+0x1ac0b, %r9
nop
sub $17629, %rcx
mov (%r9), %rdx
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x1280b, %r9
nop
nop
nop
nop
nop
and $28278, %r10
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
nop
dec %rdx
lea addresses_normal_ht+0x500b, %r10
nop
nop
nop
nop
nop
sub %r13, %r13
movb $0x61, (%r10)
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0xb, %rbx
nop
nop
add $12612, %r13
mov (%rbx), %r9w
nop
nop
nop
nop
nop
and $22152, %r14
lea addresses_UC_ht+0x1dc6b, %r10
nop
nop
nop
add $34678, %rbx
movb $0x61, (%r10)
nop
nop
nop
nop
nop
sub %r9, %r9
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1f30b, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
sub $5332, %rdx

// Store
lea addresses_UC+0xd40b, %rbp
nop
nop
nop
add $3826, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rbp)
add $45025, %rdi

// Faulty Load
lea addresses_US+0x1d40b, %rsi
nop
nop
nop
and $31822, %rdx
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
