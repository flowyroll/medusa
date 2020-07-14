.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rdi
lea addresses_A_ht+0xa516, %r15
clflush (%r15)
nop
cmp $19557, %rbp
mov (%r15), %r13w
nop
nop
nop
nop
nop
and $27725, %rdi
pop %rdi
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rbx
push %rsi

// Store
mov $0x916, %rsi
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movntdq %xmm5, (%rsi)
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
mov $0x45f6db0000000716, %rbx
nop
nop
xor %rsi, %rsi
movb (%rbx), %r11b
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 92}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
