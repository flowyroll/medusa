.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1e613, %rsi
lea addresses_UC_ht+0x1b013, %rdi
clflush (%rdi)
and $13600, %rbp
mov $115, %rcx
rep movsl
nop
and %rdi, %rdi
lea addresses_D_ht+0x19713, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub $36515, %rbp
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xb413, %r8
nop
nop
nop
nop
nop
add $35299, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x4813, %rsi
lea addresses_UC_ht+0x19c13, %rdi
nop
nop
nop
sub %r9, %r9
mov $30, %rcx
rep movsq
cmp $54613, %r8
lea addresses_D_ht+0x15a33, %rsi
lea addresses_A_ht+0x12813, %rdi
nop
nop
sub $15977, %r10
mov $67, %rcx
rep movsw
nop
nop
nop
sub $47392, %r12
lea addresses_D_ht+0x9c13, %rcx
and %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rcx)
nop
dec %r9
lea addresses_D_ht+0x1d6d7, %rdi
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%rdi)
nop
xor $41093, %r9
lea addresses_WC_ht+0x15993, %r12
nop
nop
nop
nop
nop
and $17086, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
cmp $1058, %rsi
lea addresses_UC_ht+0x11593, %rsi
lea addresses_WT_ht+0x5313, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $60, %rcx
rep movsq
xor $14642, %rsi
lea addresses_A_ht+0x1b0d3, %r12
nop
nop
and %r9, %r9
movb (%r12), %r10b
nop
nop
add $32603, %r9
lea addresses_WC_ht+0x1c163, %rcx
nop
and %r9, %r9
mov (%rcx), %r10
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0xb30b, %rcx
nop
nop
nop
xor $53019, %r8
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
sub $14012, %rbp
lea addresses_A_ht+0x1ef93, %rcx
nop
and $52979, %rbp
movb (%rcx), %r8b
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x1bb0b, %r12
clflush (%r12)
nop
nop
xor %r9, %r9
mov (%r12), %r8
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x11013, %rdi
nop
nop
nop
nop
nop
cmp $23404, %rdx
movb (%rdi), %r10b
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rdx
pop %rdi
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 6}
00 00 00 00 00 00
*/
