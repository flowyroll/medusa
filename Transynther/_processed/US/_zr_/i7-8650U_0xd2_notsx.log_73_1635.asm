.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x17a0f, %rsi
nop
nop
nop
nop
nop
sub $23290, %rdi
movb $0x61, (%rsi)
nop
nop
sub $59561, %rsi
lea addresses_normal_ht+0x337f, %r9
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r9)
nop
xor $34692, %r14
lea addresses_WT_ht+0x1327, %rdi
nop
nop
and %r10, %r10
mov (%rdi), %esi
xor $19150, %rdi
lea addresses_D_ht+0x18c97, %r12
clflush (%r12)
nop
nop
nop
inc %rbx
movb (%r12), %r10b
inc %r14
lea addresses_normal_ht+0x1610f, %r14
nop
nop
nop
nop
nop
xor $56627, %rdi
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0xb80f, %rdi
nop
nop
nop
nop
nop
inc %rbx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
sub $17700, %r9
lea addresses_normal_ht+0x11a0f, %rsi
lea addresses_UC_ht+0x28af, %rdi
nop
nop
nop
nop
add $21859, %r10
mov $76, %rcx
rep movsl
add $23491, %r10
lea addresses_A_ht+0x18c9f, %rbx
and $8878, %r14
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x11f4f, %r10
nop
nop
add %rbx, %rbx
movups (%r10), %xmm3
vpextrq $0, %xmm3, %r12
sub $23810, %rsi
lea addresses_UC_ht+0xe202, %r10
and %r12, %r12
movb $0x61, (%r10)
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x131d3, %rsi
lea addresses_WC_ht+0x560f, %rdi
nop
inc %r9
mov $126, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $63027, %r10
lea addresses_WT_ht+0x1a8cf, %rsi
lea addresses_WT_ht+0xe541, %rdi
cmp %r10, %r10
mov $20, %rcx
rep movsl
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x260f, %rbp
nop
nop
nop
nop
sub %r12, %r12
mov (%rbp), %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'00': 73}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
