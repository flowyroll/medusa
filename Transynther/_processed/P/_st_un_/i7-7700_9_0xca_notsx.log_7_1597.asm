.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdx
lea addresses_A_ht+0x1729d, %rcx
nop
and $24866, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x5776, %r9
cmp %r11, %r11
movw $0x6162, (%r9)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x19776, %rax
nop
nop
nop
nop
sub $52624, %r14
movb (%rax), %r11b
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x5c76, %rax
clflush (%rax)
nop
nop
nop
nop
and %r9, %r9
movb (%rax), %r14b
xor %r10, %r10
lea addresses_WC_ht+0xde26, %r11
nop
nop
nop
add $48792, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r11)
add %r9, %r9
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rax

// Faulty Load
mov $0xf76, %r12
nop
nop
nop
nop
nop
sub $21119, %r13
movups (%r12), %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'e0': 2, 'de': 1, '3c': 4}
de e0 3c e0 3c 3c 3c
*/
