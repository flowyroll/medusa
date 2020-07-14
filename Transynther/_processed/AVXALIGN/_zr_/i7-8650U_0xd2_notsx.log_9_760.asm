.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xa5f2, %rsi
lea addresses_A_ht+0x2d5b, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $12, %rcx
rep movsq
nop
nop
nop
nop
add $20285, %rsi
lea addresses_A_ht+0x153a2, %r11
nop
nop
nop
nop
and %r9, %r9
mov (%r11), %cx
nop
nop
sub $11147, %rcx
lea addresses_D_ht+0x14be2, %rsi
lea addresses_UC_ht+0x163c6, %rdi
nop
nop
nop
add %r14, %r14
mov $90, %rcx
rep movsq
nop
nop
nop
nop
and $56383, %r12
lea addresses_WC_ht+0x9112, %rcx
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0xc003, %rsi
lea addresses_normal_ht+0x12002, %rdi
nop
nop
nop
nop
dec %r8
mov $23, %rcx
rep movsb
sub $9321, %rsi
lea addresses_normal_ht+0x10862, %r9
nop
nop
nop
nop
nop
inc %rdi
movl $0x61626364, (%r9)
nop
add $62553, %r9
lea addresses_normal_ht+0xe4a2, %r12
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %r12
movaps %xmm7, (%r12)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1d5a2, %rsi
lea addresses_UC_ht+0x17ba2, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $20, %rcx
rep movsl
dec %rcx
lea addresses_normal_ht+0x1c1a2, %r8
nop
cmp $29, %rsi
movw $0x6162, (%r8)
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x1bda2, %rsi
nop
nop
nop
nop
nop
xor $27239, %r11
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
xor %rcx, %rcx
lea addresses_WC_ht+0x3da2, %r9
nop
nop
nop
xor $45332, %r8
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
cmp $35186, %r11
lea addresses_normal_ht+0x16ea2, %rsi
nop
nop
nop
add $4439, %r11
mov (%rsi), %ecx
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x43d2, %r9
and %r12, %r12
mov (%r9), %si
nop
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rdx
push %rsi

// Load
lea addresses_D+0x91a2, %rdx
nop
nop
nop
and %r14, %r14
mov (%rdx), %r11d
and $24775, %r11

// Store
lea addresses_PSE+0x178a2, %rbp
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rbp)
nop
nop
lfence

// Store
lea addresses_WC+0xd7d2, %r14
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
mov $0xda2, %r9
cmp %rbp, %rbp
mov (%r9), %r14d
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
