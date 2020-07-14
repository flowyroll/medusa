.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbp
push %rcx
push %rdx
lea addresses_UC_ht+0x97fa, %rcx
nop
dec %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
dec %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rsi

// Store
lea addresses_WC+0x1abdc, %r11
nop
nop
nop
nop
xor %r15, %r15
movw $0x5152, (%r11)
nop
nop
dec %r13

// Faulty Load
lea addresses_US+0x1bdc, %r15
nop
nop
nop
nop
add %r13, %r13
movb (%r15), %cl
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'52': 60}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
