.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12b56, %rsi
lea addresses_A_ht+0x351e, %rdi
nop
nop
nop
xor %r11, %r11
mov $13, %rcx
rep movsb
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x15ad6, %r9
xor $11490, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovntdq %ymm2, (%r9)
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_normal+0x595e, %rcx
nop
nop
cmp %rbp, %rbp
movaps (%rcx), %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
