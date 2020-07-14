.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rcx
lea addresses_A_ht+0xa4a5, %rcx
sub $4346, %r15
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
xor $19432, %r15
pop %rcx
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rdx

// Load
lea addresses_A+0xf065, %rbp
nop
nop
nop
nop
nop
xor $34625, %r9
movups (%rbp), %xmm0
vpextrq $0, %xmm0, %r11
nop
add $14608, %r10

// Store
lea addresses_US+0x1a885, %rdx
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
xor $54723, %r10

// Faulty Load
lea addresses_RW+0x72a5, %r9
nop
nop
cmp %rbx, %rbx
mov (%r9), %r11w
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'32': 24}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
