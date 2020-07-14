.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rdi
lea addresses_WC_ht+0x11a93, %r12
nop
nop
nop
nop
nop
sub %r10, %r10
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x71b3, %r14
nop
nop
nop
xor %rdi, %rdi
movw $0x6162, (%r14)
nop
cmp %r12, %r12
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rsi

// Load
lea addresses_RW+0xeeb3, %r13
nop
add %r15, %r15
movb (%r13), %r14b
nop
nop
nop
nop
add $23780, %r11

// Store
lea addresses_A+0x16433, %rbx
nop
nop
add $35130, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
and %r15, %r15

// Load
lea addresses_UC+0x19c33, %r11
nop
inc %r14
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_WT+0x5a33, %rbx
nop
nop
nop
sub $33333, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
nop
and $26270, %r13

// Store
lea addresses_US+0x8bb3, %r13
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
and %r15, %r15

// Store
lea addresses_A+0x18fb3, %rsi
and %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_UC+0x6c33, %r15
nop
add $59490, %rsi
mov (%r15), %bx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'00': 60}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
