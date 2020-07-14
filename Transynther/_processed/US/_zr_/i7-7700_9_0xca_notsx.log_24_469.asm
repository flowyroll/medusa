.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x180c4, %rcx
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x136c4, %r9
nop
nop
xor $37406, %rbp
movw $0x6162, (%r9)
cmp $32300, %rcx
lea addresses_D_ht+0x146c4, %r10
nop
nop
nop
cmp %r8, %r8
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
and %r8, %r8
lea addresses_normal_ht+0x1d704, %rsi
lea addresses_WT_ht+0x100c4, %rdi
sub $33003, %r10
mov $110, %rcx
rep movsq
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1b6c4, %rsi
lea addresses_D_ht+0x4f84, %rdi
nop
nop
cmp %r9, %r9
mov $35, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0xf6c4, %r11
xor %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r11)
cmp $31775, %rbp
lea addresses_WC_ht+0x192c4, %r8
and $34483, %r10
movl $0x61626364, (%r8)
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1b724, %rdi
and $65482, %r8
mov (%rdi), %r10w
xor $33237, %rbp
lea addresses_WT_ht+0x17fcf, %rsi
lea addresses_A_ht+0x1ad54, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $79, %rcx
rep movsb
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WT+0x6cc4, %rbp
nop
nop
nop
nop
nop
and %r13, %r13
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0x1f6c4, %r12
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb (%r12), %dl
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 24}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
