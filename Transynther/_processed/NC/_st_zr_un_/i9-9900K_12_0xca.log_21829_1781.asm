.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x387f, %r13
nop
nop
nop
add $29586, %r12
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
add %rdi, %rdi
lea addresses_UC_ht+0x77e3, %rdx
xor %r11, %r11
movb $0x61, (%rdx)
xor $43389, %r13
lea addresses_D_ht+0x1e58, %rdx
nop
nop
nop
nop
cmp %r11, %r11
movb (%rdx), %r13b
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rdi
push %rdx

// Store
lea addresses_US+0x1a32b, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
inc %rdi

// Faulty Load
mov $0x726a3e000000032b, %r15
xor %rdx, %rdx
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'00': 309, '58': 11654, '5f': 9866}
00 58 5f 58 5f 58 5f 5f 58 00 58 58 5f 58 58 5f 58 5f 58 58 58 5f 58 5f 58 58 58 58 5f 58 00 5f 58 58 5f 58 5f 5f 5f 5f 58 58 5f 58 5f 58 58 58 5f 58 58 58 5f 5f 58 5f 58 58 58 58 5f 58 5f 58 5f 5f 5f 5f 58 58 5f 5f 58 5f 58 5f 58 5f 58 58 58 5f 5f 5f 5f 58 58 5f 58 58 58 58 5f 58 5f 5f 58 58 5f 00 58 58 58 58 58 58 5f 00 58 5f 5f 58 5f 58 58 58 58 5f 5f 58 5f 58 5f 58 58 58 58 5f 5f 58 58 58 58 58 58 58 5f 58 58 58 58 5f 58 58 5f 5f 5f 58 58 5f 58 58 5f 58 58 5f 58 58 00 58 5f 5f 58 58 5f 58 5f 58 58 58 58 58 00 58 58 58 58 58 58 58 5f 58 58 58 58 58 5f 58 5f 58 58 5f 5f 5f 5f 58 58 58 58 5f 58 5f 5f 5f 58 5f 5f 58 5f 5f 58 58 5f 58 5f 58 5f 58 5f 58 5f 00 58 5f 5f 5f 5f 58 5f 58 5f 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 5f 5f 58 5f 5f 58 58 5f 5f 58 58 58 5f 5f 58 5f 5f 58 5f 5f 58 5f 5f 00 58 5f 58 5f 5f 5f 58 58 5f 58 58 58 58 5f 58 58 58 5f 5f 5f 58 58 58 5f 58 58 58 5f 5f 58 5f 58 5f 5f 58 5f 5f 58 58 5f 5f 58 58 58 58 5f 5f 58 58 5f 58 58 5f 5f 5f 58 58 58 5f 58 58 58 5f 5f 58 5f 5f 58 5f 58 5f 5f 58 5f 58 58 5f 58 58 58 58 5f 58 58 5f 58 58 58 58 58 58 58 00 58 58 58 5f 58 58 5f 58 5f 5f 58 5f 5f 58 58 58 5f 58 58 58 58 58 58 58 5f 58 5f 5f 58 5f 58 5f 5f 58 58 58 58 5f 58 5f 5f 58 58 58 5f 5f 5f 58 58 5f 58 58 58 5f 5f 58 5f 5f 58 5f 58 5f 5f 5f 5f 58 58 58 58 5f 58 5f 5f 5f 58 58 58 5f 58 5f 5f 58 58 58 5f 58 5f 00 5f 58 58 5f 58 58 58 5f 5f 58 58 5f 00 5f 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 5f 58 58 58 5f 5f 5f 5f 58 5f 00 5f 5f 58 5f 5f 58 58 58 5f 58 58 5f 5f 58 58 58 5f 5f 5f 58 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 5f 00 5f 5f 5f 58 58 58 5f 58 5f 58 5f 58 58 5f 5f 58 58 5f 5f 5f 58 58 58 58 5f 5f 5f 58 5f 58 58 5f 58 5f 58 5f 58 5f 58 58 58 5f 58 58 5f 5f 58 5f 58 5f 58 58 58 5f 58 58 5f 58 58 5f 58 5f 58 58 5f 5f 58 58 5f 5f 58 5f 5f 58 58 58 5f 58 58 58 58 5f 58 5f 5f 5f 5f 58 58 58 58 58 5f 5f 5f 58 58 58 5f 5f 58 58 5f 58 5f 5f 58 00 58 58 58 5f 58 58 5f 5f 5f 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 5f 5f 58 5f 5f 5f 5f 58 00 58 5f 5f 58 58 5f 58 58 58 58 5f 5f 58 58 5f 5f 58 58 5f 5f 5f 58 5f 5f 58 5f 5f 58 5f 5f 5f 58 58 58 58 5f 58 58 58 58 5f 58 58 58 58 58 58 58 5f 5f 5f 5f 58 58 58 58 5f 58 5f 58 5f 58 5f 58 5f 5f 5f 58 5f 58 58 58 5f 5f 58 58 58 58 58 5f 5f 5f 58 58 5f 5f 58 5f 5f 5f 5f 58 58 58 58 5f 5f 58 5f 5f 58 58 58 58 5f 58 58 58 58 5f 5f 5f 5f 5f 5f 5f 58 58 58 5f 5f 58 58 58 58 5f 5f 5f 58 5f 58 5f 5f 5f 5f 58 5f 58 58 5f 00 58 58 58 58 5f 5f 5f 58 58 5f 5f 5f 58 00 58 58 58 58 5f 5f 5f 5f 58 58 5f 58 5f 5f 58 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 58 58 5f 58 5f 5f 5f 5f 58 58 5f 58 58 5f 5f 58 5f 58 58 58 5f 58 58 5f 58 5f 5f 58 5f 58 58 5f 5f 58 58 5f 58 00 58 58 58 58 58 5f 58 58 58 58 5f 5f 58 5f 58 58 5f 58 58 5f 5f 5f 58 5f 58 58 58 58 58 58 58 5f 58 5f 58 58 58 5f 5f 58 5f 58 58 58 58 5f 58 5f 58 5f 58 58 58 5f 58 58 58 58 58 5f 5f 5f 5f 58 58 5f 58 5f 5f 58 58 5f 58 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 58 58 58 00 58 5f 5f 5f 58 5f 58 5f 58 5f 5f
*/
