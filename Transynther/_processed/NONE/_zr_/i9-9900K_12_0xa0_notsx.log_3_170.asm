.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rcx
lea addresses_UC_ht+0x17cb0, %r15
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r15)
sub $852, %rcx
pop %rcx
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Store
mov $0x75b580000000098, %r11
clflush (%r11)
nop
nop
nop
nop
cmp $59900, %r8
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub $16499, %r11

// Store
lea addresses_A+0x14a62, %r11
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
nop
xor $63034, %rcx

// Faulty Load
lea addresses_A+0x3698, %r15
nop
nop
xor $43938, %rax
movb (%r15), %r10b
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'00': 3}
00 00 00
*/
