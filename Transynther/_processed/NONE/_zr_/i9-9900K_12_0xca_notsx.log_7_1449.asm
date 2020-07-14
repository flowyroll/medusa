.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xa0f4, %rax
nop
nop
add $42240, %r11
movb $0x51, (%rax)
nop
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_normal+0xf6e4, %rcx
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movntdq %xmm2, (%rcx)
nop
nop
nop
add %r14, %r14

// Load
lea addresses_WC+0x1df74, %r11
nop
nop
nop
add $40950, %r13
mov (%r11), %rsi
nop
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_A+0x1f774, %rcx
nop
nop
nop
nop
dec %rdx
mov (%rcx), %eax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 7}
00 00 00 00 00 00 00
*/
