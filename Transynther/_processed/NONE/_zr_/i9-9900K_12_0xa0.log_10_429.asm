.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
lea addresses_D_ht+0x943, %r12
nop
nop
nop
and %r8, %r8
movl $0x61626364, (%r12)
nop
nop
dec %r8
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rdi
push %rsi

// Store
lea addresses_RW+0x13c06, %r11
nop
and %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r11)
nop
xor $38844, %r13

// Load
lea addresses_UC+0x12c06, %rdi
nop
nop
nop
nop
add %rsi, %rsi
mov (%rdi), %r13d
nop
nop
nop
nop
nop
add $36509, %r13

// Faulty Load
lea addresses_RW+0x13c06, %r13
sub $40660, %rsi
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
