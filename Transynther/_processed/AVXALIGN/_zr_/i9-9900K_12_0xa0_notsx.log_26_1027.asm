.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbx

// Store
lea addresses_RW+0x14bdb, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r9)
add %rax, %rax

// Store
mov $0x454, %r11
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_UC+0x1f794, %r11
nop
nop
nop
add $36977, %r15
movaps (%r11), %xmm2
vpextrq $0, %xmm2, %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 26}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
