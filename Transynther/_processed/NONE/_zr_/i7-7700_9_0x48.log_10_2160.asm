.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rdx
lea addresses_UC_ht+0x12019, %rdx
nop
add %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, (%rdx)
nop
nop
cmp %r10, %r10
pop %rdx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Faulty Load
lea addresses_WC+0x13659, %rbx
nop
nop
sub $24808, %rcx
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
