.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x11e88, %r10
nop
nop
cmp %r12, %r12
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xd274, %rsi
lea addresses_D_ht+0xe388, %rdi
nop
xor $26902, %r14
mov $46, %rcx
rep movsq
cmp %r12, %r12
lea addresses_WC_ht+0x8588, %rsi
lea addresses_normal_ht+0x16c10, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
dec %r14
mov $119, %rcx
rep movsq
nop
nop
add $60583, %r14
lea addresses_normal_ht+0x4388, %rsi
nop
nop
nop
nop
nop
add %r12, %r12
movb (%rsi), %cl
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x1487a, %rsi
nop
nop
nop
nop
cmp $902, %r8
mov (%rsi), %edi
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x6770, %rsi
lea addresses_normal_ht+0x7048, %rdi
clflush (%rsi)
clflush (%rdi)
xor $58126, %rdx
mov $96, %rcx
rep movsq
nop
add $60914, %r12
lea addresses_UC_ht+0x1c088, %rcx
nop
nop
nop
xor %r10, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x12fb8, %rsi
lea addresses_normal_ht+0x16558, %rdi
clflush (%rsi)
nop
nop
nop
dec %r14
mov $102, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x12a88, %rdx
nop
nop
sub $44912, %rcx
mov (%rdx), %r12w
nop
nop
nop
inc %r10
lea addresses_A_ht+0x1a58, %r8
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r8)
nop
nop
inc %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x9b88, %r14
nop
nop
dec %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r14)
inc %r14

// Store
lea addresses_WC+0x6ea8, %r14
nop
nop
nop
nop
nop
xor $44377, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r14)
nop
nop
cmp $33507, %rbp

// Store
lea addresses_UC+0x1de18, %rsi
nop
nop
nop
nop
nop
dec %rdi
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_A+0xca18, %rdx
add %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_WT+0x15388, %r8
nop
nop
nop
nop
nop
xor $50891, %rdi
movb (%r8), %dl
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
