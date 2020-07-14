.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbp
push %rdx
push %rsi
lea addresses_WT_ht+0x1a767, %r15
nop
nop
nop
xor %rdx, %rdx
movups (%r15), %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0xb8e9, %rbp
nop
and %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm2
and $0xffffffffffffffc0, %rbp
movaps %xmm2, (%rbp)
sub $42059, %rbp
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbx
push %rdx

// Faulty Load
mov $0x2a33980000000229, %rbx
and %rax, %rax
vmovups (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'00': 3}
00 00 00
*/
