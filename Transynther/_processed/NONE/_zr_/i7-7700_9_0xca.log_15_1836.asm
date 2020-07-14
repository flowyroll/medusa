.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbp
push %rdx
lea addresses_normal_ht+0x1727d, %r11
nop
nop
and $44337, %rbp
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
inc %r15
pop %rdx
pop %rbp
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx

// Faulty Load
lea addresses_A+0x1166, %r13
nop
nop
nop
dec %r14
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
