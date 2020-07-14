.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rsi

// Store
mov $0xcdc, %r15
nop
nop
nop
nop
nop
add %r13, %r13
movw $0x5152, (%r15)
nop
sub %rsi, %rsi

// Load
lea addresses_US+0x1315c, %rbx
and %r13, %r13
movntdqa (%rbx), %xmm2
vpextrq $0, %xmm2, %rsi

// Exception!!!
nop
mov (0), %rsi
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_normal+0x8e9c, %rbx
inc %r14
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_UC+0x1869c, %rbx
nop
nop
nop
add %r13, %r13
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 29}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
