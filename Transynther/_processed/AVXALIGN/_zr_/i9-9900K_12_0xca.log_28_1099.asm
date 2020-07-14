.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rbp
push %rdi
lea addresses_A_ht+0x9b3c, %rdi
nop
nop
xor %r13, %r13
movl $0x61626364, (%rdi)
nop
dec %r9
pop %rdi
pop %rbp
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rdi
push %rsi

// Store
lea addresses_UC+0x1e1bc, %rdi
nop
nop
nop
sub $51333, %rsi
movl $0x51525354, (%rdi)
nop
nop
add $39876, %r10

// Store
lea addresses_normal+0x1e1b4, %r12
nop
add $39811, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovaps %ymm3, (%r12)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_A+0x11dbc, %rdi
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
inc %rdi

// Store
lea addresses_D+0x6b4c, %r10
nop
nop
nop
add $48074, %r12
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
and $59358, %r10

// Faulty Load
lea addresses_UC+0x1e1bc, %r12
nop
sub %r13, %r13
vmovntdqa (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'00': 28}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
