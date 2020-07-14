.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rdi
push %rdx

// Store
lea addresses_WC+0x137d0, %rdx
nop
nop
nop
nop
nop
add $25243, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
cmp $20798, %r10

// Store
lea addresses_WC+0x2b1a, %r9
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
add $48998, %r9

// Load
lea addresses_WT+0x4e90, %r12
nop
inc %rdi
movups (%r12), %xmm3
vpextrq $1, %xmm3, %r9
inc %rdx

// Faulty Load
lea addresses_US+0x17fd0, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add %r13, %r13
movb (%r11), %r9b
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rdx
pop %rdi
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
