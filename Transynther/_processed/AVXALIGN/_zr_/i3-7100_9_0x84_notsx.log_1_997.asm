.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdx
lea addresses_A_ht+0xe707, %r14
nop
nop
nop
xor $42812, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r14)
inc %rdx
lea addresses_normal_ht+0x6487, %r15
nop
nop
nop
xor %r14, %r14
mov (%r15), %bx
nop
nop
nop
nop
nop
cmp $1882, %r14
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rsi

// Load
lea addresses_normal+0x9f07, %rsi
nop
add $1622, %r11
movb (%rsi), %al
nop
lfence

// Store
lea addresses_WC+0x13a07, %r14
nop
nop
sub $54622, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovaps %ymm6, (%r14)
nop
nop
nop
xor %r15, %r15

// Faulty Load
mov $0x1ae2db0000000707, %r13
nop
nop
nop
nop
and $33607, %r15
mov (%r13), %r11w
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
