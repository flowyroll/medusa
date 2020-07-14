.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdx
push %rsi

// Load
mov $0x450f1f00000001a5, %rax
nop
nop
cmp $24120, %r13
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_WC+0x7b26, %rdx
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
nop
cmp $41730, %rdx

// Store
mov $0x76a0190000000525, %rdx
nop
nop
nop
sub $54869, %r14
movl $0x51525354, (%rdx)
nop
add %rbp, %rbp

// Faulty Load
lea addresses_US+0x153a5, %r14
nop
nop
nop
nop
nop
xor $16655, %rsi
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
