.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x879a, %rsi
lea addresses_WC_ht+0xc19a, %rdi
inc %r9
mov $105, %rcx
rep movsl
add %r12, %r12
lea addresses_D_ht+0x11d1a, %r8
xor %r12, %r12
mov (%r8), %r9d
nop
nop
nop
cmp $49501, %rsi
lea addresses_WC_ht+0xa57a, %rsi
nop
nop
nop
nop
nop
cmp $45880, %r13
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xb01a, %r9
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%r9), %r13w
nop
nop
nop
nop
add $60830, %r9
lea addresses_UC_ht+0xfbca, %r13
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
inc %r13
lea addresses_WT_ht+0x3d05, %rdi
nop
nop
nop
nop
nop
add $19153, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rdi)
sub %r12, %r12
lea addresses_A_ht+0x19a9a, %rsi
lea addresses_A_ht+0x19e9a, %rdi
nop
nop
nop
dec %r13
mov $76, %rcx
rep movsq
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1111a, %rsi
lea addresses_D_ht+0x599a, %rdi
nop
sub $49239, %rax
mov $26, %rcx
rep movsl
nop
nop
nop
nop
nop
add $54993, %r8
lea addresses_UC_ht+0x2002, %rsi
lea addresses_A_ht+0x1a142, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $31, %rcx
rep movsw
nop
xor $19558, %r13
lea addresses_UC_ht+0x5d9a, %rax
cmp %r12, %r12
movb (%rax), %cl
nop
nop
cmp $30674, %r8
lea addresses_UC_ht+0x1c8e2, %r9
nop
nop
add $13807, %rsi
movb (%r9), %al
add $15311, %r13
lea addresses_D_ht+0x578a, %r9
nop
nop
nop
nop
nop
and $59207, %rax
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
inc %rsi
lea addresses_A_ht+0x779a, %rsi
lea addresses_D_ht+0x7f9a, %rdi
nop
nop
nop
nop
dec %r12
mov $85, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x4b1a, %rsi
lea addresses_WC_ht+0x439a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $86, %rcx
rep movsq
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbp
push %rbx
push %rdx

// Faulty Load
mov $0x17245d000000079a, %r14
nop
nop
add %rbx, %rbx
movups (%r14), %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'7a': 1, '46': 1313, '00': 19658, '48': 4, '45': 853}
00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 45 00 00 00 46 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 45 00 00 00 00 00 46 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 45 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 45 45 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 46 45 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 45 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 46 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00
*/
