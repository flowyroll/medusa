.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c11d, %rsi
lea addresses_WC_ht+0xef3d, %rdi
xor %rax, %rax
mov $14, %rcx
rep movsw
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1e93d, %r15
nop
nop
nop
and $31533, %rax
movb $0x61, (%r15)
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x173d, %rbp
nop
nop
nop
nop
nop
mfence
movb (%rbp), %cl
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x14b3d, %r15
inc %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r15)
nop
add $11519, %rcx
lea addresses_D_ht+0x1133d, %r15
nop
nop
dec %rbp
movb (%r15), %al
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x19e66, %rbp
nop
sub %rax, %rax
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
and $13190, %r15
lea addresses_D_ht+0x1733d, %rsi
lea addresses_D_ht+0x1419d, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $50, %rcx
rep movsq
and %r8, %r8
lea addresses_D_ht+0x1629d, %rbp
nop
nop
nop
nop
nop
cmp $63598, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rbp)
nop
and %r15, %r15
lea addresses_UC_ht+0xdb3d, %rsi
lea addresses_normal_ht+0x1089, %rdi
nop
nop
add %rax, %rax
mov $116, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $30723, %rax
lea addresses_UC_ht+0xf29, %r15
nop
sub %rax, %rax
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x17f1d, %rdi
nop
add %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
add $9399, %rsi
lea addresses_normal_ht+0xb7bd, %r15
nop
nop
nop
and %rax, %rax
mov (%r15), %di
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1c4dd, %rsi
nop
nop
nop
nop
add $58221, %rax
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x273d, %rcx
nop
nop
nop
nop
nop
sub $38752, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x10f3d, %rsi
nop
and %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
sub $17095, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rbp
push %rdi
push %rsi

