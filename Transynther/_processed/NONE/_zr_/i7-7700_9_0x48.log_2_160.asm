.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x1560a, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x51, (%r14)
nop
nop
sub $10176, %rcx

// Store
lea addresses_US+0x19aaa, %r13
nop
nop
nop
nop
nop
cmp $6115, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r13)
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_WC+0xed0a, %rbp
nop
nop
nop
add %rcx, %rcx
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
