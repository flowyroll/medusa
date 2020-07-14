.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rdi
push %rsi
lea addresses_normal_ht+0xb300, %r10
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
nop
nop
and $35493, %rsi
lea addresses_WC_ht+0x9d40, %r14
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
add $22931, %r11
lea addresses_A_ht+0x1a1a0, %rdi
nop
nop
nop
nop
xor $14666, %r8
mov (%rdi), %r11d
xor %r14, %r14
lea addresses_WT_ht+0x11480, %r11
nop
xor $16162, %r8
movb $0x61, (%r11)
inc %r10
pop %rsi
pop %rdi
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rsi

// Store
mov $0x799a6300000000e0, %r9
nop
nop
nop
dec %r10
movb $0x51, (%r9)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_A+0x10800, %r11
sub %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movntdq %xmm7, (%r11)
nop
nop
nop
nop
xor $6249, %r14

// Faulty Load
lea addresses_RW+0x19c00, %rbx
nop
nop
nop
and $39794, %rsi
vmovups (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'32': 7}
32 32 32 32 32 32 32
*/
