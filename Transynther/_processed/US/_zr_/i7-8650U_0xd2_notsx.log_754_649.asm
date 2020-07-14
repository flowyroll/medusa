.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1494e, %r11
nop
add %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%r11)
cmp $14276, %rdi
lea addresses_WT_ht+0x1dff0, %r13
nop
nop
xor $16453, %r14
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
and $62502, %rdi
lea addresses_UC_ht+0xd080, %rax
cmp $60843, %r13
movw $0x6162, (%rax)
nop
nop
nop
nop
add $47636, %r15
lea addresses_WT_ht+0x5410, %rsi
lea addresses_WT_ht+0x7760, %rdi
nop
nop
and $22807, %r11
mov $17, %rcx
rep movsw
xor %rcx, %rcx
lea addresses_D_ht+0x1a1b0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $46847, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rdi)
nop
and %rsi, %rsi
lea addresses_WT_ht+0xcae0, %rsi
add $63956, %rdi
movl $0x61626364, (%rsi)
nop
add $57891, %r11
lea addresses_WC_ht+0x175b0, %rsi
lea addresses_WC_ht+0x19360, %rdi
nop
nop
cmp %rax, %rax
mov $27, %rcx
rep movsq
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x7a18, %rsi
lea addresses_D_ht+0x4360, %rdi
nop
and $58037, %r14
mov $24, %rcx
rep movsl
and %rsi, %rsi
lea addresses_normal_ht+0x5b60, %rsi
lea addresses_WT_ht+0xbb60, %rdi
nop
nop
nop
nop
cmp $4030, %r13
mov $54, %rcx
rep movsb
nop
nop
and %r15, %r15
lea addresses_D_ht+0x12f0d, %r11
clflush (%r11)
nop
nop
cmp %rdi, %rdi
mov (%r11), %r15d
nop
nop
nop
nop
dec %r14
lea addresses_D_ht+0x10500, %rsi
lea addresses_WT_ht+0x15360, %rdi
nop
sub %r11, %r11
mov $56, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $20717, %rcx
lea addresses_normal_ht+0x17928, %r14
and $37607, %rcx
movl $0x61626364, (%r14)
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x4b60, %rsi
add $44146, %r11
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
add $35581, %r15
lea addresses_A_ht+0x5db8, %rsi
lea addresses_normal_ht+0x1b60, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $8853, %rax
mov $36, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x137e0, %rsi
lea addresses_normal_ht+0x1ca26, %rdi
nop
and %r11, %r11
mov $25, %rcx
rep movsq
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Store
lea addresses_D+0x9dbf, %r8
nop
nop
nop
nop
nop
inc %rdx
movw $0x5152, (%r8)
nop
nop
nop
dec %rdi

// Store
lea addresses_normal+0x14360, %r15
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
cmp %r12, %r12

// Load
lea addresses_WC+0x11670, %rdi
nop
nop
nop
xor $44935, %rdx
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
xor %r8, %r8

// Store
mov $0x4e0, %rbp
clflush (%rbp)
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rbp)
nop
nop
nop
and $60594, %rdx

// Faulty Load
lea addresses_US+0x4360, %r15
nop
cmp %rdi, %rdi
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'00': 754}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
