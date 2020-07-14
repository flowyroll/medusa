.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdx

// Load
lea addresses_normal+0x31a4, %rcx
nop
nop
nop
nop
nop
sub %r8, %r8
mov (%rcx), %rbp
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_PSE+0x5102, %r11
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r11)
nop
nop
inc %r15

// Store
mov $0x3171bc0000000174, %r11
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
add %rcx, %rcx

// Load
mov $0x7095620000000674, %r15
nop
nop
nop
add %r13, %r13
mov (%r15), %r8d
add %r13, %r13

// Store
lea addresses_normal+0x1c4b4, %rdx
nop
nop
nop
sub $37604, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rdx)
nop
nop
cmp %r8, %r8

// Store
lea addresses_PSE+0x155f4, %rdx
nop
nop
nop
nop
cmp $43738, %rcx
movw $0x5152, (%rdx)
nop
nop
nop
nop
inc %r15

// Faulty Load
mov $0x7095620000000674, %r11
and %rcx, %rcx
mov (%r11), %r15w
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
