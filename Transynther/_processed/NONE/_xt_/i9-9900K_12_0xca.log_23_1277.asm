.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rdx
push %rsi

// Store
lea addresses_D+0x5c6e, %rsi
nop
xor %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_WC+0x11846, %rsi
nop
nop
cmp $48100, %r10
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
add $15278, %r10

// Store
lea addresses_WT+0x5546, %r15
nop
and %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r15)
nop
inc %r8

// Faulty Load
lea addresses_RW+0x1f246, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add %r8, %r8
movups (%r13), %xmm2
vpextrq $1, %xmm2, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rdx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'32': 23}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
