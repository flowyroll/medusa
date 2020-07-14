.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ce72, %rsi
lea addresses_WT_ht+0x15db2, %rdi
nop
dec %r8
mov $17, %rcx
rep movsq
nop
nop
mfence
lea addresses_WT_ht+0x79d2, %r10
nop
nop
nop
nop
mfence
movl $0x61626364, (%r10)
xor $22608, %rsi
lea addresses_UC_ht+0xe372, %r11
nop
nop
nop
add $30622, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r11)
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xfd88, %r10
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %r10
movntdq %xmm4, (%r10)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0xae03, %rsi
nop
nop
nop
nop
add $52631, %rdi
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
nop
nop
cmp $26808, %rbp
lea addresses_D_ht+0x1b867, %r8
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r8)
nop
inc %r11
lea addresses_WC_ht+0xa44c, %rbp
nop
nop
nop
add $12468, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rbp)
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x16f5d, %rbp
nop
nop
nop
nop
nop
inc %r11
mov (%rbp), %rsi
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x111b2, %r11
nop
xor %rdi, %rdi
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
nop
nop
nop
cmp $7446, %rcx
lea addresses_normal_ht+0x2f32, %r10
nop
nop
cmp %rcx, %rcx
mov (%r10), %rbp
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x8432, %r11
nop
nop
and $35561, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
xor $8616, %rdi
lea addresses_WC_ht+0xdd72, %rbp
nop
cmp %r10, %r10
mov (%rbp), %rdi
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_US+0x22b2, %rbx
clflush (%rbx)
nop
nop
and $34403, %r9
movl $0x51525354, (%rbx)
cmp %rax, %rax

// Store
lea addresses_normal+0x15db2, %r11
nop
nop
nop
nop
and %r13, %r13
movl $0x51525354, (%r11)
nop
nop
nop
nop
cmp $32283, %r13

// Faulty Load
lea addresses_A+0x1d1b2, %r8
nop
nop
and %r9, %r9
movups (%r8), %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'44': 244, '00': 233, '45': 23}
44 44 44 00 00 00 44 00 44 00 45 44 00 44 00 44 44 44 00 44 00 00 44 00 00 44 00 44 45 44 00 45 44 00 00 00 44 00 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 00 44 00 44 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 00 44 44 00 44 00 44 00 00 44 44 44 00 45 44 00 45 00 00 00 00 00 00 00 00 44 00 44 44 00 44 00 00 00 44 00 44 00 44 44 00 44 44 45 00 00 00 00 00 44 00 00 44 44 44 00 44 44 00 00 00 44 44 44 00 00 00 44 00 44 44 44 44 44 44 44 00 00 00 44 44 00 44 00 44 00 44 44 44 44 00 00 00 44 44 00 00 00 44 44 44 44 44 44 00 44 44 00 00 44 45 44 44 44 00 00 00 00 00 44 44 44 44 44 44 45 00 00 44 00 44 44 00 44 00 00 44 44 44 00 00 45 00 44 00 00 00 44 44 44 44 44 00 44 00 00 44 00 00 44 00 44 44 00 00 00 00 00 44 44 00 44 44 44 44 44 44 00 44 44 44 00 00 00 44 00 44 44 44 45 45 00 44 44 45 45 00 44 45 44 44 00 44 44 44 00 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 00 00 44 00 44 00 00 00 00 45 44 00 44 00 44 44 00 44 44 00 00 44 44 44 44 00 44 00 44 44 44 44 00 45 44 44 00 00 00 00 00 00 44 44 00 00 44 44 00 00 00 00 44 00 00 00 44 44 44 00 44 00 00 44 44 44 44 44 45 00 00 44 00 00 44 44 00 00 00 00 44 00 44 44 00 45 44 44 44 45 44 44 00 44 00 44 44 00 44 00 44 00 45 44 00 44 00 45 00 00 44 44 00 44 00 00 44 00 00 00 45 44 00 00 00 44 44 44 00 00 00 00 00 00 44 00 00 00 44 44 44 44 44 00 44 44 44 00 44 44 00 00 44 00 00 00 00 44 00 00 00 00 00 00 44 44 00 00 44 00 00 00 44 00 00 44 44 00 44 00 00 00 00 00 44 44 44 00 44 00 44 00 00 44 00 00 00 44 00 44 44 45 00 44
*/
