.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rdx
push %rsi
lea addresses_normal_ht+0x83a9, %r9
nop
nop
nop
nop
add %r8, %r8
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
nop
nop
add $44028, %rax
lea addresses_WC_ht+0x115a6, %rsi
sub %rdx, %rdx
movl $0x61626364, (%rsi)
nop
nop
cmp $13846, %r12
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1501e, %rcx
nop
nop
nop
add $53773, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
and $27973, %r9

// REPMOV
lea addresses_WT+0x141a6, %rsi
lea addresses_WT+0x1aec6, %rdi
nop
nop
and $26309, %r8
mov $23, %rcx
rep movsq
and $11045, %r13

// Faulty Load
lea addresses_US+0xda6, %rbx
nop
add %rsi, %rsi
movb (%rbx), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 220}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
