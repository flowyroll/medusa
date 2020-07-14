.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xec3d, %rbp
nop
nop
nop
dec %rbx
movb $0x61, (%rbp)
nop
nop
cmp $20870, %r10
lea addresses_WC_ht+0xb965, %rsi
lea addresses_normal_ht+0xd25, %rdi
nop
nop
dec %r11
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x16415, %rsi
lea addresses_D_ht+0x173e5, %rdi
xor %r13, %r13
mov $13, %rcx
rep movsl
add %rsi, %rsi
lea addresses_WC_ht+0x5065, %r13
nop
nop
nop
and $55468, %rcx
movw $0x6162, (%r13)
nop
xor $25935, %r13
lea addresses_normal_ht+0x1c5a5, %rbx
nop
nop
sub %rsi, %rsi
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
sub $28643, %r11
lea addresses_UC_ht+0x9c75, %r13
nop
cmp %rbx, %rbx
movb (%r13), %r10b
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x766b, %rsi
nop
nop
nop
xor $36875, %r13
mov (%rsi), %di
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x16065, %r10
and $51866, %r13
movl $0x61626364, (%r10)
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x18f75, %r11
nop
and $54975, %rcx
movw $0x6162, (%r11)
and $14775, %rbx
lea addresses_UC_ht+0xf911, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
inc %r10
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
nop
nop
sub $36965, %r11
lea addresses_UC_ht+0x1d083, %rdi
cmp %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rdi)
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x68a5, %rsi
lea addresses_WC_ht+0x17b2d, %rdi
nop
nop
inc %r11
mov $121, %rcx
rep movsq
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x192e5, %rbx
nop
nop
cmp $65167, %rdi
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x1d065, %rbp
nop
nop
nop
nop
sub $31441, %rcx
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rdi

// Store
lea addresses_UC+0xc725, %rax
cmp $6304, %r11
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_PSE+0xe365, %r11
nop
nop
cmp $58032, %r12
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
nop
nop
dec %rbp

// Store
lea addresses_UC+0xf8e5, %r8
nop
nop
nop
nop
xor $19594, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r8)
xor %rbp, %rbp

// Store
lea addresses_UC+0x1cb65, %rbp
nop
nop
nop
nop
nop
inc %rax
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_WC+0x1b1a5, %r12
nop
nop
add %rbp, %rbp
movb $0x51, (%r12)
nop
nop
and %r12, %r12

// Faulty Load
mov $0x1c41b00000000365, %r8
nop
nop
nop
nop
add $16972, %r15
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'58': 11859, '00': 355}
58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58
*/
