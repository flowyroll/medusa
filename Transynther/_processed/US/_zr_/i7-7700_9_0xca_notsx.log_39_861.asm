.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x96fb, %rsi
lea addresses_WT_ht+0x1780b, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $22580, %r12
mov $50, %rcx
rep movsw
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x19d25, %rdi
nop
nop
add $54793, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
cmp $6737, %rdi
lea addresses_A_ht+0x1220b, %rcx
nop
sub %r9, %r9
mov (%rcx), %edi
sub %r12, %r12
lea addresses_UC_ht+0x820b, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r13)
and $59778, %rcx
lea addresses_WT_ht+0x1960b, %rsi
lea addresses_WT_ht+0x877b, %rdi
nop
cmp %rax, %rax
mov $61, %rcx
rep movsw
nop
cmp $22284, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rsi

// Load
lea addresses_D+0x195fb, %rcx
nop
nop
add %rax, %rax
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
and $54240, %r9

// Faulty Load
lea addresses_US+0x18a0b, %r9
nop
nop
nop
nop
nop
inc %rsi
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 39}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
