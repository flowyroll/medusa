.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xb43, %rax
nop
add %r8, %r8
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
xor $23026, %r8
lea addresses_A_ht+0xf063, %rsi
lea addresses_D_ht+0x19303, %rdi
clflush (%rdi)
cmp $21145, %r12
mov $123, %rcx
rep movsl
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xc46f, %rax
sub %rdi, %rdi
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
and $9479, %r8
lea addresses_WC_ht+0xc533, %rcx
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rcx)
cmp $35960, %rsi
lea addresses_UC_ht+0x1b798, %rcx
sub %r9, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x1a7d3, %r9
dec %r12
movups (%r9), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rax
push %rsi

// Store
mov $0x5b447e0000000423, %r13
nop
inc %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovntdq %ymm0, (%r13)
nop
nop
sub %rax, %rax

// Store
lea addresses_WC+0xd03, %r14
nop
nop
add %rsi, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
xor $24029, %r14

// Store
lea addresses_US+0x8303, %r14
nop
and $26529, %r13
movl $0x51525354, (%r14)
nop
nop
nop
xor $45461, %rax

// Faulty Load
lea addresses_A+0x1e503, %r13
nop
nop
dec %r15
mov (%r13), %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rsi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 85}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
