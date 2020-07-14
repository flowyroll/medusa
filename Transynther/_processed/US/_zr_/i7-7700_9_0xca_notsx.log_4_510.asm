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
push %rbx
push %rdi

// Store
lea addresses_normal+0x5423, %r8
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r8)
nop
xor $32425, %rbp

// Store
lea addresses_D+0x1e993, %r11
nop
nop
sub %rbx, %rbx
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_normal+0x5aa3, %r11
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_US+0xd193, %rbx
nop
nop
inc %r8
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 4}
00 00 00 00
*/
