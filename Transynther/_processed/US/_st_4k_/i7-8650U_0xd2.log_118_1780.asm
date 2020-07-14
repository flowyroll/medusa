.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7f7f, %rcx
and $23449, %r14
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0xedff, %rsi
lea addresses_A_ht+0x18faf, %rdi
nop
nop
and %r10, %r10
mov $25, %rcx
rep movsq
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x8a03, %rcx
add %r12, %r12
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x1d67f, %rsi
lea addresses_D_ht+0x6c69, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r8, %r8
mov $43, %rcx
rep movsl
nop
nop
nop
and $41316, %r8
lea addresses_WC_ht+0x1e0e7, %rdi
clflush (%rdi)
nop
xor %r13, %r13
mov (%rdi), %r12d
nop
nop
cmp $45951, %rcx
lea addresses_WT_ht+0x227f, %rsi
lea addresses_normal_ht+0xaa7f, %rdi
nop
nop
add %r13, %r13
mov $121, %rcx
rep movsb
inc %rsi
lea addresses_D_ht+0x160bf, %rdi
nop
add %rcx, %rcx
movw $0x6162, (%rdi)
sub %r10, %r10
lea addresses_A_ht+0x1a437, %rsi
lea addresses_A_ht+0xaaef, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $90, %rcx
rep movsb
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rdx
push %rsi

// Store
lea addresses_RW+0x172bf, %r14
nop
nop
nop
nop
cmp $24536, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r14)
dec %rbp

// Store
mov $0xddf, %r10
nop
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%r10)
nop
nop
nop
dec %r10

// Store
lea addresses_normal+0x16a7f, %rsi
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_US+0x1ca7f, %rbp
nop
nop
nop
nop
nop
dec %r13
movb (%rbp), %r10b
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'58': 118}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
