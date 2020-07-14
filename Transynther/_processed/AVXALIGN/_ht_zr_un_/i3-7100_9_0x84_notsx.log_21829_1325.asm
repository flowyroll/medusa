.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x211a, %r14
nop
nop
add %r11, %r11
mov (%r14), %si
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x17e5a, %rsi
lea addresses_WC_ht+0x781a, %rdi
nop
cmp $40263, %rax
mov $84, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $12353, %r14
lea addresses_UC_ht+0x8c1a, %rsi
nop
nop
nop
nop
add $13195, %rdi
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
nop
cmp $24493, %rdi
lea addresses_WC_ht+0xf89a, %rcx
nop
nop
nop
nop
sub $24675, %rax
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
sub $26528, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rax
push %rdx

// Store
lea addresses_A+0x1d716, %r8
nop
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%r8)
nop
and $60847, %r9

// Store
lea addresses_UC+0xad5a, %r10
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r10)
nop
nop
add $49552, %r9

// Faulty Load
mov $0xb1a, %r14
nop
nop
nop
nop
nop
cmp $17486, %rdx
movntdqa (%r14), %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'48': 376, '00': 10447, '47': 1352, '45': 9653, '97': 1}
00 45 00 45 45 00 00 00 47 00 00 45 00 00 00 45 00 00 00 45 45 00 45 00 45 00 00 45 45 45 45 45 45 45 45 00 45 47 45 00 00 00 00 00 45 45 00 00 45 00 47 45 00 00 00 00 00 00 45 45 00 00 45 00 45 00 45 00 45 00 45 45 45 00 45 00 45 45 00 45 00 45 00 00 00 00 45 45 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 45 47 00 47 00 00 45 00 45 45 00 00 45 00 00 00 45 45 45 00 45 45 00 00 45 45 45 00 00 00 45 45 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 47 45 00 00 45 00 45 45 00 00 45 45 00 00 45 45 45 00 45 00 45 00 45 00 00 47 00 00 00 00 45 00 45 00 45 45 45 45 45 00 00 00 45 00 00 45 00 45 00 00 45 45 45 48 00 00 47 47 48 45 00 45 45 45 45 00 00 00 00 45 47 00 45 45 00 47 00 00 45 00 45 00 47 47 00 00 45 00 00 00 45 00 45 45 45 00 00 00 00 45 00 45 00 45 00 00 45 00 48 00 45 45 00 45 00 45 45 00 00 00 00 45 45 00 00 00 00 47 00 00 45 45 45 45 45 00 00 00 00 45 00 45 45 48 45 00 00 00 00 00 00 45 00 45 45 45 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 45 45 00 00 47 00 00 00 00 47 00 00 45 45 45 45 45 00 00 45 45 00 45 00 45 45 45 00 00 45 45 00 00 00 48 45 00 45 00 45 00 45 45 00 45 45 00 45 00 47 00 47 45 45 47 00 00 00 45 00 45 45 00 45 00 00 45 00 45 00 00 00 45 45 00 45 45 00 00 00 47 00 00 45 45 00 47 45 45 45 00 47 00 45 00 00 00 00 45 45 48 45 45 00 00 45 45 00 00 45 45 45 00 00 00 00 00 00 45 00 45 00 45 45 45 47 00 00 00 00 00 00 45 00 45 45 00 00 45 00 00 45 45 45 00 45 00 48 00 00 45 00 45 47 00 00 45 00 47 47 45 45 45 00 45 00 45 45 00 00 45 00 00 45 00 45 00 00 45 00 00 00 45 45 45 00 45 47 00 45 45 00 45 00 00 00 00 47 00 00 00 45 00 00 45 00 00 45 00 00 00 48 45 45 00 45 00 00 45 45 00 45 00 45 45 00 00 00 00 00 00 00 00 00 48 48 00 47 00 47 00 47 00 00 00 47 45 00 00 45 00 45 45 00 00 45 00 45 45 00 45 45 45 00 00 45 00 00 47 00 00 45 00 00 45 00 45 00 45 00 00 00 47 00 45 00 00 47 00 45 00 00 00 45 00 00 00 00 00 45 00 00 45 45 00 00 00 48 00 00 00 00 00 00 00 45 45 00 45 45 00 45 00 00 00 45 00 00 00 00 45 45 45 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 00 47 00 00 45 00 45 00 00 00 45 47 45 00 00 00 45 00 00 45 45 45 00 45 00 45 45 47 00 45 00 47 47 00 45 00 00 00 00 00 45 00 00 47 45 00 00 45 00 00 45 45 00 00 48 45 00 00 00 00 00 00 00 00 45 45 45 00 00 45 45 45 45 45 00 00 45 00 47 00 45 45 45 00 00 45 00 45 47 00 00 45 45 00 45 45 00 00 45 45 45 00 00 45 45 45 45 45 00 45 45 00 45 00 45 00 45 45 47 00 45 00 45 00 45 00 45 00 45 00 45 45 45 45 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 47 00 00 00 45 00 45 00 45 45 45 45 00 00 45 00 00 45 45 45 45 00 45 00 45 00 00 47 00 47 00 47 00 00 45 00 45 00 45 45 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 45 00 00 00 45 00 00 00 45 00 00 47 47 45 45 00 00 45 00 45 00 45 45 00 45 00 00 00 00 45 47 00 47 45 45 00 00 00 45 00 00 00 45 45 00 45 00 00 48 00 00 00 45 45 45 45 00 45 00 00 00 45 00 00 45 45 00 00 45 00 45 00 00 47 00 45 00 45 00 45 00 00 45 45 00 47 00 00 47 00 45 45 45 00 47 45 00 00 00 45 45 00 00 45
*/
