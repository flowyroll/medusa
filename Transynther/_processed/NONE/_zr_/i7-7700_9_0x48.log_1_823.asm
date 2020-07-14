.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rdx
lea addresses_A_ht+0xbd87, %rdx
nop
nop
nop
and $5195, %r13
movb (%rdx), %r10b
nop
add %r13, %r13
pop %rdx
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0x1aaff, %rax
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movaps %xmm6, (%rax)
xor %rdi, %rdi

// Store
lea addresses_A+0x14c07, %r9
add $57005, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovntdq %ymm6, (%r9)
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_A+0x16907, %r11
clflush (%r11)
nop
cmp $56546, %rdx
mov (%r11), %r9d
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'00': 1}
00
*/
