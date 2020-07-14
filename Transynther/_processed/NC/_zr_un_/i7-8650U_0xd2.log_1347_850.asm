.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xe133, %r13
nop
nop
and $45191, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%r13)
nop
sub %r8, %r8
lea addresses_UC_ht+0x97b7, %rbp
nop
nop
nop
nop
nop
xor $6977, %r10
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x14f37, %r13
xor %rbp, %rbp
movw $0x6162, (%r13)
nop
nop
nop
and $29109, %r8
lea addresses_normal_ht+0x8bb7, %rsi
lea addresses_A_ht+0x165a5, %rdi
nop
nop
dec %r8
mov $8, %rcx
rep movsl
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x877b, %r8
nop
and %r13, %r13
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
and %r10, %r10
lea addresses_A_ht+0x84b7, %rcx
cmp $8351, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
cmp $8484, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x9b57, %rsi
lea addresses_WC+0xf7b7, %rdi
nop
nop
nop
sub %r12, %r12
mov $34, %rcx
rep movsw
nop
nop
nop
add $44118, %rdi

// Faulty Load
mov $0x7afb1d00000007b7, %rsi
nop
nop
and %rcx, %rcx
movb (%rsi), %r12b
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 134, '16': 1213}
00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 00 16 16 16 16 00 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 00 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 00 16 00 16 00 00 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 00 16 16 16 00 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 00 16 16 16 16 16 16 16 16 00 16 00 16 00 16 16 16 16 16 16 00 16 16 16 16 16 16 16 00 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 00 00 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 00 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 00 00 16 16 00 16 16 00 16 16 16 16 00 16 16 16 16 16 16 16 16 16 00 16 16 00 16 16 16 16 16 16 00 16 16 00 00 16 00 16 16 16 16 00 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 00 16 16 16 16 16 16 16 00 16 00 16 16 16 16 00 16 00 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16
*/
