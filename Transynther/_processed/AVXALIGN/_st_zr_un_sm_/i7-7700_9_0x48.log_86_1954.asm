.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x622, %rsi
lea addresses_WT_ht+0xafcc, %rdi
nop
nop
cmp %r8, %r8
mov $109, %rcx
rep movsw
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x2ce2, %rcx
nop
nop
sub $49884, %r14
movb $0x51, (%rcx)
sub %r10, %r10

// Faulty Load
lea addresses_PSE+0x2ce2, %rdi
add $48847, %r15
vmovntdqa (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'00': 40, '5f': 39, '51': 7}
5f 5f 5f 5f 5f 51 5f 00 5f 5f 51 5f 00 00 00 00 00 00 00 00 51 00 5f 00 5f 00 5f 00 5f 00 00 5f 00 00 51 00 00 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 00 00 00 5f 00 00 5f 00 00 5f 5f 00 5f 5f 00 5f 00 00 51 00 00 51 5f 5f 5f 00 00 5f 00 51 00 5f 00 5f 00
*/
