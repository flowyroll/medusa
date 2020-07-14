.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rsi
lea addresses_A_ht+0xfb93, %r10
nop
nop
inc %r15
mov (%r10), %r11
nop
nop
dec %rsi
pop %rsi
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x8388, %rax
nop
nop
nop
nop
and $59273, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rax)
nop
nop
inc %rdi

// Store
lea addresses_RW+0x8c8, %rdi
nop
and %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movntdq %xmm6, (%rdi)
nop
nop
nop
inc %rsi

// REPMOV
lea addresses_WC+0xfcc8, %rsi
lea addresses_D+0xe490, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $5, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r15

// Store
mov $0x261e420000000885, %rdi
and $39446, %rsi
movw $0x5152, (%rdi)
cmp %rax, %rax

// Faulty Load
lea addresses_UC+0x27c8, %r11
nop
nop
nop
inc %rsi
mov (%r11), %r15w
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'00': 2}
00 00
*/
