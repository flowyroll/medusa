.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rbx

// Load
mov $0xad6, %r11
clflush (%r11)
nop
nop
nop
nop
add %r12, %r12
mov (%r11), %bp
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_D+0x13996, %r12
clflush (%r12)
nop
nop
nop
nop
xor $31076, %r10
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
nop
xor $27605, %r12

// Store
lea addresses_WT+0x73d6, %r8
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovaps %ymm0, (%r8)
nop
and $37363, %r12

// Store
lea addresses_normal+0x1e456, %r14
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%r14)
nop
nop
inc %r8

// Faulty Load
lea addresses_US+0x18056, %r14
nop
dec %r10
mov (%r14), %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 30}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
