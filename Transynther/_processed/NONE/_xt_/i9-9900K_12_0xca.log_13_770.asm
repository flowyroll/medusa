.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x19bd, %rsi
nop
nop
add $31662, %rbp
movl $0x51525354, (%rsi)
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_US+0x79bd, %rdx
nop
nop
sub %r13, %r13
vmovups (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_normal+0x1bd, %rdx
cmp %rcx, %rcx
movb (%rdx), %r10b
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'34': 13}
34 34 34 34 34 34 34 34 34 34 34 34 34
*/
