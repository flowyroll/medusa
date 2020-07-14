.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_A+0x14556, %r10
nop
nop
xor $57691, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r10)
nop
nop
nop
nop
nop
sub $35792, %rdi

// Store
mov $0x2917700000000756, %rsi
add %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_A+0x1a556, %r11
nop
nop
nop
nop
sub $22998, %r10
mov (%r11), %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 8}
58 58 58 58 58 58 58 58
*/
