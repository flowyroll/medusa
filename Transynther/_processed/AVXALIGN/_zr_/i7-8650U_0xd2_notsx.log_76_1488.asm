.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13735, %rsi
lea addresses_WC_ht+0xa05, %rdi
clflush (%rsi)
nop
nop
xor %rbx, %rbx
mov $70, %rcx
rep movsl
nop
nop
nop
and $12190, %r15
lea addresses_A_ht+0x1dcbd, %r11
nop
xor $7410, %r8
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
cmp $53066, %r11
lea addresses_WC_ht+0xe605, %rsi
lea addresses_A_ht+0x10e05, %rdi
clflush (%rdi)
nop
nop
nop
add %r11, %r11
mov $75, %rcx
rep movsq
nop
nop
and $8592, %rbx
lea addresses_D_ht+0x1628e, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp $34797, %r11
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
add $29425, %r15
lea addresses_D_ht+0x1aafd, %rsi
lea addresses_A_ht+0x32b5, %rdi
nop
nop
dec %r9
mov $106, %rcx
rep movsw
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x18a05, %rbx
xor $58951, %rcx
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
nop
and $5031, %r11
lea addresses_UC_ht+0x9c05, %r11
nop
dec %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r11)
nop
sub $17667, %rsi
lea addresses_UC_ht+0x4a05, %r8
nop
and %rbx, %rbx
movl $0x61626364, (%r8)
nop
nop
inc %rdi
lea addresses_A_ht+0x6805, %r9
nop
nop
sub $1345, %rcx
movb (%r9), %r8b
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0xa05, %rsi
lea addresses_D_ht+0x13ec5, %rdi
xor $33288, %r11
mov $105, %rcx
rep movsl
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x49cd, %rcx
nop
nop
nop
dec %rsi
mov (%rcx), %di
nop
nop
nop
nop
nop
cmp $31875, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0xde45, %rsi
lea addresses_PSE+0x17a05, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r12, %r12
mov $114, %rcx
rep movsw
nop
nop
nop
add %r15, %r15

// REPMOV
lea addresses_WT+0x1ce05, %rsi
lea addresses_D+0x15dc5, %rdi
nop
nop
add $12111, %r12
mov $113, %rcx
rep movsl
nop
nop
nop
dec %r12

// Load
lea addresses_WT+0x19905, %r10
nop
nop
nop
nop
nop
xor %rsi, %rsi
movups (%r10), %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
nop
nop
sub $10637, %rdi

// Store
lea addresses_PSE+0x18545, %r15
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
and $56475, %r10

// REPMOV
lea addresses_D+0x1a05, %rsi
mov $0xb32, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r8, %r8
mov $121, %rcx
rep movsw
nop
nop
sub $39354, %r12

// Store
lea addresses_normal+0x12495, %r15
clflush (%r15)
nop
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
sub $43126, %rdi

// Faulty Load
lea addresses_US+0xd205, %rcx
nop
nop
nop
nop
dec %r10
mov (%rcx), %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 76}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
