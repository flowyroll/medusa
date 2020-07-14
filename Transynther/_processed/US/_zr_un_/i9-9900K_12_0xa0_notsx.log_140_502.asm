.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rcx
push %rdx
lea addresses_A_ht+0x14333, %r15
add %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
nop
nop
add %rcx, %rcx
pop %rdx
pop %rcx
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbx

// Faulty Load
lea addresses_US+0xa2bf, %r8
nop
nop
nop
nop
and %r11, %r11
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'f6': 31, 'd1': 41, 'ff': 4, 'ea': 50, '00': 14}
d1 d1 d1 d1 d1 d1 d1 d1 00 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 ff ff 00 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 00 ff ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea ea 00 00 00 00 00 00 ff 00 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 00 00 f6 f6 00 f6 00 f6 f6 f6 f6 f6 f6 f6 f6
*/
