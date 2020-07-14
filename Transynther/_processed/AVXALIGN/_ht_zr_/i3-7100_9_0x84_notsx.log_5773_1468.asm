.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xfa68, %r8
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm7
and $0xffffffffffffffc0, %r8
movntdq %xmm7, (%r8)
nop
nop
nop
nop
xor $10578, %rcx
lea addresses_A_ht+0x8e68, %rbx
nop
nop
nop
nop
cmp %r9, %r9
mov (%rbx), %ecx
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x13d68, %r11
nop
nop
add $43505, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r11)
nop
add $45564, %r9
lea addresses_A_ht+0xa968, %rsi
lea addresses_WT_ht+0x16168, %rdi
nop
nop
nop
cmp $60552, %r11
mov $42, %rcx
rep movsb
nop
cmp $52793, %rsi
lea addresses_WC_ht+0x4818, %rsi
lea addresses_WT_ht+0x1d368, %rdi
nop
nop
sub $6340, %r15
mov $107, %rcx
rep movsw
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0xbe68, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
and $0xffffffffffffffc0, %rdi
vmovaps %ymm3, (%rdi)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0x9c28, %r13
nop
nop
nop
nop
cmp $65104, %rbx
movb (%r13), %cl
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x45d4, %rsi
clflush (%rsi)
add %rdi, %rdi
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x17968, %rsi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%rsi), %r15b
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x9a9d, %r15
nop
sub %rsi, %rsi
movl $0x61626364, (%r15)
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x6f5, %r13
nop
and $58626, %rdi
movups (%r13), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rbx

// Faulty Load
lea addresses_A+0x16968, %rbx
nop
dec %r12
vmovntdqa (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'49': 675, '00': 4000, '48': 6, '45': 624, '44': 468}
00 00 00 00 00 00 00 00 00 00 44 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 44 44 00 45 44 00 00 45 00 00 00 45 00 49 00 00 00 00 45 00 00 00 00 44 44 49 00 00 45 49 00 00 00 00 00 00 00 00 49 00 00 44 00 00 00 00 49 00 00 49 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 45 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 45 44 00 00 00 45 49 49 44 49 44 00 44 45 00 00 00 00 44 00 00 00 00 00 00 00 00 49 00 00 44 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 49 00 49 00 45 00 00 45 00 44 00 00 00 45 45 00 49 00 00 45 49 00 00 00 49 44 00 00 00 00 45 49 00 49 00 00 00 00 00 00 44 00 00 00 44 00 44 44 45 00 00 00 00 00 00 00 00 00 44 00 45 49 00 45 00 00 49 49 00 00 49 00 00 00 00 00 00 00 00 00 45 00 00 49 49 00 49 00 00 45 49 49 00 00 00 49 00 45 00 00 00 49 00 00 00 00 00 00 00 45 49 00 00 49 49 00 00 45 44 00 00 00 00 00 00 00 00 49 49 00 45 49 00 00 00 00 00 00 00 45 49 45 00 00 00 45 00 00 00 00 00 49 00 00 00 00 00 00 44 00 00 00 44 44 45 00 00 00 00 49 49 45 00 00 00 00 00 00 00 00 49 00 44 00 45 00 00 49 00 00 00 44 44 49 00 00 00 00 45 00 00 49 45 00 00 44 45 49 00 00 44 00 00 00 00 00 45 00 44 00 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 44 00 00 00 00 00 00 00 49 00 45 00 00 00 45 00 44 00 45 00 45 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 45 00 00 00 00 00 45 44 00 00 00 00 00 00 00 49 00 45 00 00 00 00 00 00 00 49 00 00 00 00 00 49 44 00 00 00 00 44 00 00 00 45 44 49 00 00 00 49 45 00 00 49 49 45 49 49 49 00 00 44 00 00 00 00 00 00 00 45 00 49 00 45 00 44 44 00 44 00 00 00 00 00 00 44 00 49 00 00 00 45 00 00 49 45 45 49 49 00 49 00 00 49 45 00 00 44 00 00 44 00 00 49 00 00 44 00 00 00 00 00 00 00 44 44 45 00 00 00 49 49 00 49 00 44 00 00 49 00 00 00 00 00 49 00 44 00 45 00 00 00 00 00 00 00 00 44 49 44 49 00 00 49 44 00 00 44 00 49 00 00 00 00 45 00 00 00 49 00 00 00 00 00 49 00 45 00 00 45 49 00 00 00 00 49 00 44 49 00 00 44 00 44 00 00 49 00 44 00 00 00 49 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 44 00 00 00 00 00 00 44 00 00 49 00 44 45 00 00 44 00 45 00 45 00 00 00 00 00 49 45 00 00 00 00 00 00 44 44 00 00 00 49 00 00 44 00 00 49 44 00 00 00 00 00 49 00 49 49 00 45 00 00 00 45 45 49 00 00 00 00 00 00 00 00 00 49 00 45 00 49 00 00 45 00 49 00 45 00 00 49 00 00 00 44 44 49 44 00 00 00 00 00 44 00 49 00 00 00 00 45 49 49 00 45 00 49 00 00 00 45 00 49 00 00 00 00 00 00 00 00 49 00 45 49 49 00 00 00 00 45 00 00 00 00 45 45 45 00 00 45 00 00 00 44 00 00 00 00 00 00 45 49 00 00 00 00 00 49 00 45 44 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 44 49 00 45 00 00 00 45 00 00 49 00 00 00 00 44 00 49 00 00 00 00 00 00 49 00 00 44 00 00 00 45 00 00 45 00 45 44 00 00 00 00 49 00 00 49 00 00 45 00 44 00 00 00 45 49 49 00 49 00 00 44 00 00 45 49 00 00 44 00 49 00 00 00 49 00 00 00 00 00 49 00 00 45 45 45 00 44 00 49 00 44 00 49 00 00 00 45 00 00 00 00 45 00 49 00 00 00 44 00 00 44 49 00 00 00 00 00 00 49 44 00 00 00 00 00 00 49 00 00 00 00 00 49 44 00 44 00 00 00 00 00
*/
