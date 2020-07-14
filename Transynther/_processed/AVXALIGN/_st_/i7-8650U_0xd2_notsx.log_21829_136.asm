.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x11474, %r9
nop
nop
xor $55470, %rbp
mov (%r9), %r10d
nop
nop
nop
add $2545, %r12
lea addresses_WC_ht+0x7ce4, %r15
nop
nop
nop
and $57324, %r9
movl $0x61626364, (%r15)
nop
nop
nop
add $33807, %r10
lea addresses_WT_ht+0x4874, %r12
nop
nop
add %r9, %r9
mov (%r12), %r10w
sub $15196, %r9
lea addresses_A_ht+0x18674, %r12
nop
dec %r11
movb (%r12), %r15b
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x12f4, %rsi
nop
nop
nop
nop
nop
sub $56127, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x104cc, %rsi
lea addresses_A_ht+0x1140c, %rdi
nop
cmp $16579, %r12
mov $81, %rcx
rep movsl
nop
nop
inc %rcx
lea addresses_WT_ht+0xdfe4, %rsi
lea addresses_D_ht+0xb3ac, %rdi
nop
nop
add $50081, %r12
mov $35, %rcx
rep movsq
xor %rbp, %rbp
lea addresses_A_ht+0x4f3a, %rcx
and %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
dec %r15
lea addresses_A_ht+0x1c1dc, %r11
nop
nop
nop
nop
add $60902, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r11)
nop
nop
sub $53822, %r15
lea addresses_WC_ht+0x2034, %r10
add %rbp, %rbp
mov $0x6162636465666768, %r9
movq %r9, (%r10)
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x7624, %rbp
nop
nop
nop
add $39052, %r15
movw $0x6162, (%rbp)
nop
nop
nop
xor $40875, %r11
lea addresses_normal_ht+0x17074, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %r11, %r11
movb $0x61, (%r15)
nop
nop
nop
nop
nop
and $9166, %r9
lea addresses_D_ht+0x5f74, %rsi
lea addresses_D_ht+0x109b8, %rdi
dec %r15
mov $83, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x9074, %r15
nop
nop
nop
lfence
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x19718, %rbp
nop
nop
inc %r15
mov (%rbp), %r9w
nop
nop
xor $20263, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_PSE+0xf9f8, %r11
nop
nop
nop
nop
nop
sub $36662, %r8
movb $0x51, (%r11)
nop
add $15985, %r11

// Store
lea addresses_UC+0xe5f4, %r10
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
dec %rdx

// Store
lea addresses_WC+0x328e, %r11
cmp $36489, %rdi
movl $0x51525354, (%r11)
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_normal+0x2474, %r11
clflush (%r11)
nop
nop
and $53155, %r9
movb (%r11), %r8b
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
