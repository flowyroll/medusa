.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rdx

// Store
lea addresses_PSE+0x129a9, %r14
nop
nop
nop
add %r10, %r10
movl $0x51525354, (%r14)
nop
inc %r12

// Store
lea addresses_normal+0x79b, %r9
nop
nop
nop
nop
cmp $29655, %rbx
movl $0x51525354, (%r9)
nop
nop
nop
nop
xor $16726, %r10

// Store
mov $0x11f9ba0000000f9b, %rdx
dec %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
inc %r9

// Store
mov $0x11f9ba0000000f9b, %r10
nop
nop
dec %r11
movl $0x51525354, (%r10)
nop
sub %r12, %r12

// Load
lea addresses_US+0x1af9b, %r11
and %rbx, %rbx
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
nop
sub $35850, %rdx

// Faulty Load
mov $0x11f9ba0000000f9b, %r9
clflush (%r9)
nop
nop
nop
add %r11, %r11
mov (%r9), %r12d
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rdx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'54': 33, '00': 3}
54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54
*/
