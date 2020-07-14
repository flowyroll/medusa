.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rbp
push %rcx
push %rdi
lea addresses_WT_ht+0x1cc8, %rcx
nop
cmp %r14, %r14
movb $0x61, (%rcx)
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x5584, %rcx
xor %r14, %r14
movw $0x6162, (%rcx)
add $50193, %r11
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rsi

// Store
mov $0x12b230000000078, %rsi
xor %rbp, %rbp
movw $0x5152, (%rsi)
nop
nop
cmp $54003, %rbp

// Store
lea addresses_PSE+0xde08, %r13
nop
sub $53224, %rbx
movl $0x51525354, (%r13)
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_WC+0x1c2c8, %rbx
sub $4176, %r15
vmovntdqa (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
and $19433, %r12

// Store
lea addresses_UC+0xa788, %r12
nop
nop
nop
nop
cmp $1595, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
and $0xffffffffffffffc0, %r12
movntdq %xmm2, (%r12)
inc %r9

// Load
lea addresses_normal+0x5148, %r12
nop
xor $16663, %r9
movups (%r12), %xmm7
vpextrq $0, %xmm7, %rbx
nop
add $7100, %rsi

// Store
lea addresses_UC+0x4048, %r9
nop
nop
nop
nop
nop
inc %rsi
movw $0x5152, (%r9)
nop
cmp $32220, %r13

// Faulty Load
lea addresses_normal+0x3448, %rsi
cmp $42707, %r12
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 5}
34 34 34 34 34
*/
