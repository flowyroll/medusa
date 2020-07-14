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
push %rcx
push %rsi

// Store
lea addresses_WC+0x178c8, %r15
nop
nop
sub %r14, %r14
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_WC+0xa688, %rbx
nop
nop
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%rbx)
nop
nop
nop
nop
and $54289, %r15

// Store
lea addresses_WC+0xb9e8, %rsi
nop
nop
nop
add %r15, %r15
movb $0x51, (%rsi)
nop
nop
nop
sub %r8, %r8

// Load
lea addresses_WT+0xa6a2, %r15
nop
nop
nop
sub %rbp, %rbp
movups (%r15), %xmm2
vpextrq $0, %xmm2, %rcx
and $37562, %rcx

// Faulty Load
lea addresses_US+0x1d688, %r15
nop
nop
nop
nop
add $63493, %rbp
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'51': 25}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
