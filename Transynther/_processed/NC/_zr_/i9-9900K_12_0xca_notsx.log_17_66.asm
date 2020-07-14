.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rbx
push %rcx
lea addresses_A_ht+0x183bd, %rbx
nop
nop
nop
sub %r11, %r11
mov (%rbx), %rcx
nop
nop
nop
nop
and $52363, %r14
pop %rcx
pop %rbx
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rbx

// Store
lea addresses_WC+0x129fd, %rbx
nop
nop
nop
nop
lfence
movb $0x51, (%rbx)
and $21100, %r10

// Faulty Load
mov $0x6bd07a00000003bd, %rbx
nop
nop
nop
and $38847, %rbp
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
