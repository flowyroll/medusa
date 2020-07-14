.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WT+0x1361c, %rbx
nop
nop
inc %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
nop
inc %rbx

// Faulty Load
mov $0x1ec, %r8
nop
nop
nop
nop
nop
inc %r15
vmovaps (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
