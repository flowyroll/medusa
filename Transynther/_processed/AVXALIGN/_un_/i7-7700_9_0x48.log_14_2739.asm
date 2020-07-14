.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rdi

// Load
mov $0x1a, %rdi
nop
nop
xor %r14, %r14
mov (%rdi), %eax
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
mov $0x23477e00000002f8, %r10
nop
add $18969, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movaps %xmm3, (%r10)
xor %r15, %r15

// Store
lea addresses_A+0xff67, %rdi
and $57, %r10
movw $0x5152, (%rdi)
nop
nop
add $42953, %r10

// Store
lea addresses_D+0x26a3, %r11
nop
nop
add $43604, %rbx
movl $0x51525354, (%r11)
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_WC+0xe01a, %rbx
nop
nop
nop
nop
sub $55204, %r10
vmovntdqa (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'08': 11, '07': 1, '2b': 2}
08 08 08 07 08 08 08 08 08 08 08 2b 2b 08
*/
