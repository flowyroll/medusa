.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rdi
lea addresses_WC_ht+0x1d8f2, %r14
nop
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
nop
and $21597, %rdi
pop %rdi
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_WT+0xc6c2, %r10
nop
nop
nop
nop
nop
xor $40891, %rsi
movw $0x5152, (%r10)
nop
nop
add $60922, %rsi

// Load
lea addresses_WC+0x12e22, %r11
nop
xor $15766, %rdx
movups (%r11), %xmm4
vpextrq $1, %xmm4, %r8
inc %r8

// Load
lea addresses_normal+0x186f2, %r13
clflush (%r13)
nop
nop
nop
xor %rdx, %rdx
mov (%r13), %si
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_UC+0x105a2, %r9
nop
nop
nop
sub $31482, %r11
movl $0x51525354, (%r9)
nop
xor %r9, %r9

// Store
mov $0x795bad0000000872, %rsi
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_WT+0x12b32, %r11
nop
nop
nop
nop
nop
sub %r9, %r9
movb $0x51, (%r11)
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x12eea, %r13
clflush (%r13)
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%r13)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_UC+0x2af2, %rdx
nop
nop
nop
nop
nop
add $49056, %r10
mov (%rdx), %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'00': 1}
00
*/
