.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x14df6, %rdi
nop
nop
nop
sub $36031, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_D+0x8a76, %r15
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
cmp %rdi, %rdi

// Load
mov $0x75d89e0000000536, %r14
nop
add %rsi, %rsi
mov (%r14), %rdx
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_A+0x3f6, %rsi
nop
nop
cmp %rdi, %rdi
mov (%rsi), %r14w
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 1}
00
*/
