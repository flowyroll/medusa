.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_PSE+0x1d0fe, %r9
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovntdq %ymm1, (%r9)
nop
nop
nop
dec %r8

// Store
lea addresses_D+0x11212, %r12
nop
sub $11302, %r13
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor $58885, %r12

// Store
lea addresses_US+0x153a6, %rcx
nop
nop
nop
nop
nop
dec %r11
movw $0x5152, (%rcx)
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_normal+0x1e0be, %r11
inc %rsi
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'34': 7}
34 34 34 34 34 34 34
*/
