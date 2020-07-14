.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1db43, %rsi
nop
nop
nop
nop
and %rax, %rax
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r15
nop
and $15710, %rbp
lea addresses_normal_ht+0xcb03, %rsi
add %rbp, %rbp
movw $0x6162, (%rsi)
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x2bab, %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movups (%r12), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
sub %r15, %r15
lea addresses_A_ht+0xb4cb, %r15
clflush (%r15)
nop
nop
nop
nop
nop
xor $6810, %rax
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r12
nop
cmp $23281, %r15
lea addresses_WC_ht+0x1190b, %r15
xor $28545, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
nop
xor $9536, %r15
lea addresses_normal_ht+0x75f9, %rsi
lea addresses_D_ht+0x16ac3, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $19, %rcx
rep movsq
nop
nop
nop
nop
xor $63486, %rax
lea addresses_D_ht+0xf3eb, %rsi
lea addresses_normal_ht+0x17057, %rdi
nop
nop
nop
sub %r15, %r15
mov $108, %rcx
rep movsq
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x13903, %rcx
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rcx)
nop
nop
dec %rsi
lea addresses_WT_ht+0xb8a7, %rax
sub $16013, %r8
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0xe73, %rsi
lea addresses_normal_ht+0xed83, %rdi
nop
nop
nop
cmp $43471, %rbp
mov $49, %rcx
rep movsb
nop
nop
cmp $12404, %rdi
lea addresses_WC_ht+0x16483, %rsi
lea addresses_normal_ht+0x137cb, %rdi
nop
nop
cmp $44053, %r12
mov $1, %rcx
rep movsl
nop
nop
nop
nop
nop
and $41754, %r8
lea addresses_A_ht+0x12303, %rsi
lea addresses_A_ht+0xe583, %rdi
nop
nop
nop
sub %r8, %r8
mov $52, %rcx
rep movsl
xor %rsi, %rsi
lea addresses_normal_ht+0x17c3, %r15
nop
nop
nop
cmp %rbp, %rbp
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi

// Load
lea addresses_normal+0x10703, %r13
nop
nop
xor %r9, %r9
movb (%r13), %r15b
xor $2762, %r9

// Load
lea addresses_RW+0x14c3, %r12
nop
nop
sub $35182, %rdi
vmovaps (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9

// Exception!!!
nop
nop
mov (0), %r9
cmp $15686, %r15

// Faulty Load
lea addresses_PSE+0x1ed03, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%rdi), %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'33': 21}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
