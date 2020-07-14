.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
lea addresses_WC_ht+0x109b9, %r10
nop
nop
nop
nop
and $48778, %r13
movups (%r10), %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
nop
nop
add $3317, %r11
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdx

// Store
mov $0x1a9, %rbp
nop
nop
nop
dec %r8
movl $0x51525354, (%rbp)
sub $50086, %r13

// Store
lea addresses_WC+0x19439, %r9
nop
nop
nop
nop
nop
and $61491, %r12
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
add $39919, %r8

// Load
lea addresses_WT+0x2c65, %r12
nop
nop
nop
nop
nop
inc %r9
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
and %r9, %r9

// Store
mov $0x719, %rdx
nop
nop
inc %r12
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
and $43764, %rbp

// Store
lea addresses_WC+0x1150b, %r8
add %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_RW+0x13899, %rdx
and %r13, %r13
mov (%rdx), %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'32': 12}
32 32 32 32 32 32 32 32 32 32 32 32
*/
