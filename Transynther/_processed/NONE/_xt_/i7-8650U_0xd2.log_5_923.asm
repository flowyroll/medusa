.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x1e01, %rbx
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
mov $0x131, %rcx
cmp %r15, %r15
movw $0x5152, (%rcx)
nop
nop
nop
nop
and %rbp, %rbp

// Store
mov $0x6a6d630000000d51, %rsi
nop
sub $54280, %rbx
movl $0x51525354, (%rsi)
nop
add %rsi, %rsi

// Faulty Load
lea addresses_D+0x11941, %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%rsi), %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'36': 5}
36 36 36 36 36
*/
