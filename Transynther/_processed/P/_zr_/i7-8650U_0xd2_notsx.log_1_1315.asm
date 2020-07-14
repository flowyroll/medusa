.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x164e6, %rsi
lea addresses_UC_ht+0xbbae, %rdi
add %r9, %r9
mov $52, %rcx
rep movsb
and $15295, %r8
lea addresses_normal_ht+0xe9e6, %rsi
lea addresses_WC_ht+0x14f66, %rdi
nop
nop
inc %r12
mov $53, %rcx
rep movsq
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x9ea6, %r9
inc %r15
mov (%r9), %rdi
dec %r12
lea addresses_D_ht+0x11406, %rsi
lea addresses_UC_ht+0x14f10, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $74, %rcx
rep movsw
nop
nop
and $26889, %rcx
lea addresses_normal_ht+0x1e666, %r8
dec %rsi
movb (%r8), %r9b
xor $4851, %r8
lea addresses_A_ht+0x9c66, %rsi
lea addresses_D_ht+0x5df4, %rdi
nop
sub %r9, %r9
mov $48, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $191, %r9
lea addresses_D_ht+0x90d1, %rdi
clflush (%rdi)
nop
nop
and $58837, %r8
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
and $55258, %r8
lea addresses_WT_ht+0xd5a6, %rsi
lea addresses_WT_ht+0x13466, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $92, %rcx
rep movsq
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x16006, %rdi
nop
nop
nop
nop
nop
xor $5162, %r12
mov (%rdi), %rcx
nop
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rdx
push %rsi

// Faulty Load
mov $0xa66, %rsi
nop
nop
nop
nop
xor %rax, %rax
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 1}
00
*/
