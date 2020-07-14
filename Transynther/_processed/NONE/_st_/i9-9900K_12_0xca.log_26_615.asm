.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rsi

// Load
lea addresses_A+0x1bd33, %rsi
clflush (%rsi)
and $4861, %r10
mov (%rsi), %ebp
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0x13133, %rsi
nop
nop
nop
dec %r8
movl $0x51525354, (%rsi)
nop
nop
nop
nop
xor $29615, %r8

// Store
lea addresses_US+0x15ab, %r8
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r8)
nop
nop
xor $15405, %r8

// Load
lea addresses_WT+0x15133, %r11
nop
inc %rcx
mov (%r11), %r13w
nop
nop
nop
xor $36468, %rcx

// Store
lea addresses_normal+0xe3b3, %r8
clflush (%r8)
sub %r13, %r13
movl $0x51525354, (%r8)
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_D+0x54ab, %r13
and %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
and %rbp, %rbp

// Store
lea addresses_US+0x18933, %r13
nop
nop
dec %r8
movb $0x51, (%r13)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_WT+0x15133, %r13
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r13), %r11d
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'54': 26}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
