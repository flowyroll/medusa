.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi

// Store
lea addresses_RW+0x1f0ef, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
dec %r15

// Store
mov $0x3f, %r12
and %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r12)
and $51277, %rcx

// Store
lea addresses_WC+0x1378f, %r14
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r14)
inc %r11

// Faulty Load
mov $0x3f, %rdi
nop
nop
nop
cmp %r14, %r14
movntdqa (%rdi), %xmm4
vpextrq $0, %xmm4, %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'58': 25}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
