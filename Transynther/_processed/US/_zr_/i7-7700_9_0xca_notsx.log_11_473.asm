.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x330f, %rcx
and $64968, %r10
mov (%rcx), %r8
nop
nop
inc %r13
lea addresses_normal_ht+0x1b0f, %r10
nop
nop
nop
cmp $62869, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
and $53699, %rcx
lea addresses_WC_ht+0x170af, %rsi
lea addresses_normal_ht+0x5295, %rdi
dec %rdx
mov $61, %rcx
rep movsw
nop
nop
nop
nop
sub $1039, %rsi
lea addresses_normal_ht+0x30f, %r13
nop
nop
nop
xor $21675, %rdx
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
add $34535, %rcx
lea addresses_A_ht+0x1a3e7, %rbp
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%rbp), %rdx
nop
nop
and $32732, %rdi
lea addresses_D_ht+0x518f, %rcx
nop
nop
nop
nop
dec %r10
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x630f, %r13
nop
nop
dec %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r13)
xor $39105, %r13
lea addresses_D_ht+0x1b30f, %rsi
lea addresses_WT_ht+0x1bb0f, %rdi
nop
nop
add %r13, %r13
mov $13, %rcx
rep movsl
nop
nop
cmp $49977, %rbp
lea addresses_D_ht+0x130f7, %r10
nop
nop
nop
nop
and %r13, %r13
movb $0x61, (%r10)
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x8457, %rsi
lea addresses_WT_ht+0x12ecf, %rdi
clflush (%rdi)
nop
nop
nop
dec %r8
mov $51, %rcx
rep movsl
nop
nop
nop
nop
and $32416, %r8
lea addresses_WT_ht+0x4b6f, %r13
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
nop
nop
cmp $26618, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x1c30f, %r8
nop
nop
nop
sub $8693, %rbp
vmovups (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
