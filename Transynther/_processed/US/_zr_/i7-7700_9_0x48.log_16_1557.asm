.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rbx
lea addresses_WC_ht+0xffe5, %rbp
nop
and $34518, %r14
movb (%rbp), %r11b
nop
nop
nop
nop
and $56375, %rax
lea addresses_normal_ht+0x1357d, %r9
and %r14, %r14
movw $0x6162, (%r9)
nop
nop
nop
and $4221, %r14
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rdx
push %rsi

// Store
lea addresses_D+0xbc1d, %r15
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovntdq %ymm1, (%r15)
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_US+0x5dc5, %rdx
nop
nop
nop
nop
add $22318, %r12
movb (%rdx), %r14b
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