// Faulty Load
lea addresses_A+0x933d, %rbp
nop
nop
nop
nop
sub $6644, %r8
mov (%rbp), %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'53': 1093, '47': 1984, '79': 212, 'ff': 9501, '01': 174, '90': 2, '80': 8, '46': 60, '3c': 27, '45': 46, '00': 8702, '44': 18, 'e0': 2}
00 ff 00 79 00 ff 00 00 ff 00 ff ff 47 00 00 ff ff ff 00 ff ff 01 47 ff ff ff ff 00 ff 01 ff ff 01 00 00 ff 00 47 ff 00 ff 00 ff ff 00 00 ff ff ff 00 ff ff 00 00 ff 00 00 ff ff 00 ff 00 00 53 45 47 ff ff 00 ff ff 00 00 00 00 47 00 ff ff 00 ff ff ff ff ff 00 ff 47 ff 00 ff 00 00 ff ff 00 00 ff ff 01 ff 00 47 ff 00 00 00 53 ff ff 00 00 00 47 47 47 00 ff ff 00 ff ff 00 ff 00 ff ff ff ff 00 53 ff ff 00 ff 00 ff 46 ff 01 79 ff ff 00 47 47 47 ff 00 47 47 00 ff 00 ff 00 47 45 00 ff 00 00 00 ff 00 ff ff ff ff ff ff 00 00 ff ff 00 00 ff 00 ff 01 00 ff ff 00 ff 00 ff 00 47 ff ff 00 ff 00 00 ff 47 ff 47 00 ff 00 ff 53 00 ff 00 ff 00 ff 00 ff ff ff ff 00 47 ff 00 47 ff 00 00 ff 47 00 00 ff 47 00 00 ff ff ff 00 ff 00 ff 00 00 ff ff 00 00 ff ff 47 00 ff 00 ff 00 00 ff ff 53 ff 00 ff 00 ff 00 ff ff 53 ff ff ff 00 00 ff 53 ff 00 00 ff 00 47 00 ff 44 ff 00 00 00 47 ff ff ff ff ff 00 ff 00 ff 00 ff 00 ff ff 47 00 00 ff ff 00 ff 00 ff 00 ff 00 00 ff 00 00 00 47 53 47 00 ff 00 00 ff 00 ff 00 ff 00 00 00 ff 00 ff 00 00 00 00 ff 00 00 ff ff 00 00 ff 00 ff 47 ff ff ff 00 00 ff ff 00 ff ff 47 ff 00 00 00 47 46 ff ff 00 ff ff 00 ff ff 00 00 ff ff 47 ff 00 ff 47 ff 47 47 00 ff 47 00 00 00 00 ff 53 ff ff ff 00 00 ff 00 00 00 ff ff 00 ff ff 00 00 ff 00 ff ff 47 ff 00 00 00 00 00 00 00 53 ff ff ff 00 00 ff 00 ff 00 ff ff ff 00 47 00 47 ff ff 47 ff ff ff 00 ff ff 00 ff 00 00 ff ff 00 ff 00 ff 00 ff 00 ff 00 53 00 ff 00 53 46 ff 00 ff ff 00 00 ff 00 00 ff 00 ff 00 00 ff 45 ff 53 53 00 ff 00 53 ff 00 ff 00 ff ff 00 00 ff 00 ff 00 ff ff 00 00 ff ff 00 00 00 ff 47 ff 00 00 ff ff 47 53 ff ff ff 01 ff ff 00 ff 00 53 ff ff 00 ff ff 00 47 00 53 ff 00 47 00 ff ff 47 ff ff 00 00 00 47 ff ff ff 47 ff 00 ff ff 00 00 00 00 00 ff 00 53 ff 79 00 ff 47 00 00 00 00 00 00 00 ff 00 ff ff ff 00 ff 47 ff 00 ff 53 00 ff ff 00 ff ff ff 00 47 00 00 ff 00 00 00 00 00 00 47 ff 00 00 ff 00 00 ff 00 00 ff 00 ff 00 00 00 00 00 ff ff 00 00 00 ff 53 ff 00 00 00 ff ff ff ff 47 53 47 00 ff 00 00 ff 00 00 ff ff ff 00 ff 00 ff ff 00 ff 00 00 ff ff ff 01 00 ff 47 00 ff 00 ff 45 ff 00 00 ff ff ff 00 00 00 ff ff 00 ff 00 ff 00 47 00 ff ff 00 00 00 ff ff 00 00 ff 00 ff 00 47 00 00 ff ff 00 53 00 ff ff ff 53 00 00 ff 00 ff 53 ff 00 ff 00 47 53 ff ff 00 ff 47 00 ff 00 47 ff 00 ff 00 ff 53 47 ff 00 ff ff 00 00 00 00 ff ff 00 ff ff ff 00 00 00 ff ff 00 ff 00 00 ff ff 00 ff 00 00 00 00 00 ff 00 ff ff 00 47 47 ff ff ff 47 ff 47 ff 00 00 ff ff 79 00 00 00 00 ff 00 00 ff 00 53 ff ff 47 ff 00 53 00 00 ff 00 ff ff 00 00 ff ff ff 00 ff 00 00 00 ff 00 00 ff 00 ff 00 ff 47 ff 00 00 00 ff ff 00 ff 00 ff ff ff 79 ff 79 ff 00 ff ff 00 ff 53 ff 53 00 00 47 00 00 ff 00 00 00 00 53 ff ff 00 ff ff ff 00 ff 00 00 ff 00 ff ff ff ff 00 ff 00 ff 47 ff 00 00 00 ff 3c 53 00 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff ff ff ff 00 ff 47 00 ff 00 47 ff 00 00 ff ff 00 47 00 00 00 ff ff 53 47 00 53 ff ff 00 ff ff ff 00 ff 00 47 00 ff ff ff 00 ff 00 00 ff 00 00 00 ff ff ff 00 00 ff 00 00 00 47 00 53 00 ff 00 53 ff 00 00 00
*/
