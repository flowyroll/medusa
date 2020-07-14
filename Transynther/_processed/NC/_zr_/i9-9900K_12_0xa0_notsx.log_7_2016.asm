.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rcx
lea addresses_WC_ht+0xa6c1, %rax
add %r15, %r15
movb (%rax), %r14b
nop
nop
sub $3214, %rcx
pop %rcx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp

// Load
lea addresses_D+0xe6c1, %rbp
nop
nop
nop
nop
xor %r11, %r11
movntdqa (%rbp), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
cmp $58835, %r11

// Load
lea addresses_normal+0x16cab, %r9
nop
inc %r15
mov (%r9), %rax
nop
nop
nop
and $30114, %r13

// Store
lea addresses_WC+0x19ac1, %r11
nop
nop
nop
add %r15, %r15
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
cmp $15188, %rax

// Faulty Load
mov $0x5856960000000ec1, %r13
nop
nop
nop
nop
sub %r14, %r14
vmovups (%r13), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'00': 7}
00 00 00 00 00 00 00
*/
