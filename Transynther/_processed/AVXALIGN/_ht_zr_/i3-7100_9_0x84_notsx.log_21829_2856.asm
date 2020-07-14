.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x108aa, %rsi
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
cmp $22669, %r8
lea addresses_normal_ht+0x945, %rsi
lea addresses_normal_ht+0x13419, %rdi
sub %r15, %r15
mov $50, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x16fa5, %r8
xor %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r8)
nop
add %r9, %r9
lea addresses_WT_ht+0x109c5, %rsi
lea addresses_D_ht+0x14a7d, %rdi
nop
nop
cmp %rbp, %rbp
mov $75, %rcx
rep movsl
nop
add %rdi, %rdi
lea addresses_UC_ht+0x3a85, %rbp
nop
nop
nop
nop
and $2199, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rbp)
nop
and %rsi, %rsi
lea addresses_A_ht+0x1235, %r9
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
and %rbp, %rbp
lea addresses_D_ht+0x7985, %rsi
lea addresses_D_ht+0x4a25, %rdi
nop
xor $20029, %r10
mov $26, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x7485, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $41741, %r9
mov (%r10), %r8w
nop
nop
nop
nop
cmp $21504, %r9
lea addresses_D_ht+0x185, %r9
clflush (%r9)
nop
nop
nop
and $19098, %r15
mov $0x6162636465666768, %r10
movq %r10, (%r9)
and $60786, %r15
lea addresses_normal_ht+0x1aae5, %rsi
lea addresses_D_ht+0x1ddd4, %rdi
clflush (%rsi)
clflush (%rdi)
and %rbp, %rbp
mov $33, %rcx
rep movsq
nop
add $47899, %r9
lea addresses_normal_ht+0x10905, %rsi
nop
nop
dec %rcx
mov (%rsi), %rdi
nop
nop
nop
nop
sub $25213, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Faulty Load
mov $0x685, %rdi
nop
nop
nop
nop
sub $2566, %rax
vmovaps (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'49': 5523, '00': 304, '46': 11, '44': 15991}
49 44 44 44 49 44 44 44 44 44 44 44 49 49 44 44 49 44 44 44 46 44 44 44 44 44 49 44 49 49 49 44 44 49 44 44 44 49 44 44 49 44 49 49 44 44 44 49 44 49 44 49 49 44 44 44 44 44 44 49 49 44 49 49 44 44 49 49 44 49 44 49 49 49 49 44 44 44 49 49 49 44 49 44 49 44 00 44 44 49 49 49 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 49 44 49 44 44 44 44 44 44 44 44 44 44 44 49 49 44 49 00 44 44 44 44 49 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 49 44 44 44 49 44 44 44 49 49 44 49 44 44 49 44 44 44 44 44 49 44 49 44 44 44 49 44 49 44 44 49 44 44 44 49 44 44 49 49 44 49 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 44 44 49 49 44 44 49 49 44 44 44 44 49 49 44 49 44 44 44 49 44 44 44 44 44 49 44 44 49 49 44 49 49 44 49 44 49 44 44 44 44 44 44 00 49 44 49 44 44 44 44 44 44 00 49 44 49 44 49 44 44 49 44 49 44 44 49 44 49 49 49 44 49 49 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 49 44 44 44 44 49 44 44 49 44 49 44 44 44 49 44 49 44 49 44 44 44 44 49 44 49 44 44 49 44 44 44 44 44 49 00 44 44 44 44 44 44 44 44 44 49 49 49 44 49 49 44 44 44 44 44 44 44 44 44 44 49 44 49 49 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 44 49 44 49 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 49 44 49 44 44 49 00 44 44 49 44 49 49 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 44 00 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 49 44 44 44 49 44 44 49 44 44 44 44 49 49 44 44 44 49 44 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 49 49 44 49 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 49 44 49 49 44 44 49 44 49 49 44 44 44 44 44 49 49 44 49 44 44 44 49 44 44 44 00 44 44 44 44 44 00 49 44 44 00 49 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 44 49 44 44 49 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 49 44 49 44 49 49 44 44 44 44 49 44 49 44 49 49 49 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 49 49 44 44 44 49 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 49 44 44 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 44 49 44 44 49 44 49 44 44 44 44 44 44 44 44 49 44 44 49 44 49 49 44 44 44 49 44 44 44 49 49 49 44 44 44 44 44 44 49 00 49 44 49 44 44 49 44 44 44 49 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 49 44 49 49 00 49 44 44 44 44 49 44 44 44 44 44 49 44 44 44 44 44 49 44 49 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 49 44 49 49 49 44 44 44 44 44 44 49 49 44 44 44 44 49 49 44 44 44 49 49 44 49 49 44 44 49 44 44 44 44 44 44 49 44 44 44 49 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 44 49 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 49 00 44 44 44 44 49 49 44 49 44 49 44 49 44 44 44 00 49 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44
*/
