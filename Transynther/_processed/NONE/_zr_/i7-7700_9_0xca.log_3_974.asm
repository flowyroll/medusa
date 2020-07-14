.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rdx
lea addresses_A_ht+0x11a04, %r15
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r15), %r13d
nop
dec %r11
lea addresses_normal_ht+0x1ed84, %r15
nop
nop
nop
nop
nop
xor %r8, %r8
movb (%r15), %r11b
nop
nop
dec %r13
pop %rdx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0xc1b4, %rcx
xor %r13, %r13
movb $0x51, (%rcx)
nop
nop
nop
nop
inc %rcx

// Load
lea addresses_WT+0x1da04, %rbp
nop
nop
sub $61964, %rdx
mov (%rbp), %r12
nop
nop
nop
nop
nop
and $47596, %rdx

// Store
lea addresses_A+0x8d08, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub $30031, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
add $48210, %r13

// Faulty Load
lea addresses_WT+0x1ea04, %rcx
add $36687, %rdx
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 3}
00 00 00
*/
