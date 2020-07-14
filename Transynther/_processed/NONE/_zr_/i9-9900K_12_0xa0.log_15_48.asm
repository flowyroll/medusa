.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_US+0x11250, %r10
nop
nop
nop
nop
cmp $37692, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_WC+0x9850, %r11
nop
dec %rsi
movups (%r11), %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
