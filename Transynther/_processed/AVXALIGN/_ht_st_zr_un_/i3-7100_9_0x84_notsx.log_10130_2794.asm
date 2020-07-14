.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ed6a, %rsi
lea addresses_normal_ht+0x1e682, %rdi
nop
dec %r14
mov $114, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x17702, %r12
clflush (%r12)
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, (%r12)
nop
nop
nop
and $20128, %r14
lea addresses_WT_ht+0x1c202, %r14
nop
nop
nop
nop
xor $16222, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r14)
xor $33147, %r15
lea addresses_A_ht+0x11022, %rax
nop
nop
nop
nop
nop
dec %rsi
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x178b2, %rax
nop
nop
nop
nop
sub %rdi, %rdi
movups (%rax), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x16b02, %r12
nop
and $59060, %rdi
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x9660, %rsi
lea addresses_A_ht+0x12502, %rdi
nop
nop
nop
dec %r8
mov $5, %rcx
rep movsw
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx

// Faulty Load
lea addresses_RW+0xf702, %rbx
nop
nop
cmp $28198, %r13
vmovntdqa (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'c5': 1, 'f6': 1, '63': 1, '1f': 1, 'ef': 1, '45': 8398, '67': 1, '00': 1724, '3f': 1, 'e7': 1}
45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 00 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 00 45 45 00 45 1f 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 67 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 00 45 00 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 00 00 45 00 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 00 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 00 45 45 45 00 45 45 00 45 00 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 45 00 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 45 45 45 00 45 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 00 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 00 45 45
*/
