.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rdx
push %rsi
lea addresses_normal_ht+0x1c6a, %r11
nop
xor %rdx, %rdx
movb (%r11), %r8b
nop
nop
nop
nop
xor $49219, %rsi
pop %rsi
pop %rdx
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rdi
push %rsi

// Load
lea addresses_RW+0x1266a, %rbx
clflush (%rbx)
nop
nop
nop
add %r11, %r11
movb (%rbx), %r15b
nop
nop
nop
nop
nop
cmp $15732, %r14

// Store
lea addresses_US+0x16e9a, %rax
clflush (%rax)
nop
nop
nop
nop
nop
and $9156, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
nop
sub $16667, %r14

// Faulty Load
lea addresses_RW+0x1266a, %rsi
nop
nop
nop
dec %rdi
mov (%rsi), %r11w
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'32': 257}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
