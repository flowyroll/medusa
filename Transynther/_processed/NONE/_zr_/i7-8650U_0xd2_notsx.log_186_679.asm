.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11350, %r8
nop
nop
nop
nop
nop
xor %r10, %r10
movb $0x61, (%r8)
and $4264, %r9
lea addresses_UC_ht+0x1a350, %rcx
nop
nop
and %r8, %r8
movb (%rcx), %r9b
nop
nop
nop
xor $63111, %r13
lea addresses_D_ht+0x3e90, %rsi
lea addresses_WC_ht+0xd1d0, %rdi
clflush (%rsi)
nop
add %r8, %r8
mov $40, %rcx
rep movsb
nop
cmp $9049, %rdi
lea addresses_normal_ht+0x1dcd0, %rsi
lea addresses_UC_ht+0xd250, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $52277, %r13
mov $39, %rcx
rep movsw
nop
add $62388, %r13
lea addresses_UC_ht+0x4550, %r8
nop
nop
nop
nop
nop
add $8509, %rsi
movb (%r8), %r10b
nop
nop
nop
xor $33349, %r13
lea addresses_WT_ht+0x533a, %r10
nop
nop
nop
and %r9, %r9
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x194e0, %r8
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%r8)
nop
inc %rsi
lea addresses_WT_ht+0x10b10, %rdi
nop
nop
and $32196, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rdi
movntdq %xmm5, (%rdi)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1750, %r9
nop
nop
xor %r13, %r13
mov (%r9), %r8
nop
nop
add %r13, %r13
lea addresses_A_ht+0x7c50, %r13
nop
nop
nop
nop
nop
cmp $59440, %rsi
movl $0x61626364, (%r13)
nop
nop
add %r10, %r10
lea addresses_D_ht+0x4f50, %r13
nop
nop
cmp %rdi, %rdi
mov (%r13), %r9d
nop
nop
nop
nop
nop
add $54124, %r13
lea addresses_WT_ht+0x105a4, %rdi
nop
add %r13, %r13
movb (%rdi), %cl
nop
mfence
lea addresses_UC_ht+0xc32c, %rcx
nop
nop
xor $26762, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
sub $47661, %rdi
lea addresses_WT_ht+0xeeb8, %rcx
nop
nop
nop
xor %r9, %r9
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x1e690, %r9
nop
sub %r12, %r12
movl $0x51525354, (%r9)
cmp %r15, %r15

// REPMOV
mov $0x750, %rsi
lea addresses_normal+0x1f8df, %rdi
clflush (%rdi)
dec %r13
mov $15, %rcx
rep movsq
cmp $34267, %r13

// Faulty Load
lea addresses_A+0x8f50, %rcx
nop
nop
nop
add %r13, %r13
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 186}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
