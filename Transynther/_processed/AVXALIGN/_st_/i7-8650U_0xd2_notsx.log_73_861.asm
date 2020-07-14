.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
lea addresses_WC_ht+0x1c4e4, %r15
add $22615, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
nop
and $26058, %r8
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x817a, %rdi
nop
nop
xor %r11, %r11
movw $0x5152, (%rdi)
nop
and %r9, %r9

// Store
lea addresses_US+0x3f24, %r9
nop
nop
nop
nop
sub $19633, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
cmp $58466, %r14

// Store
mov $0x8f4, %r9
nop
nop
sub $50404, %r14
movb $0x51, (%r9)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_WC+0x1ab0a, %rdi
nop
add $29827, %r11
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
and %rdi, %rdi

// Store
mov $0xa1a, %r10
clflush (%r10)
xor %r9, %r9
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
cmp $13486, %r14

// Faulty Load
lea addresses_WT+0xbf7a, %r9
and $60014, %r10
mov (%r9), %r14d
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'39': 73}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
