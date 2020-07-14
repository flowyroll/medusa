.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1cc06, %rdi
nop
nop
nop
xor $49768, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%rdi)
add %rsi, %rsi
lea addresses_WT_ht+0x1166, %rsi
lea addresses_WC_ht+0x17c45, %rdi
nop
cmp %r15, %r15
mov $91, %rcx
rep movsl
dec %rsi
lea addresses_A_ht+0x5548, %rax
clflush (%rax)
add $65527, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x266, %r8
nop
add $13322, %rax
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x1db26, %rdi
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %rdi
movntdq %xmm5, (%rdi)
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x19366, %r8
nop
nop
add $19485, %r12
movw $0x6162, (%r8)
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbx

// Faulty Load
lea addresses_US+0x6966, %r11
clflush (%r11)
nop
and %r10, %r10
mov (%r11), %r15d
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 216}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
