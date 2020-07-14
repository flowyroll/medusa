.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rdi
push %rdx
lea addresses_WC_ht+0x6a2e, %r15
nop
nop
nop
nop
nop
xor $61352, %rax
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
xor $37193, %r9
lea addresses_WT_ht+0x1ca2e, %rdx
nop
xor $19241, %r9
mov (%rdx), %r11d
cmp %r9, %r9
lea addresses_A_ht+0x1b52e, %rax
sub %r12, %r12
movb (%rax), %r15b
nop
and %rdx, %rdx
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xbad7, %rsi
lea addresses_normal+0x1b8e, %rdi
nop
xor $12124, %rax
mov $59, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_US+0x4098, %rbp
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
xor $40676, %rsi

// Store
lea addresses_WT+0x18e67, %r8
nop
nop
dec %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovaps %ymm0, (%r8)
sub %rdi, %rdi

// Store
lea addresses_WC+0x2a2e, %rsi
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rsi)
nop
xor %r11, %r11

// Faulty Load
mov $0x7e375b0000000e2e, %r11
sub $55510, %rcx
mov (%r11), %ebp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_RW', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'00': 73}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
