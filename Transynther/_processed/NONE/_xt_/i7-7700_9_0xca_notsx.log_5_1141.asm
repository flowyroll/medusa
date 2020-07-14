.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r9
push %rsi
lea addresses_UC_ht+0xa5b9, %r9
nop
nop
nop
nop
cmp %r10, %r10
mov (%r9), %r11
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x8049, %r12
nop
nop
lfence
movb (%r12), %r11b
nop
nop
nop
add $18565, %r12
lea addresses_normal_ht+0x1a5f1, %rsi
nop
nop
nop
inc %r15
mov (%rsi), %r10w
cmp $40883, %rsi
lea addresses_WC_ht+0x172a9, %r13
cmp %rsi, %rsi
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x1984ab00000008e9, %r8
nop
add $33361, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
and $4892, %r8

// Faulty Load
lea addresses_D+0x14f89, %rdi
nop
nop
nop
nop
nop
add $20361, %r15
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'36': 5}
36 36 36 36 36
*/
