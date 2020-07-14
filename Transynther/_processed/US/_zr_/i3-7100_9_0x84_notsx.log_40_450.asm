.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xb44b, %rsi
lea addresses_WT_ht+0x186fb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r12, %r12
mov $21, %rcx
rep movsq
nop
nop
nop
nop
and $44655, %rdx
lea addresses_A_ht+0xbe10, %rbx
nop
nop
cmp %r13, %r13
movw $0x6162, (%rbx)
nop
nop
sub $20587, %rdi
lea addresses_A_ht+0x872b, %rdx
and %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x1c9bb, %rbx
nop
nop
nop
sub %rsi, %rsi
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
sub $18949, %rdx
lea addresses_D_ht+0x1954b, %rsi
lea addresses_UC_ht+0x1394b, %rdi
nop
nop
nop
nop
nop
add $60104, %r10
mov $4, %rcx
rep movsb
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x11992, %rbx
nop
nop
nop
nop
xor $29706, %r10
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm6
vpextrq $0, %xmm6, %rdi
nop
and $10182, %rbx
lea addresses_A_ht+0x8d8b, %rdx
nop
nop
nop
add $52109, %rcx
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x494b, %rsi
lea addresses_WC_ht+0x564b, %rdi
nop
cmp $46533, %r10
mov $3, %rcx
rep movsb
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1af4b, %rdx
nop
nop
nop
and %r12, %r12
movw $0x5152, (%rdx)
add $58154, %rdx

// Faulty Load
lea addresses_US+0x1004b, %rdx
nop
inc %r11
movb (%rdx), %r12b
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'00': 40}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
