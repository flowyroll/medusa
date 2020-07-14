.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rdi
lea addresses_D_ht+0x1d4f4, %r11
nop
nop
cmp $63582, %r12
movb $0x61, (%r11)
nop
nop
nop
sub $46456, %rax
pop %rdi
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rdi

// Faulty Load
mov $0xdb4, %r14
nop
nop
nop
nop
nop
xor $49177, %rax
vmovaps (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rdi
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'08': 5, '72': 8, '06': 1, '00': 1}
06 72 72 72 08 72 72 72 72 72 00 08 08 08 08
*/
