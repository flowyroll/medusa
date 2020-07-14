.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rdx
lea addresses_WC_ht+0x15bdc, %r8
clflush (%r8)
inc %rax
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x1ab9c, %r15
sub %rdx, %rdx
mov (%r15), %eax
nop
nop
nop
nop
nop
and %rax, %rax
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_RW+0xbf5c, %rdi
nop
nop
nop
nop
nop
sub $64370, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movntdq %xmm7, (%rdi)
nop
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_A+0xc35c, %rsi
nop
sub %rax, %rax
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
