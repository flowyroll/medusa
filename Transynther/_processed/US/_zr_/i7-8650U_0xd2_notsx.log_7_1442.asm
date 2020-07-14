.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rbx
lea addresses_WT_ht+0x15b75, %rbp
clflush (%rbp)
cmp $15351, %r9
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x2e2a, %r13
nop
nop
sub %r9, %r9
mov (%r13), %r14w
nop
nop
nop
sub $38039, %r11
lea addresses_WC_ht+0x1ed50, %rbp
nop
nop
add %rbx, %rbx
mov (%rbp), %r8
add $38425, %r8
lea addresses_WT_ht+0xffca, %r13
cmp $9144, %r11
movw $0x6162, (%r13)
nop
nop
nop
cmp $61953, %r9
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0xf62a, %r12
nop
nop
nop
nop
dec %r15
mov (%r12), %r13w
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdi
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
