.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xcbde, %rsi
lea addresses_WC_ht+0x77ae, %rdi
clflush (%rsi)
nop
nop
cmp %r10, %r10
mov $76, %rcx
rep movsl
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0x33ce, %r12
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
xor $58206, %rbx

// Store
lea addresses_D+0x1829e, %rcx
and $51792, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovntdq %ymm7, (%rcx)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_D+0x1422e, %r13
nop
nop
cmp $9931, %rcx
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'36': 87}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
