.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x549b, %r8
nop
nop
nop
cmp %r13, %r13
mov (%r8), %rdx
nop
nop
nop
nop
nop
sub $25695, %r12
lea addresses_A_ht+0x9737, %r8
nop
inc %rbp
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
add %rdx, %rdx
lea addresses_UC_ht+0x171f7, %r14
nop
nop
nop
nop
sub $61090, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r14)
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x1cd17, %r12
nop
nop
nop
inc %r13
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x1ec9f, %rsi
lea addresses_normal_ht+0x18210, %rdi
nop
nop
nop
nop
dec %r13
mov $15, %rcx
rep movsw
nop
nop
nop
add $65454, %r13
lea addresses_A_ht+0x1330f, %rsi
lea addresses_WC_ht+0x8507, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $112, %rcx
rep movsb
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x6e67, %rsi
nop
nop
nop
nop
and $10280, %r8
movb (%rsi), %dl
nop
dec %rdi
lea addresses_A_ht+0x1ec17, %rsi
lea addresses_UC_ht+0x1cd17, %rdi
add $52164, %r12
mov $85, %rcx
rep movsl
nop
sub %r13, %r13
lea addresses_WT_ht+0x1e917, %rsi
lea addresses_A_ht+0x1b9df, %rdi
nop
nop
cmp $11746, %r14
mov $109, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $17889, %rbp
lea addresses_WT_ht+0xf17, %rsi
lea addresses_D_ht+0xc517, %rdi
nop
xor $16889, %r13
mov $20, %rcx
rep movsw
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x34d7, %r8
nop
nop
nop
nop
nop
add $40526, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r8)
nop
dec %r8
lea addresses_WC_ht+0xb0af, %rcx
nop
nop
cmp %r14, %r14
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1e597, %r13
nop
nop
dec %r14
movl $0x61626364, (%r13)
xor $11498, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rdi

// Faulty Load
mov $0x517, %r12
nop
nop
and %r15, %r15
mov (%r12), %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
