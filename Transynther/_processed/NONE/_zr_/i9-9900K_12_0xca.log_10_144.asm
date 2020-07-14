.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi

// Load
lea addresses_WC+0x722, %rbp
sub $20850, %rcx
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_WC+0x722, %r12
nop
nop
nop
nop
nop
add %rbp, %rbp
movb (%r12), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
