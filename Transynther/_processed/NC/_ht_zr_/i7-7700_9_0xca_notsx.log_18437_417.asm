.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1d57f, %rcx
nop
nop
cmp %rdx, %rdx
mov (%rcx), %eax
nop
nop
nop
nop
xor $19386, %r13
lea addresses_D_ht+0xda6d, %rsi
lea addresses_A_ht+0x16bcf, %rdi
nop
nop
nop
nop
nop
add $45326, %rax
mov $109, %rcx
rep movsb
nop
nop
nop
sub $32822, %rsi
lea addresses_normal_ht+0x1330d, %rsi
lea addresses_WT_ht+0x1b521, %rdi
nop
nop
sub %rdx, %rdx
mov $48, %rcx
rep movsb
nop
nop
inc %rcx
lea addresses_WC_ht+0x13e0d, %rsi
lea addresses_normal_ht+0x1d70d, %rdi
xor $8345, %rax
mov $42, %rcx
rep movsw
nop
nop
nop
and $32890, %r13
lea addresses_D_ht+0x280d, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x11f0d, %rdx
nop
nop
nop
nop
nop
sub $62651, %r13
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1900d, %rsi
lea addresses_UC_ht+0xf68f, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $28, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $16086, %rdx
lea addresses_D_ht+0x1e2ad, %r12
add $42485, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
and $0xffffffffffffffc0, %r12
movntdq %xmm0, (%r12)
nop
cmp $15745, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rcx
push %rsi

// Faulty Load
mov $0x2e97bd0000000b0d, %r13
nop
nop
nop
sub %rcx, %rcx
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rsi
pop %rcx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'00': 1842, '44': 14050, '48': 205, '46': 2340}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 00 48 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 48 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 46 44 44 44 44 44 46 00 44 46 00 44 44 44 44 00 44 44 46 46 44 44 48 44 44 44 44 44 44 00 46 44 44 44 44 44 00 44 44 44 44 44 44 46 44 44 46 00 44 44 00 44 44 00 46 00 44 44 46 44 44 48 44 44 44 44 44 44 44 00 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 44 00 44 44 00 00 00 44 46 44 44 46 44 44 44 44 44 46 00 44 44 46 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 00 44 46 44 44 44 44 44 44 44 44 46 44 00 44 46 46 44 44 00 44 44 44 44 44 44 44 44 44 46 44 44 46 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 48 44 44 00 44 44 44 44 48 46 44 44 44 44 46 48 44 44 44 44 44 46 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 46 46 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 00 00 44 44 44 48 00 44 44 44 44 44 00 44 44 44 44 44 44 44 46 44 44 46 44 44 44 46 46 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 00 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 46 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 00 44 44 46 00 44 44 46 44 00 44 44 46 00 44 44 46 44 44 44 44 46 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 00 44 46 44 44 44 44 44 44 44 44 46 44 44 46 00 44 44 44 00 44 44 44 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 00 44 46 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 46 46 46 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 00 44 46 44 00 00 44 44 44 44 46 44 44 44 44 44 44 44 44 00 46 44 44 44 44 44 44 46 46 46 44 44 44 44 00 44 46 00 44 44 44 44 44 44 46 44 44 44 44 44 00 44 44 44 44 44 44 44 48 44 44 44 44 44 00 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 00 44 44 46 44 44 44 00 46 44 44 46 44 46 44 46 44 44 46 44 44 00 44 46 46 44 46 00 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 00 44 46 46 44 46 44 44 44 44 44 44 00 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 00 46 44 44 44 44 44 44 44 00 44 44 44 44 46 00 46 44 44 44 44 00 00 00 44 44 44 44 44 44 44 46 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 46 44 46 00 44 00 44 46 44 00 44 00 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 00 00 44 46 44 44 44 44 00 44 44 44 46 44 44 44 44 46 44 00 44 46 46 44 44 00 44 44 44 46 00 44 46 46 44 44 46 44 44 44 44 44 44 44 44 00 44 46 44 00 44 46 44 00 44 44 44 44 44 44 46 44 44 44 00 44 44
*/
