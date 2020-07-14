.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
lea addresses_WT_ht+0x178e0, %r15
nop
nop
sub $65245, %r8
mov (%r15), %r9w
nop
xor %r13, %r13
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WC+0x12e40, %r15
clflush (%r15)
sub %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
nop
add $31472, %r15

// Store
lea addresses_WT+0x3160, %rbp
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rbp)
dec %r11

// Load
mov $0x3e0, %rsi
xor $26290, %r11
mov (%rsi), %rdx
nop
nop
sub $60766, %rbp

// Store
lea addresses_normal+0xd860, %rsi
nop
nop
nop
and $23660, %rbp
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
sub $26761, %r11

// Faulty Load
mov $0x7d667e0000000be0, %rbx
cmp $8158, %rsi
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 1}
00
*/
